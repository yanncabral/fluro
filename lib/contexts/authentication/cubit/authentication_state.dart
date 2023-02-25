part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  /// {@template authentication_state_unauthenticated}
  /// The user is not authenticated.
  /// {@endtemplate}
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;

  /// {@template authentication_state_authenticated}
  /// The user is authenticated.
  /// {@endtemplate}
  const factory AuthenticationState.authenticated(Wallet wallet) =
      _Authenticated;
}
