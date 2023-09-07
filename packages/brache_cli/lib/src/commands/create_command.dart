import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';

/// {@template sample_command}
///
/// `brache sample`
/// A [Command] to exemplify a sub command
/// {@endtemplate}
class CreateCommand extends Command<int> {
  /// {@macro sample_command}
  CreateCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser.addFlag(
      'cyan',
      abbr: 'c',
      help: 'Prints the same joke, but in cyan',
      negatable: false,
    );
  }

  @override
  String get description => 'Create a new brache project.';

  @override
  String get name => 'create';

  final Logger _logger;
  @override
  Future<int> run() async {
    // Let's assume the user provides the name of the new project as an argument
    final projectName = argResults?.rest[0];

    if (projectName == null || projectName.isEmpty) {
      _logger.alert('Please provide a name for your project.');
      return ExitCode.usage.code;
    }

    final projectDir = Directory(projectName);

    // Check if directory already exists
    if (projectDir.existsSync()) {
      _logger.info('Directory $projectName already exists.');
      return ExitCode.usage.code;
    }

    _logger.info('Creating brache project $projectName...');

    // Create project directory
    projectDir.createSync();

    // Now let's create the default Dart web files.
    // For simplicity, we're manually creating a few. In a real-world scenario, you'd
    // copy from a template directory or use a more dynamic approach.

    // 1. Create web directory and files
    final webDir = Directory('$projectName/web')..createSync();
    File('${webDir.path}/index.html').writeAsStringSync('''
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="scaffolded-by" content="https://github.com/dart-lang/sdk">
    <title>$projectName</title>
    <link rel="stylesheet" href="styles.css">
    <script defer src="main.dart.js"></script>
</head>

<body>
  <div id="output"></div>
  <canvas id="output-canvas" width="500" height="500"></canvas>
</body>
</html>
''');
// Your default HTML content
    File('${webDir.path}/main.dart').writeAsStringSync(
      '''
import 'package:brache/brache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends Brache {
  @override
  void build() {
    Circle circle = Circle(
      radius: 30,
      x: 100,
      y: 60,
      color: 'red',
    );

    scene.add(circle);
  }
}

''',
    ); // Your default Dart web main file

    // 2. Create a pubspec.yaml with required dependencies
    File('${projectDir.path}/pubspec.yaml').writeAsStringSync('''
name: $projectName
description: A new brache project
version: 1.0.0

environment:
  sdk: ^3.1.0

dependencies:
  brache: 
    path: ../packages/brache

dev_dependencies:
  build_runner: ^2.4.0
  build_web_compilers: ^4.0.0
  lints: ^2.0.0
    ''');

    _logger.info('Branche project $projectName created successfully!');
    return ExitCode.success.code;
  }
}
