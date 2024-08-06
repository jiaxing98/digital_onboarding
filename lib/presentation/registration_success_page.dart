import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistrationSuccessPage extends StatelessWidget {
  final String username;
  final RegistrationType registrationType;

  const RegistrationSuccessPage({
    super.key,
    required this.username,
    required this.registrationType,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DobAppBar(
        title: "Customer Details",
      ),
      body: Padding(
        padding: const EdgeInsets.all(KPadding.page),
        child: Column(
          children: [
            switch (registrationType) {
              RegistrationType.newRegistration => NewRegistrationNote(username: username),
              RegistrationType.portIn => PortInRegistrationNote(username: username),
            },
            SizedBox(height: 16.0),
            BackToHomepageButton(),
          ],
        ),
      ),
    );
  }
}

//region NewRegistrationNote
class NewRegistrationNote extends StatelessWidget {
  final String username;

  const NewRegistrationNote({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 72.0,
        ),
        const SizedBox(height: kSpacingMedium),
        Text(
          "$username, Welcome on Board!",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: kSpacingMedium),
        Text(
            "Please insert the SIM card into your phone. You'll receive a confirmation SMS shortly. The activation process typically takes between 2 to 5 minutes."),
        const SizedBox(height: kSpacingMedium),
        Text(
            "Once your SIM is activated, you can log in to your account to purchase reloads and top up data."),
      ],
    );
  }
}
//endregion

//region PortInRegistrationNote
class PortInRegistrationNote extends StatelessWidget {
  final String username;

  const PortInRegistrationNote({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 72.0,
        ),
        const SizedBox(height: kSpacingMedium),
        Text(
          "$username, thank you for your subscription!",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: kSpacingMedium),
        Text(
          "Reply an SMS from your current service provider to verify your port-in request.",
        ),
        const SizedBox(height: kSpacingMedium),
        Text(
          "Once your current provider confirms the request, you'll be able to start using your new SIM.",
        ),
      ],
    );
  }
}
//endregion

//region BackToHomepageButton
class BackToHomepageButton extends StatelessWidget {
  const BackToHomepageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        context.goNamed(Pages.home);
      },
      child: Text("Back to Homepage"),
    );
  }
}
//endregion
