import 'package:braingain_app/service/supabase.dart';
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
import 'package:supabase_flutter/supabase_flutter.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Supabase.initialize(
    url: 'https://uzadryogjxumttxxirry.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6YWRyeW9nanh1bXR0eHhpcnJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ1MTE5NjIsImV4cCI6MjAxMDA4Nzk2Mn0.HK-0DB4v71OnDGrp7J7sz9zRIK_aBr-qxkg96BjzXl4',
    authFlowType: AuthFlowType.pkce,
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

      if (user == null) {
        _navigatorKey.currentState?.pushNamedAndRemoveUntil(
          LoginPage.route,
          (route) => false,
        );
      } else {
        _navigatorKey.currentState?.pushNamedAndRemoveUntil(
          Home.route,
          (route) => false,
        );
      }
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
      initialRoute:
          supabase.auth.currentUser == null ? LoginPage.route : Home.route,
      routes: {
        Home.route: (context) => const Home(),
        LoginPage.route: (context) => const LoginPage(),
        SettingsPage.route: (context) => const SettingsPage(),
        ChatPage.route: (context) => const ChatPage(),
        ChatHistoryPage.route: (context) => const ChatHistoryPage(),
        CollectionPage.route: (context) => const CollectionPage(),
        UploadPage.route: (context) => const UploadPage(),
      },
    );
  }
}
