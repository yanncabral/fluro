import 'package:flutter/material.dart';

/// {@template onboarding_page}
/// Page for the onboarding.
/// {@endtemplate}
class OnboardingPage extends StatelessWidget {
  /// {@macro onboarding_page}
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Onboarding'),
      ),
    );
  }
}
