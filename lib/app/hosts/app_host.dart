/// {@template app_host}
/// The base class for all app hosts.
/// {@endtemplate}
abstract class AppHost {
  /// {@template app_host}
  const AppHost();

  /// Called for the first time when the app is launched.
  /// It's commom to use this method to initialize the app.
  Future<void> bootstrap();
}
