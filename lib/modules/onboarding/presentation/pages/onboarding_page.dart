import 'package:fluro/design/colors.dart';
import 'package:fluro/design/widgets/fluro_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// {@template onboarding_page}
/// Page for the onboarding.
/// {@endtemplate}
class OnboardingPage extends StatelessWidget {
  /// {@macro onboarding_page}
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Image.asset(
            'lib/modules/onboarding/assets/background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Opacity(
                  opacity: 0.8,
                  child: Text(
                    'Your customer pay crypto, you get fiat',
                  ),
                ),
                const SizedBox(height: 16),
                FractionallySizedBox(
                  widthFactor: 0.7,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                      children: const [
                        TextSpan(
                          text: 'Make Paying easier with ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: 'Fluro',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                FluroActionButton(
                  title: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
