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
  static const defaultModel = LLMModels.gpt4o;

  static const LLMModel gpt4o = LLMModel(
    title: 'GPT-4o',
    model: 'openai.gpt-4o',
    provider: 'OpenAI',
  );

  static const LLMModel gpto3Mini = LLMModel(
    title: 'GPT o3-mini',
    model: 'openai.o3-mini',
    provider: 'OpenAI',
  );

  static const LLMModel gpto45 = LLMModel(
    title: 'GPT 4.5',
    model: 'openai.gpt-4.5-preview',
    provider: 'OpenAI',
  );

  static const LLMModel gpto4mini = LLMModel(
    title: 'GPT 4o Mini',
    model: 'openai.gpt-4o-mini',
    provider: 'OpenAI',
  );

  static const LLMModel claudeSonnetv2 = LLMModel(
    title: 'Claude Sonnet 3.7',
    model: 'anthropic.claude-3-7-sonnet-20250219-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel claudeHaiku = LLMModel(
    title: 'Claude Haiku',
    model: 'anthropic.claude-3-haiku-20240307-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel geminiPro25 = LLMModel(
    title: 'Gemini Pro 2.5',
    model: 'google.gemini-2.5-pro-exp-03-25',
    provider: 'Google',
  );

  static const LLMModel geminiFlash = LLMModel(
    title: 'Gemini Flash 2.0',
    model: 'google.gemini-2.0-flash',
    provider: 'Google',
  );

  static const LLMModel geminiFlashLite = LLMModel(
    title: 'Gemini Flash 2.0 Lite',
    model: 'google.gemini-2.0-flash-lite',
    provider: 'Google',
  );

  static const List<LLMModel> all = [
    gpt4o,
    gpto3Mini,
    gpto45,
    claudeSonnetv2,
    claudeHaiku,
    geminiPro25,
    geminiFlash,
    geminiFlashLite,
  ];

  static LLMModel fromModel(String model) {
    return all.firstWhere(
      (element) => element.model == model,
      orElse: () => defaultModel,
    );
  }
}
