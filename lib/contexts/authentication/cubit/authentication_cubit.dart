import 'package:fluro/contexts/authentication/data/wallet_model.dart';
import 'package:fluro/core/wallets/crypto_wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends HydratedCubit<AuthenticationState> {
  AuthenticationCubit() : super(const AuthenticationState.unauthenticated());

  void authenticate(CryptoWallet wallet) {
    emit(AuthenticationState.authenticated(wallet));
  }

  @override
  AuthenticationState? fromJson(Map<String, dynamic> json) {
    if (json['authenticated'] as bool) {
      return AuthenticationState.authenticated(
        AuthenticationCryptoWalletModel.fromMap(
          json['wallet'] as Map<String, dynamic>,
        ),
      );
    } else {
      return const AuthenticationState.unauthenticated();
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthenticationState state) {
    return state.when(
      unauthenticated: () => const <String, dynamic>{
        'authenticated': false,
        'wallet': null,
      },
      authenticated: (wallet) => <String, dynamic>{
        'authenticated': true,
        'wallet': wallet.toMap(),
      },
    );
  }
}
