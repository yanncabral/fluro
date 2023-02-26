import 'package:fluro/modules/authentication/main/authentication_module.dart';
import 'package:fluro/modules/onboarding/main/onboarding_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MobileAppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute<void>(
      '/',
      module: OnboardingModule(),
    ),
    ModuleRoute<void>(
      '/authentication',
      module: AuthenticationModule(),
    ),
  ];
}
