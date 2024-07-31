import 'package:digital_onboarding/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              context.pushNamed(Screen.register);
            },
            child: Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
