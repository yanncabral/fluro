import 'package:bloc/bloc.dart';
import 'package:fluro/core/wallets/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(const AuthenticationState.unauthenticated());

  void authenticate(Wallet wallet) {
    emit(AuthenticationState.authenticated(wallet));
  }
}
