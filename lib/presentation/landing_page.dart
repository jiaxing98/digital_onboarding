import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/presentation/landing_page_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late LandingPageVM viewmodel;

  @override
  void initState() {
    super.initState();
    viewmodel = context.read<LandingPageVM>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child: OutlinedButton(
                onPressed: () {
                  startRegistration(RegistrationType.newRegistration);
                },
                child: Text("New Registration"),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 180,
              child: OutlinedButton(
                onPressed: () {
                  startRegistration(RegistrationType.portIn);
                },
                child: Center(child: Text("Port-In Registration")),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 180,
              child: OutlinedButton(
                onPressed: () {
                  context.pushNamed(Pages.checkStatus);
                },
                child: Center(child: Text("Check Port-In Status")),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> startRegistration(RegistrationType registrationType) async {
    final task = viewmodel.startRegistration(registrationType);
    context.loaderOverlay.show();
    final result = await task.run();
    result.fold((failure) {
      context.loaderOverlay.hide();
      showErrorDialog(context: context, failure: failure);
    }, (_) {
      context.loaderOverlay.hide();
      context.pushNamed(Pages.selectId);
    });
  }
}
