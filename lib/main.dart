import 'package:flutter/material.dart';
import 'package:flutter_practice/features/inbox/activity_screen.dart';

import 'constants/sizes.dart';

void main() {
  runApp(const FlutterPracticeApp());
}

class FlutterPracticeApp extends StatelessWidget {
  const FlutterPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLutter Practice',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFCFB997),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFCFB997),
        ),
      ),
      home: const ActivityScreen(),
    );
  }
}
