import 'package:braingain_app/ui/page/chat/chat_page.dart';
import 'package:braingain_app/ui/page/chat_history/chat_history_page.dart';
import 'package:braingain_app/ui/page/collection/collection_page.dart';
import 'package:braingain_app/ui/page/home/home.dart';
import 'package:braingain_app/ui/page/login/login_page.dart';
import 'package:braingain_app/ui/page/settings/settings_page.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      title: 'Brainboost',
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
        CollectionPage.route: (context) => const CollectionPage(),
        UploadPage.route: (context) => const UploadPage(),
        ChatHistoryPage.route: (context) => const ChatHistoryPage(),
      },
    );
  }
}
