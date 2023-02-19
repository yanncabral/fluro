import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fluro/app/initializers/initializer.dart';

/// {@template bloc_observer_initializer}
/// The initializer that handles bloc runtime errors.
/// It's uses the `Bloc.observer` callback to catch any errors that
/// occur during the use of the app.
/// {@endtemplate}
class BlocObserverInitializer extends BlocObserver implements Initializer {
  /// {@macro bloc_observer_initializer}
  const BlocObserverInitializer();

  @override
  Future<void> call() async {
    Bloc.observer = this;
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}
