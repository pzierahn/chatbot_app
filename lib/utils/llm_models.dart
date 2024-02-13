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
  static const LLMModel gpt3 = LLMModel(
    title: 'GPT 3.5',
    model: 'openai.gpt-3.5-turbo-16k',
    provider: 'OpenAI',
  );

  static const LLMModel gpt4 = LLMModel(
    title: 'GPT 4 Turbo',
    model: 'openai.gpt-4-turbo-preview',
    provider: 'OpenAI',
  );

  static const LLMModel geminiPro = LLMModel(
    title: 'Genmini Pro',
    model: 'google.gemini-pro',
    provider: 'Google',
  );

  static const LLMModel claudeV2 = LLMModel(
    title: 'Claude',
    model: 'anthropic.claude-v2',
    provider: 'Anthropic',
  );

  static const LLMModel titanExpress = LLMModel(
    title: 'Amazon Titan',
    model: 'amazon.titan-text-express-v1',
    provider: 'Amazon',
  );

  static const List<LLMModel> all = [
    gpt4,
    gpt3,
    geminiPro,
    claudeV2,
    // titanExpress,
  ];

  static LLMModel fromModel(String model) {
    return all.firstWhere(
      (element) => element.model == model,
      orElse: () => gpt3,
    );
  }
}
