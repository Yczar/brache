/// Abstract base class for all Brache applications.
/// Provides essential lifecycle methods to be implemented by the
/// inheriting class.
abstract class $App {
  /// Abstract base class for all Brache applications.
  const $App();

  /// Called when the Brache application is first initialized.
  /// Useful for setting up resources, event listeners, and other
  /// initial configurations.
  void setup();

  /// Called right before the application's visuals are drawn for the first
  /// time.
  /// Useful for doing last-minute adjustments or checks.
  void preFirstRender();

  /// Called to build or render the Brache application on the screen.
  /// This is where the main drawing or rendering logic should be implemented.
  void build();

  /// Called right after the application has been built or rendered on the
  /// screen.
  /// Useful for post-rendering operations or checks.
  void postRender();

  /// Called when the Brache application is being resized.
  /// Allows the app to respond to size changes, like window resizes or
  /// orientation changes.
  void onResize();

  /// Called when the application is about to be terminated or when it goes to
  /// the background.
  /// Useful for cleanup operations or saving state.
  void onPause();

  /// Called when the application is resumed from the background.
  /// Can be used to restore state or reinitialize resources.
  void onResume();

  /// Called right before the Brache application is permanently destroyed.
  /// Useful for cleanup operations and resource deallocations.
  void onDestroy();
}
