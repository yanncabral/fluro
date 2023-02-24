import 'package:equatable/equatable.dart';
import 'package:fluro/core/wallets/crypto_wallet.dart';

/// {@template session}
/// Describes the current session of the user.
/// {@endtemplate}
class Session extends Equatable {
  /// {@macro session}
  const Session({required this.wallet});

  /// Current connected wallet.
  final CryptoWallet wallet;

  @override
  List<Object?> get props => [wallet];
}
