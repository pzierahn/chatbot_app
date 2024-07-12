import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/generated/crashlytics.pbgrpc.dart';
import 'package:braingain_app/ui/page/chat/chat_page.dart';
import 'package:braingain_app/ui/page/chat_history/chat_history_page.dart';
import 'package:braingain_app/ui/page/documents/documents_page.dart';
import 'package:braingain_app/ui/page/home/home.dart';
import 'package:braingain_app/ui/page/login/login_page.dart';
import 'package:braingain_app/ui/page/search_documents/search_documents.dart';
import 'package:braingain_app/ui/page/settings/settings_page.dart';
import 'package:braingain_app/ui/page/index/index_page.dart';
import 'package:braingain_app/ui/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

const appVersion = 'v4.0.1';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Non-async exceptions
  FlutterError.onError = (errorDetails) {
    final err = Error()
      ..exception = errorDetails.exception.toString()
      ..stackTrace = errorDetails.stack.toString()
      ..appVersion = appVersion;

    // Catch error to prevent infinite loop
    crashlytics.recordError(err).catchError((_) => Empty());
  };

  // Async exceptions
  PlatformDispatcher.instance.onError = (error, stack) {
    final err = Error()
      ..exception = error.toString()
      ..stackTrace = stack.toString()
      ..appVersion = appVersion;

    // Catch error to prevent infinite loop
    crashlytics.recordError(err).catchError((_) => Empty());
    return true;
  };

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State createState() => _AppState();
}

class _AppState extends State<App> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      debugPrint("authStateChanges: ${user?.uid}");
      _navigatorKey.currentState?.pushNamedAndRemoveUntil(
        (user == null) ? LoginPage.route : Home.route,
        (route) => false,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatbot',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      navigatorKey: _navigatorKey,
      initialRoute: FirebaseAuth.instance.currentUser == null
          ? LoginPage.route
          : Home.route,
      routes: {
        Home.route: (context) => const Home(),
        LoginPage.route: (context) => const LoginPage(),
        SettingsPage.route: (context) => const SettingsPage(),
        ChatPage.route: (context) => const ChatPage(),
        DocumentsPage.route: (context) => const DocumentsPage(),
        IndexPage.route: (context) => const IndexPage(),
        ChatHistoryPage.route: (context) => const ChatHistoryPage(),
        SearchDocumentsPage.route: (context) => const SearchDocumentsPage(),
      },
    );
  }
}
