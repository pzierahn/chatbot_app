import 'package:braingain_app/generated/account.pb.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pbserver.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:braingain_app/utils/error.dart';
import 'package:flutter/material.dart';

class ModelUsage extends StatelessWidget {
  const ModelUsage({super.key});

  double _calculateCost(ModelUsages_Usage usage) {
    double inputCost = 0;
    double outputCost = 0;

    if (usage.model.startsWith('gpt-4')) {
      inputCost = 0.03;
      outputCost = 0.06;
    } else if (usage.model.startsWith('gpt-3.5-turbo-16k')) {
      inputCost = 0.003;
      outputCost = 0.004;
    } else if (usage.model.startsWith('text-embedding-ada')) {
      inputCost = 0.0001;
      outputCost = 0.0;
    }

    return ((usage.input * inputCost) + (usage.output * outputCost)) / 1000;
  }

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
                        trailing: Text(
                          '\$${_calculateCost(usage).toStringAsFixed(2)}',
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
