import 'package:braingain_app/generated/account.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pbserver.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:braingain_app/utils/money.dart';
import 'package:flutter/material.dart';

class PaymentsView extends StatelessWidget {
  const PaymentsView({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return OutlinedCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Payments',
              style: text.titleLarge?.merge(const TextStyle(
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
          FutureBuilder<Payments>(
            future: account.getPayments(Empty()),
            builder: (context, snap) {
              if (snap.hasError) {
                return Center(
                  child: Text(ErrorUtils.toText(snap.error)),
                );
              }

              if (!snap.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final payments = snap.data!.items;

              if (payments.isEmpty) {
                return const Center(
                  child: Text('No payments yet'),
                );
              }

              return Column(
                children: payments
                    .map(
                      (payment) => ListTile(
                        leading: const Icon(Icons.credit_card),
                        title: Text(
                          MoneyUtils.format(payment.amount),
                          style: text.titleMedium,
                        ),
                        subtitle: Text(
                          payment.date.toDateTime().toString(),
                          style: text.bodySmall?.merge(
                            TextStyle(color: color.outline),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
