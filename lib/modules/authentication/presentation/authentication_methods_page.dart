import 'package:flutter/material.dart';

class AuthenticationMethodsPage extends StatelessWidget {
  const AuthenticationMethodsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication Methods'),
      ),
      body: const Center(
        child: Text('Authentication Methods'),
      ),
    );
  }
}
