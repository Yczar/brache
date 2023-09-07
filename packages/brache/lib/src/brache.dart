import 'package:brache/src/core/src/app/src/brache_app.dart';

export 'components/components.dart';

export 'core/core.dart';

/// Bootstraps the given [Brache] application and initiates its build process.
/// This function should be called at the entry point of the application to
/// start the rendering and execution of the app.
///
/// [app] represents the main application instance derived from [Brache].
void runApp(Brache app) {
  app
    ..setup()
    ..build()
    ..postRender();
}
