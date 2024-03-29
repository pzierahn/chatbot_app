class LLMModel {
  const LLMModel({
    required this.title,
    required this.model,
    required this.provider,
  });

  final String title;
  final String model;
  final String provider;
}

class LLMModels {
  static const LLMModel gpt4 = LLMModel(
    title: 'GPT 4 Turbo',
    model: 'openai.gpt-4-turbo-preview',
    provider: 'OpenAI',
  );

  static const LLMModel claudeV3 = LLMModel(
    title: 'Claude 3 Sonnet',
    model: 'anthropic.claude-3-sonnet-20240229-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel claudeV2 = LLMModel(
    title: 'Claude 2',
    model: 'anthropic.claude-v2:1',
    provider: 'Anthropic',
  );

  static const LLMModel claudeOpus = LLMModel(
    title: 'Claude Opus',
    model: 'anthropic.claude-3-opus-20240229',
    provider: 'Anthropic',
  );

  static const LLMModel mistral = LLMModel(
    title: 'Le Chat',
    model: 'mistral.mistral-large-latest',
    provider: 'Mistral',
  );

  static const LLMModel geminiPro = LLMModel(
    title: 'Genmini Pro',
    model: 'google.gemini-pro',
    provider: 'Google',
  );

  static const List<LLMModel> all = [
    gpt4,
    claudeOpus,
    claudeV3,
    claudeV2,
    mistral,
    geminiPro,
  ];

  static LLMModel fromModel(String model) {
    return all.firstWhere(
      (element) => element.model == model,
      orElse: () => gpt4,
    );
  }
}
