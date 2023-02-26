import 'package:fluro/core/currencies/currency.dart';
import 'package:fluro/core/currencies/network.dart';

/// {@template crypto_currency}
/// Describes a crypto currency.
/// {@endtemplate}
class CryptoCurrency extends Currency {
  /// {@macro crypto_currency}
  const CryptoCurrency({
    required super.name,
    required super.symbol,
    required super.imageSvgUri,
    required super.decimalPlaces,
    required this.network,
  });

  /// The blockchain of this crypto currency.
  final Network network;
}
