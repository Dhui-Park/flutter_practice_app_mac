import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VideoRecordingScreen extends StatefulWidget {
  const VideoRecordingScreen({super.key});

  @override
  State<VideoRecordingScreen> createState() => _VideoRecordingScreenState();
}

class _VideoRecordingScreenState extends State<VideoRecordingScreen> {
  late final bool _noCamera = kDebugMode && Platform.isIOS;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
