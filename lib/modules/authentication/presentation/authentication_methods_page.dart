import 'package:flutter/material.dart';

class AuthenticationMethodsPage extends StatelessWidget {
  const AuthenticationMethodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect your wallet'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/transfero-one.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text('Transfero One'),
            subtitle: const Text('Using OAuth'),
            trailing: IconButton(
              icon: const Icon(
                Icons.chevron_right,
              ),
              onPressed: () {},
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/trust-wallet.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text('Trust Wallet'),
            subtitle: const Text('Using ConnectWallet'),
            trailing: IconButton(
              icon: const Icon(
                Icons.chevron_right,
              ),
              onPressed: () {},
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/phantom-wallet.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text('Phantom Wallet'),
            subtitle: const Text('Using ConnectWallet'),
            trailing: IconButton(
              icon: const Icon(
                Icons.chevron_right,
              ),
              onPressed: () {},
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/metamask-wallet.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text('Metamask Wallet'),
            subtitle: const Text('Using ConnectWallet'),
            trailing: IconButton(
              icon: const Icon(
                Icons.chevron_right,
              ),
              onPressed: () {},
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
