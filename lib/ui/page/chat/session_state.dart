import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/service/brainboost.dart';

class ThreadState {
  ThreadState({
    required this.prompt,
    this.thread,
    this.error,
    this.loading = false,
  });

  final ThreadPrompt prompt;
  Thread? thread;
  Object? error;

  bool deleted = false;
  bool loading;

  bool get hasError => error != null;

  bool get hasData => thread != null;
}

typedef OnUpdate = void Function(List<ThreadState>);

class ChatSession {
  ChatSession({
    required this.onUpdate,
  });

  final OnUpdate onUpdate;
  final _threads = <ThreadState>[];

  void start(ThreadPrompt prompt) {
    final index = _threads.length;
    _threads.add(ThreadState(
      prompt: prompt,
      loading: true,
    ));
    onUpdate(_threads);

    chat.startThread(prompt).then((value) {
      _threads[index].thread = value;
      _threads[index].loading = false;
      onUpdate(_threads);
    }).catchError((error) {
      _threads[index].error = error;
      _threads[index].loading = false;
      onUpdate(_threads);
    });
  }
}
