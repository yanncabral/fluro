import 'package:fluro/app/settings/initializer.dart';
import 'package:flutter/widgets.dart';

/// {@template flutter_widget_ensure_initialized_initializer}
/// The initializer that ensures that the Flutter widget is initialized.
/// {@endtemplate}
class FlutterWidgetEnsureInitializedInitializer implements Initializer {
  /// {@macro flutter_widget_ensure_initialized_initializer}
  const FlutterWidgetEnsureInitializedInitializer();

  @override
  Future<void> call() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
