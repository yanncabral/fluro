import 'package:fluro/core/currencies/crypto_currency.dart';
import 'package:fluro/core/currencies/network.dart';
import 'package:fluro/core/wallets/crypto_wallet.dart';

extension AuthenticationCryptoWalletModel on CryptoWallet {
  Map<String, dynamic> toMap() {
    return {
      'currency': {
        'symbol': currency.symbol,
        'name': currency.name,
        'decimalPlaces': currency.decimalPlaces,
        'imageSvg': currency.imageSvgUri.toString(),
        'networkTitle': currency.network.title,
      },
      'address': address,
    };
  }

  static CryptoWallet fromMap(Map<String, dynamic> map) {
    return CryptoWallet(
      currency: CryptoCurrency(
        name: map['name'] as String,
        symbol: map['symbol'] as String,
        imageSvgUri: Uri.parse(map['imageSvg'] as String),
        decimalPlaces: map['decimalPlaces'] as int,
        network: Network(
          title: map['networkTitle'] as String,
        ),
      ),
      address: map['address'] as String,
    );
  }
}
