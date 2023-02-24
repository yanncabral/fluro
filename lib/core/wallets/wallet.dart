import 'package:equatable/equatable.dart';
import 'package:fluro/core/currencies/currency.dart';

/// {@template wallet}
/// Describes a wallet.
/// {@endtemplate}
abstract class Wallet extends Equatable {
  /// {@macro wallet}
  const Wallet();

  /// The currency of this wallet.
  Currency get currency;

  /// The address of this wallet.
  String get address;
}
