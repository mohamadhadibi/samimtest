import 'dart:async';
import 'dart:ui';

class Debouncer {
  Duration? delay;
  Timer? _timer;
  VoidCallback? _callback;

  Debouncer({this.delay = const Duration(milliseconds: 500)});

  debounce(VoidCallback callback) {
    _callback = callback;

    cancel();
    _timer = Timer(delay!, flush);
  }

  cancel() {
    if (_timer != null) {
      _timer?.cancel();
    }
  }

  flush() {
    if (_callback != null) _callback!();
    cancel();
  }
}
