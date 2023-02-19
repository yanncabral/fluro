import 'dart:developer';

import 'package:fluro/app/settings/initializer.dart';
import 'package:flutter/widgets.dart';

/// {@template error_cacher_initializer}
/// The initializer that handles flutter runtime errors.
/// It's uses the `FlutterError.onError` callback to catch any errors that
/// occur during the use of the app.
/// {@endtemplate}
class ErrorCatcherInitializer implements Initializer {
  /// {@macro error_cacher_initializer}
  const ErrorCatcherInitializer();

  @override
  Future<void> call() async {
    FlutterError.onError = (details) {
      log(details.exceptionAsString(), stackTrace: details.stack);
    };
  }
}
