import 'package:braingain_app/generated/account_service.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pbserver.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:braingain_app/utils/llm_models.dart';
import 'package:braingain_app/utils/money.dart';
import 'package:flutter/material.dart';

class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return OutlinedCard(

      child: FutureBuilder<BalanceSheet>(
        future: account.getBalanceSheet(Empty()),
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

          final balance = snap.data!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Balance Sheet',
                  style: textTheme.titleLarge?.merge(const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
              const Divider(height: 2),
              for (var cost in balance.costs)
                ListTile(
                  leading: const Icon(Icons.local_fire_department),
                  title: Text(
                    cost.model,
                    style: textTheme.titleSmall,
                  ),
                  subtitle: Text(
                    '${cost.requests} requests',
                    style: textTheme.bodySmall?.copyWith(
                      color: colors.outline,
                    ),
                  ),
                  trailing: Text(
                    MoneyUtils.format(-cost.costs),
                    style: const TextStyle(
                        // color: Colors.red,
                        ),
                  ),
                ),
              const Divider(height: 2),
              for (var payment in balance.payments)
                ListTile(
                  title: Text(
                    payment.date.toDateTime().toString(),
                    style: textTheme.titleSmall,
                  ),
                  subtitle: Text(
                    payment.id,
                    style: textTheme.bodySmall?.copyWith(
                      color: colors.outline,
                    ),
                  ),
                  leading: const Icon(Icons.payments),
                  trailing: Text(
                    MoneyUtils.format(payment.amount),
                    style: const TextStyle(
                        // color: Colors.green,
                        ),
                  ),
                ),
              const Divider(height: 2),
              ListTile(
                leading: const Icon(Icons.balance),
                title: Text(
                  'Budget Left',
                  style: textTheme.titleSmall,
                ),
                trailing: Text(
                  MoneyUtils.format(balance.balance),
                  style: TextStyle(
                    color: balance.balance < 0
                        ? Colors.red
                        : balance.balance > 0
                            ? Colors.green
                            : null,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
