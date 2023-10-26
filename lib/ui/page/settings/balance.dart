import 'package:braingain_app/generated/account.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pbserver.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:braingain_app/utils/money.dart';
import 'package:flutter/material.dart';

class BalanceView extends StatelessWidget {
  const BalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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

          return DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TabBar(
                  tabs: [
                    Tab(text: 'Usage'),
                    Tab(text: 'Payments'),
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: TabBarView(
                    children: [
                      ListView(
                        primary: false,
                        children: balance.costs
                            .map(
                              (costs) => ListTile(
                                title: Text(
                                  costs.model,
                                  style: textTheme.titleSmall,
                                ),
                                subtitle: Text(
                                  'Input=${costs.input} Output=${costs.output}',
                                  style: textTheme.bodySmall,
                                ),
                                trailing: Text(MoneyUtils.format(costs.costs)),
                              ),
                            )
                            .toList(),
                      ),
                      ListView(
                        primary: false,
                        children: balance.payments
                            .map(
                              (payment) => ListTile(
                                title: Text(
                                  payment.date.toDateTime().toString(),
                                  style: textTheme.titleSmall,
                                ),
                                leading: const Icon(Icons.credit_card),
                                trailing:
                                    Text(MoneyUtils.format(payment.amount)),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
