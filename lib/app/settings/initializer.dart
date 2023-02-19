/// {@template initializer}
/// The base class for all initializers.
/// A initializer is a class that is responsible for, you know,
/// initializing something during the application startup.
/// {@endtemplate}
abstract class Initializer {
  /// {@template initializer}
  const Initializer();

  /// The method that will run the initialization.
  Future<void> call();
}
