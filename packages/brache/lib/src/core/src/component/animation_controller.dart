import 'dart:async';

class AnimationController {
  AnimationController({
    required this.duration,
    required this.onUpdate,
    required this.onComplete,
  });
  Duration duration;
  final Function(double) onUpdate;
  final Function onComplete;

  late DateTime _startTime;
  Timer? _timer;

  void start() {
    _startTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 16), _tick);
  }

  void _tick(Timer timer) {
    final elapsed = DateTime.now().difference(_startTime);
    if (elapsed > duration) {
      timer.cancel();
      onComplete();
      return;
    }
    onUpdate(elapsed.inMilliseconds / duration.inMilliseconds);
  }

  void dispose() {
    _timer?.cancel();
  }
}
