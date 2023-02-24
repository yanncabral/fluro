import 'package:fluro/app/hosts/app_host.dart';
import 'package:fluro/app/settings/initializer.dart';
import 'package:fluro/app/settings/initializer_bootstrap.dart';
import 'package:fluro/app/settings/initializers/bloc_observer_initializer.dart';
import 'package:fluro/app/settings/initializers/error_catcher_initializer.dart';

import 'package:flutter/material.dart';

/// {@template mobile_app_host}
/// Entry point for the mobile app.
/// {@endtemplate}
class MobileAppHost extends StatelessWidget
    with InitializerBootstrap
    implements AppHost {
  /// {@macro mobile_app_host}
  const MobileAppHost({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  List<Initializer> get initializers {
    return const [
      ErrorCatcherInitializer(),
      BlocObserverInitializer(),
    ];
  }

  @override
  Future<void> run() => bootstrap();
}
