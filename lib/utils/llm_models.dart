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
  static const defaultModel = LLMModels.gpt41;

  static const LLMModel gpt41 = LLMModel(
    title: 'GPT 4.1',
    model: 'openai.gpt-4.1',
    provider: 'OpenAI',
  );

  static const LLMModel gpt41mini = LLMModel(
    title: 'GPT 4.1 mini',
    model: 'openai.gpt-4.1-mini',
    provider: 'OpenAI',
  );

  static const LLMModel gpt41nano = LLMModel(
    title: 'GPT 4.1 nano',
    model: 'openai.gpt-4.1-nano',
    provider: 'OpenAI',
  );

  static const LLMModel gpto3 = LLMModel(
    title: 'GPT o3',
    model: 'openai.o3',
    provider: 'OpenAI',
  );

  static const LLMModel gpto4mini = LLMModel(
    title: 'GPT o4',
    model: 'openai.o4-mini',
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
    title: 'Gemini Flash 2.5',
    model: 'google.gemini-2.5-flash-preview-04-17',
    provider: 'Google',
  );

  static const LLMModel geminiFlashLite = LLMModel(
    title: 'Gemini Flash 2.0 Lite',
    model: 'google.gemini-2.0-flash-lite',
    provider: 'Google',
  );

  static const List<LLMModel> all = [
    gpt41,
    gpt41mini,
    gpt41nano,
    gpto3,
    gpto4mini,
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
