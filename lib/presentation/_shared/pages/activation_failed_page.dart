import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ActivationFailedPage extends StatelessWidget {
  final Failure failure;

  const ActivationFailedPage({
    super.key,
    required this.failure,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DobAppBar(
        title: "Activation Failed",
      ),
      body: Padding(
        padding: const EdgeInsets.all(KPadding.page),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                failure.icon ?? Icons.error,
                size: 64.0,
              ),
              SizedBox(height: 16.0),
              Text(
                failure.title,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Text(
                failure.message,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.0),
              Column(
                children: [
                  SizedBox(
                    width: 200.0,
                    child: OutlinedButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text("Retry Activation"),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(
                    width: 200.0,
                    child: OutlinedButton(
                      onPressed: () {
                        context.goNamed(Pages.home);
                      },
                      child: Text("Back to Homepage"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
