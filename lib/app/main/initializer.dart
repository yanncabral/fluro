/// {@template initializer}
/// The base class for all initializers.
/// A initializer is a class that is responsible for, you know,
/// initializing something during the application startup.
/// {@endtemplate}
abstract class Initializer {
  /// {@template initializer}
  const Initializer();

  /// Called for the first time when the app is launched.
  Future<void> call();
}
