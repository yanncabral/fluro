import 'package:fluro/modules/authentication/presentation/authentication_methods_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthenticationModule extends Module {
  @override
  final binds = [];

  @override
  final routes = [
    ChildRoute<void>(
      '/methods',
      child: (_, args) => const AuthenticationMethodsPage(),
    ),
  ];
}
