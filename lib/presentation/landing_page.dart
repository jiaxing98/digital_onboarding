import 'package:digital_onboarding/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                context.pushNamed(Pages.selectId);
              },
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
