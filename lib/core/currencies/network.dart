/// {@template network}
/// Describes a payment network.
/// {@endtemplate}
class Network {
  /// {@macro network}
  const Network({
    required this.title,
  });

  /// The title of the network.
  /// Ex: "Ethereum" or "Brazillian Pix"
  final String title;
}
