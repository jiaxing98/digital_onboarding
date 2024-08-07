import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/presentation/scan_sim_package_page_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class ScanSimPackagePage extends StatefulWidget {
  const ScanSimPackagePage({super.key});

  @override
  State<ScanSimPackagePage> createState() => _ScanSimPackagePageState();
}

class _ScanSimPackagePageState extends State<ScanSimPackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DobAppBar(
        title: "Scan Sim Package",
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(KPadding.page),
          child: Column(
            children: [
              Text(
                "Please scan the barcode found on the top right of your SIM packaging.",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kSpacingMedium),
              // Image.asset(),
              const SizedBox(height: kSpacingMedium),
              OutlinedButton(
                onPressed: _scanSimPackage,
                child: Text("Scan"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _scanSimPackage() async {
    final qrCode = const Uuid().v4();
    final viewmodel = context.read<ScanSimPackagePageVM>();
    final task = viewmodel.scanSimPackage(qrCode);
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
