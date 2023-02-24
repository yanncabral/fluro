import 'package:fluro/modules/onboarding/presentation/pages/onboarding_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// {@template onboarding_module}
/// Module for the onboarding page.
/// {@endtemplate}
class OnboardingModule extends Module {
  @override
  final binds = [];

  @override
  final routes = [
    ChildRoute<void>(
      '/',
      child: (_, args) => const OnboardingPage(),
    ),
  ];
}
