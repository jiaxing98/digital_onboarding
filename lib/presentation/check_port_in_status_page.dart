import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/form/form_field_input.dart';
import 'package:digital_onboarding/presentation/check_port_in_status_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

class CheckPortInStatusPage extends StatefulWidget {
  const CheckPortInStatusPage({super.key});

  @override
  State<CheckPortInStatusPage> createState() => _CheckPortInStatusPageState();
}

class _CheckPortInStatusPageState extends State<CheckPortInStatusPage> {
  late CheckPortInStatusPageVM viewmodel;

  var phoneNoController = TextEditingController();
  var idController = TextEditingController();

  @override
  void initState() {
    super.initState();
    viewmodel = context.read<CheckPortInStatusPageVM>();
  }

  @override
  void dispose() {
    phoneNoController.dispose();
    idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DobAppBar(
        title: "Check Port-In Status",
      ),
      body: Padding(
        padding: const EdgeInsets.all(KPadding.page),
        child: Form(
          key: viewmodel.formKey,
          child: Column(
            children: [
              FormFieldInput(
                label: "Port-In Mobile Number",
                hintText: "Enter port-in mobile number",
                controller: phoneNoController,
                keyboardType: TextInputType.number,
                validator: _validateMobile,
              ),
              SizedBox(height: 16.0),
              FormFieldInput(
                label: "Identification No.",
                hintText: "Enter identification number",
                controller: idController,
              ),
              SizedBox(height: 24.0),
              OutlinedButton(
                onPressed: _checkStatus,
                child: Text("Check Status"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return "Port-In Mobile Number is required.";
    }
    RegExp exp = RegExp(r'^\d{10,11}$');
    if (!exp.hasMatch(value)) {
      return "Invalid Phone Number.";
    }
    return null;
  }

  Future<void> _checkStatus() async {
    if (!viewmodel.formKey.currentState!.validate()) return;

    final task = viewmodel.checkMnpStatus(phoneNoController.text, idController.text);
    context.loaderOverlay.show();
    final result = await task.run();
    result.fold((failure) {
      context.loaderOverlay.hide();

      // todo: another page to result
    }, (_) {
      context.loaderOverlay.hide();

      // todo: another page to result
    });
  }
}
