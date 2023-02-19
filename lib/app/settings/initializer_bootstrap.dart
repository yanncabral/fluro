import 'dart:async';
import 'dart:developer';

import 'package:fluro/app/hosts/app_host.dart';
import 'package:fluro/app/settings/initializer.dart';
import 'package:flutter/widgets.dart';

/// {@template mobile_app_host_bootstrap}
/// Initialize the mobile application.
/// {@endtemplate}
mixin InitializerBootstrap implements Widget, AppHost {
  /// The list of initializers that will be called when the app is launched.
  @protected
  List<Initializer> get initializers;

  @override
  Future<void> bootstrap() async {
    /// Wait for all initializers to finish.
    /// We use `Future.wait` to handle all initializers in parallel.
    await Future.wait([
      for (final initializer in initializers) initializer.call(),
    ]);

    // We use `runZonedGuarded` to catch any errors that occur during the
    // use of the app. This way, we can log the error and stack trace to
    // the console and, futurelly, to a remote error handler service.
    await runZonedGuarded(
      () async => runApp(this),
      (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
    );
  }
}
