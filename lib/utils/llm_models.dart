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
    model: 'gpt-3.5-turbo-16k',
    provider: 'OpenAI',
  );

  static const LLMModel gpt4 = LLMModel(
    title: 'GPT 4 Turbo',
    model: 'gpt-4-turbo-preview',
    provider: 'OpenAI',
  );

  static const LLMModel geminiPro = LLMModel(
    title: 'Genmini Pro',
    model: 'gemini-pro',
    provider: 'Google',
  );

  static const List<LLMModel> all = [
    gpt3,
    gpt4,
    geminiPro,
  ];

  static LLMModel fromModel(String model) {
    return all.firstWhere(
      (element) => element.model == model,
      orElse: () => gpt3,
    );
  }
}
