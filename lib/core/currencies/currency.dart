/// {@template currency}
/// Interface for any kind of currency in
/// the app.
/// {@endtemplate}
abstract class Currency {
  /// {@macro currency}
  const Currency({
    required this.name,
    required this.symbol,
    required this.decimalPlaces,
    required this.imageSvgUri,
  });

  /// The name of the currency.
  /// Ex: "Dollar"
  final String name;

  /// The symbol of the currency.
  /// Ex: "$"
  final String symbol;

  /// The image of the currency.
  /// Ex: "https://static.simpleswap.io/images/currencies-logo/eth.svg"
  final Uri imageSvgUri;

  /// Decimal places of the currency.
  /// Ex: 2
  final int decimalPlaces;
}
