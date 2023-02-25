import 'package:fluro/core/currencies/crypto_currency.dart';
import 'package:fluro/core/wallets/wallet.dart';

/// {@template crypto_wallet}
/// Describes a wallet with a crypto currency.
/// {@endtemplate}
class CryptoWallet extends Wallet {
  /// {@macro crypto_wallet}
  const CryptoWallet({
    required this.address,
    required this.currency,
  });

  @override
  final String address;

  @override
  final CryptoCurrency currency;

  @override
  List<Object?> get props => [address, currency];
}
