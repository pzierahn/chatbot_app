import 'package:braingain_app/generated/account.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pbserver.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:braingain_app/utils/money.dart';
import 'package:flutter/material.dart';

class ModelUsage extends StatelessWidget {
  const ModelUsage({super.key});

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
              'Usage',
              style: text.titleLarge?.merge(const TextStyle(
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
          FutureBuilder<ModelUsages>(
            future: account.getModelUsages(Empty()),
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

              final models = snap.data!.items;

              return Column(
                children: models
                    .map(
                      (usage) => ListTile(
                        minLeadingWidth: 40,
                        title: Text(usage.model, style: text.titleMedium),
                        subtitle: Text(
                          'Input: ${usage.input}\nOutput: ${usage.output}',
                          style: text.bodySmall?.merge(
                            TextStyle(color: color.outline),
                          ),
                        ),
                        trailing: Text(MoneyUtils.format(usage.costs)),
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
