import 'package:braingain_app/ui/page/home_v2/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final _borderRadius = BorderRadius.circular(8);

final _roundedShape = RoundedRectangleBorder(
  borderRadius: _borderRadius,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        chipTheme: ChipThemeData(
          side: const BorderSide(color: Colors.transparent),
          shape: _roundedShape,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
