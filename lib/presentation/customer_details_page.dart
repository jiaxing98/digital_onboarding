import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/core/extensions/datetime.dart';
import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/state.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/form/form_field_drop_down.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/form/form_field_input.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/form/form_field_readonly.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/form/form_field_row_flex.dart';
import 'package:digital_onboarding/presentation/customer_details_page_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_future_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

class CustomerDetailsPage extends StatefulWidget {
  final EkycInfo ekycInfo;

  const CustomerDetailsPage({
    super.key,
    required this.ekycInfo,
  });

  @override
  State<CustomerDetailsPage> createState() => _CustomerDetailsPageState();
}

class _CustomerDetailsPageState extends State<CustomerDetailsPage> {
  late CustomerDetailsPageVM viewmodel;

  Future<void>? loadAvailableCountryStatesFuture;

  @override
  void initState() {
    super.initState();
    viewmodel = context.read<CustomerDetailsPageVM>();
    loadAvailableCountryStatesFuture = viewmodel.loadAvailableCountryStates();
  }

  @override
  Widget build(BuildContext context) {
    return UTFutureBuilder(
      future: loadAvailableCountryStatesFuture,
      onCompleted: (_) {
        return Scaffold(
          appBar: const DobAppBar(
            title: "Customer Details",
          ),
          body: Padding(
            padding: const EdgeInsets.all(KPadding.page),
            child: Form(
              key: viewmodel.formKey,
              child: ListView(
                children: [
                  CustomerInfoSection(
                    name: widget.ekycInfo.name,
                    identificationNo: widget.ekycInfo.identificationNo,
                    gender: widget.ekycInfo.gender.name.toUpperCase(),
                    dob: widget.ekycInfo.birthDate != null
                        ? widget.ekycInfo.birthDate!.format('yyyy-MM-dd')
                        : "",
                  ),
                  const SizedBox(height: 16.0),
                  AddressSection(address: widget.ekycInfo.addressInfo),
                  const SizedBox(height: 16.0),
                  ConfirmDetailsButton(onSubmitActivation: _submitActivation),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _submitActivation() async {
    if (!viewmodel.formKey.currentState!.validate()) return;

    final task = viewmodel.submitNewActivation();
    context.loaderOverlay.show();
    final result = await task.run();
    final registrationType = await viewmodel.registrationType;
    result.fold((failure) {
      context.loaderOverlay.hide();
      context.pushNamed(
        Pages.activationFailed,
        extra: failure,
      );
    }, (_) async {
      context.loaderOverlay.hide();
      context.pushNamed(
        Pages.success,
        queryParameters: {"username": widget.ekycInfo.name},
        extra: registrationType,
      );
    });
  }
}

//region CustomerInfoSection
class CustomerInfoSection extends StatelessWidget {
  final String name;
  final String identificationNo;
  final String gender;
  final String dob;

  const CustomerInfoSection({
    super.key,
    required this.name,
    required this.identificationNo,
    required this.gender,
    required this.dob,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormFieldReadOnly(
          label: "Name",
          value: name,
        ),
        const SizedBox(height: 16.0),
        FormFieldReadOnly(
          label: "Identification No.",
          value: identificationNo,
        ),
        const SizedBox(height: 16.0),
        FormFieldRowFlex(
          child1: FormFieldReadOnly(
            label: "Gender",
            value: gender,
          ),
          child2: FormFieldReadOnly(
            label: "Date of Birth",
            value: dob,
          ),
        ),
      ],
    );
  }
}
//endregion

//region AddressSection
class AddressSection extends StatelessWidget {
  final AddressInfo? address;

  const AddressSection({
    super.key,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddressLine1Field(value: address?.street1 ?? ""),
        const SizedBox(height: 16.0),
        AddressLine2Field(value: address?.street2 ?? ""),
        const SizedBox(height: 16.0),
        PostcodeCityField(
          postcode: address?.postcode ?? "",
          city: address?.city ?? "",
        ),
        const SizedBox(height: 16.0),
        CountryStateField(value: address?.state),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
//endregion

//region AddressLine1Field
class AddressLine1Field extends StatelessWidget {
  final String value;

  const AddressLine1Field({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerDetailsPageVM>(
      builder: (context, viewmodel, child) {
        viewmodel.addressLine1Ctrl.text = value;

        return FormFieldInput(
          controller: viewmodel.addressLine1Ctrl,
          label: "Address",
          hintText: "Address Line 1",
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Field cannot be empty";
            }
            return null;
          },
        );
      },
    );
  }
}
//endregion

//region AddressLine2Field
class AddressLine2Field extends StatelessWidget {
  final String value;

  const AddressLine2Field({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerDetailsPageVM>(
      builder: (context, viewmodel, child) {
        viewmodel.addressLine2Ctrl.text = value;

        return FormFieldInput(
          controller: viewmodel.addressLine2Ctrl,
          label: "Address",
          hintText: "Address Line 2",
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "Field cannot be empty";
            }
            return null;
          },
        );
      },
    );
  }
}
//endregion

//region PostcodeCityField
class PostcodeCityField extends StatelessWidget {
  final String postcode;
  final String city;

  const PostcodeCityField({
    super.key,
    required this.postcode,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerDetailsPageVM>(
      builder: (context, viewmodel, child) {
        viewmodel.postcodeCtrl.text = postcode;
        viewmodel.cityCtrl.text = city;

        return FormFieldRowFlex(
          child1: FormFieldInput(
            controller: viewmodel.postcodeCtrl,
            label: "Postcode",
            hintText: "Postcode",
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Field cannot be empty";
              }
              RegExp exp = RegExp(r'^\d{5}$');
              if (!exp.hasMatch(value)) {
                return "Invalid Postcode";
              }
              return null;
            },
          ),
          child2: FormFieldInput(
            controller: viewmodel.cityCtrl,
            label: "City",
            hintText: "City",
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Field cannot be empty";
              }
              return null;
            },
          ),
        );
      },
    );
  }
}
//endregion

//region CountryStateField
class CountryStateField extends StatefulWidget {
  final CountryState? value;

  const CountryStateField({
    super.key,
    this.value,
  });

  @override
  State<CountryStateField> createState() => _CountryStateFieldState();
}

class _CountryStateFieldState extends State<CountryStateField> {
  @override
  void initState() {
    super.initState();
    context.read<CustomerDetailsPageVM>().preselectCountryState(widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomerDetailsPageVM>(
      builder: (context, viewmodel, child) {
        final availableOptions = viewmodel.availableCountryStates;

        return FormFieldDropDown<CountryState>(
          label: "State",
          hintText: "Please select state",
          dropdownMenuItems: List.generate(
            availableOptions.length,
            (index) => DropdownMenuItem(
              value: availableOptions[index],
              child: Text(availableOptions[index].name),
            ),
          ),
          initialValue: viewmodel.selectedCountryState,
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return "State is required";
            }
            return null;
          },
          onSelected: (value) {
            if (value != null) viewmodel.selectedCountryState = value;
          },
        );
      },
    );
  }
}
//endregion

//region ConfirmDetailsButton
class ConfirmDetailsButton extends StatelessWidget {
  final void Function() onSubmitActivation;

  const ConfirmDetailsButton({
    super.key,
    required this.onSubmitActivation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 150.0,
          child: OutlinedButton(
            onPressed: onSubmitActivation,
            child: Text("Submit Activation"),
          ),
        ),
        const SizedBox(height: kSpacingMedium),
        SizedBox(
          width: 150.0,
          child: OutlinedButton(
            onPressed: () {
              context.pushReplacementNamed(Pages.guidelines);
            },
            child: Text("Retake Photo"),
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
//endregion
