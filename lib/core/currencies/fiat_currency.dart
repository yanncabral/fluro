import 'package:fluro/core/currencies/currency.dart';

/// {@template fiat_currency}
/// Describes a fiat currency.
/// {@endtemplate}
class FiatCurrency extends Currency {
  /// {@macro fiat_currency}
  const FiatCurrency({
    required super.name,
    required super.symbol,
    required super.imageSvgUri,
  }) : super(decimalPlaces: 2);
}
