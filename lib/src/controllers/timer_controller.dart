// create timer controller for countdown timer
import 'dart:async';

import 'package:flutter/foundation.dart';

class TimerController extends ChangeNotifier {
  int _seconds = 0;
  int get seconds => _seconds;
  bool _isRunning = false;
  bool get isRunning => _isRunning;
  Duration _duration = DateTime(
    2022,
    5,
    16,
  ).difference(
    DateTime.now(),
  );

  void start() {
    _isRunning = true;
    notifyListeners();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _seconds++;
      notifyListeners();
    });
  }

  void stop() {
    _isRunning = false;
    _timer!.cancel();
    notifyListeners();
  }

  void reset() {
    _seconds = 0;
    notifyListeners();
  }

  Timer? _timer;

  // create countdown function
  void countdown() {
    final seconds = _duration.inSeconds - 1;
    if (seconds < 0) {
      stop();
      return;
    } else {
      _duration = Duration(seconds: seconds);
    }
  }
}
