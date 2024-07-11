import 'package:braingain_app/generated/account_service.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pbserver.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:braingain_app/utils/money.dart';
import 'package:flutter/material.dart';
import 'package:undraw/illustrations.g.dart';

class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return OutlinedCard(
      child: FutureBuilder<Overview>(
        future: account.getOverview(Empty()),
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

          final overview = snap.data!;

          Widget usage;
          if (overview.usage.isEmpty) {
            usage = const Center(
              child: TextIllustration(
                height: 150,
                illustration: UnDrawIllustration.lost,
                text: 'No costs yet',
              ),
            );
          } else {
            usage = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var cost in overview.usage)
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
              ],
            );
          }

          Widget payments;
          if (overview.payments.isEmpty) {
            payments = const Center(
              child: TextIllustration(
                height: 150,
                illustration: UnDrawIllustration.credit_card,
                text: 'No payments yet',
              ),
            );
          } else {
            payments = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var payment in overview.payments)
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
              ],
            );
          }

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
              usage,
              const Divider(height: 2),
              payments,
              const Divider(height: 2),
              ListTile(
                leading: const Icon(Icons.balance),
                title: Text(
                  'Budget Left',
                  style: textTheme.titleSmall,
                ),
                trailing: Text(
                  MoneyUtils.format(overview.balance),
                  style: TextStyle(
                    color: overview.balance < 0
                        ? Colors.red
                        : overview.balance > 0
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
