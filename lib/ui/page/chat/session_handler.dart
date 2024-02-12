import 'package:braingain_app/generated/chat_service.pb.dart';
import 'package:braingain_app/generated/chat_service.pbgrpc.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ThreadState {
  Thread? thread;
  ModelOptions? modelOptions;
  VoidCallback onUpdate = () {};

  String? pendingPrompt;
  Object? error;

  bool deleted = false;

  bool get isLoading => pendingPrompt != null;

  bool get hasError => error != null;

  bool get hasData => thread != null;

  void setLoading(String prompt) {
    error = null;
    pendingPrompt = prompt;
    onUpdate();
  }

  void setError(Object err) {
    error = err;
    onUpdate();
  }

  void setData(Thread data) {
    thread = data;
    error = null;
    pendingPrompt = null;
    onUpdate();
  }

  void addMessage(Message message) {
    if (thread == null) {
      throw StateError('Thread not started');
    }

    pendingPrompt = null;
    thread!.messages.add(message);
    onUpdate();
  }

  static ThreadState start({
    required ThreadPrompt prompt,
    required VoidCallback notifier,
  }) {
    final obj = ThreadState()
      ..setLoading(prompt.prompt)
      ..onUpdate = notifier
      ..modelOptions = prompt.modelOptions;

    chat.startThread(prompt).then((value) {
      obj.setData(value);
    }).catchError((error) {
      debugPrint('Error starting thread: $error');
      obj.setError(error);
    });

    return obj;
  }

  void postMessage(String text) {
    if (thread == null) {
      throw StateError('Thread not started');
    }

    if (pendingPrompt != null) {
      throw StateError('Pending prompt not resolved');
    }

    if (modelOptions == null) {
      throw StateError('Model options not set');
    }

    final prompt = Prompt()
      ..threadID = thread!.id
      ..prompt = text
      ..modelOptions = modelOptions!;

    setLoading(text);

    chat.postMessage(prompt).then((message) {
      addMessage(message);
    }).catchError((error) {
      debugPrint('Error posting message: $error');
      setError(error);
    });
  }

  void deleteThread() {
    if (thread == null) {
      throw StateError('Thread not started');
    }

    final threadId = ThreadID()..id = thread!.id;

    chat.deleteThread(threadId).then((_) {
      deleted = true;
      onUpdate();
    }).catchError((error) {
      debugPrint('Error deleting thread: $error');
      // TODO: Show snack-bar
    });
  }

  void deleteMessageFromThread(String id) {
    if (thread == null) {
      throw StateError('Thread not started');
    }

    final messageId = MessageID()
      ..id = id
      ..threadId = thread!.id;

    chat.deleteMessageFromThread(messageId).then((_) {
      thread!.messages.removeWhere((element) => element.id == id);
      onUpdate();
    }).catchError((error) {
      debugPrint('Error deleting message: $error');
      // TODO: Show snack-bar
    });
  }
}
