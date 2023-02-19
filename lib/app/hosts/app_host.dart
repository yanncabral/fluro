// Export all app hosts here
import 'package:fluro/app/hosts/mobile/mobile_app_host.dart';

export 'mobile/mobile_app_host.dart';

/// {@template app_host}
/// The base class for all app hosts.
/// {@endtemplate}
abstract class AppHost {
  /// {@macro app_host}
  const AppHost();

  /// The factory that creates the mobile app host.
  const factory AppHost.mobile() = MobileAppHost;

  /// Called for the first time when the app is launched.
  /// It's commom to use this method to initialize the app.
  Future<void> bootstrap();

  /// Method that runs the host.
  Future<void> run();
}
