import 'package:flutter/material.dart';

// ChangeNotifier은 리스트나 많은 메소드나 API등등을 쓰면 사용하는것이 좋다.
// ValueNotifier은 ChangeNotifier의 기능을 똑같이 하지만 오직 하나의 값에만 사용 가능.

class VideoConfig extends ChangeNotifier {
  bool isMuted = false;
  bool isAutoPlay = false;

  void toggleIsMuted() {
    isMuted = !isMuted;
    notifyListeners();
  }

  void toggleAutoPlay() {
    isAutoPlay = !isAutoPlay;
    notifyListeners();
  }
}
