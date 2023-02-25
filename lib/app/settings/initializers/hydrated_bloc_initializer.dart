import 'package:fluro/app/settings/initializer.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

/// {@template hydrated_bloc_initializer}
/// The initializer that initializes the hydrated bloc.
/// {@endtemplate}
class HydratedBlocInitializer implements Initializer {
  /// {@macro hydrated_bloc_initializer}
  const HydratedBlocInitializer();

  @override
  Future<void> call() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );
  }
}
