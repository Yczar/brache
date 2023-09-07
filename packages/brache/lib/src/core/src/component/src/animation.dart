abstract class Animation {
  /// This method should be implemented by any derived class. It is called
  /// by the `AnimationController` at each frame to update the state of the
  /// animated component based on the current progress of the animation.
  ///
  /// [progress]: A value between 0.0 and 1.0 representing the progress of the animation.
  /// 0.0 indicates the start and 1.0 indicates the end.
  void update(double progress);
}
