import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/presentation/confirm_mobile_number_page_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

class ConfirmMobileNumberPage extends StatefulWidget {
  final String callerId;

  const ConfirmMobileNumberPage({super.key, required this.callerId});

  @override
  State<ConfirmMobileNumberPage> createState() => _ConfirmMobileNumberPageState();
}

class _ConfirmMobileNumberPageState extends State<ConfirmMobileNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DobAppBar(
        title: "Confirm Mobile Number",
      ),
      body: Padding(
        padding: const EdgeInsets.all(KPadding.page),
        child: Center(
          child: Column(
            children: [
              Text(
                "Would you like to activate this mobile number?",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kSpacingMedium),
              Text(
                widget.callerId,
                style: TextStyle(fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kSpacingMedium),
              SizedBox(
                width: 200.0,
                child: OutlinedButton(
                  onPressed: () {
                    _confirmMobileNumber(widget.callerId);
                  },
                  child: Text("Proceed"),
                ),
              ),
              const SizedBox(height: kSpacingButton),
              SizedBox(
                width: 200.0,
                child: OutlinedButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text("Rescan SIM Package"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _confirmMobileNumber(String callerId) async {
    final viewmodel = context.read<ConfirmMobileNumberPageVM>();
    final task = viewmodel.confirmMobileNumber(callerId);

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
