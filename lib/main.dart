import 'package:braingain_app/ui/page/home/home.dart';
import 'package:braingain_app/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://uzadryogjxumttxxirry.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6YWRyeW9nanh1bXR0eHhpcnJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQ1MTE5NjIsImV4cCI6MjAxMDA4Nzk2Mn0.HK-0DB4v71OnDGrp7J7sz9zRIK_aBr-qxkg96BjzXl4',
    authFlowType: AuthFlowType.pkce,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const Home(),
    );
  }
}
