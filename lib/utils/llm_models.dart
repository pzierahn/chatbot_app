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
    title: 'GPT-4o',
    model: 'openai.gpt-4o',
    provider: 'OpenAI',
  );

  static const LLMModel claudeOpus = LLMModel(
    title: 'Claude Opus',
    model: 'anthropic.claude-3-opus-20240229-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel claudeSonnet = LLMModel(
    title: 'Claude Sonnet',
    model: 'anthropic.claude-3-sonnet-20240229-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel claudeHaiku = LLMModel(
    title: 'Claude Haiku',
    model: 'anthropic.claude-3-haiku-20240307-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel geminiFlash = LLMModel(
    title: 'Gemini Flash',
    model: 'google.gemini-1.5-flash-preview-0514',
    provider: 'Google',
  );

  static const LLMModel geminiPro = LLMModel(
    title: 'Gemini Pro',
    model: 'google.gemini-1.5-pro-preview-0514',
    provider: 'Google',
  );

  static const LLMModel geminiProExperimental = LLMModel(
    title: 'Gemini Experimental',
    model: 'google.gemini-experimental',
    provider: 'Google',
  );

  static const List<LLMModel> all = [
    gpt4,
    claudeOpus,
    claudeSonnet,
    claudeHaiku,
    geminiFlash,
    geminiPro,
    geminiProExperimental,
  ];

  static LLMModel fromModel(String model) {
    return all.firstWhere(
      (element) => element.model == model,
      orElse: () => gpt4,
    );
  }
}
