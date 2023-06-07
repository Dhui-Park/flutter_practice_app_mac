import 'package:flutter/material.dart';
import 'package:flutter_practice/features/videos/repos/playback_config_repo.dart';
import 'package:flutter_practice/features/videos/view_models/playback_config_vm.dart';
import 'package:flutter_practice/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/sizes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final preferences = await SharedPreferences.getInstance();
  final repository = PlaybackConfigRepository(preferences);

  runApp(
    ProviderScope(
      overrides: [
        playbackConfigProvider
            .overrideWith(() => PlaybackConfigViewModel(repository))
      ],
      child: const FlutterPracticeApp(),
    ),
  );
}

class FlutterPracticeApp extends StatelessWidget {
  const FlutterPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice',
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
    );
  }
}
