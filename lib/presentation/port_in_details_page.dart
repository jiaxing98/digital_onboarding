import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/form/form_field_drop_down.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/form/form_field_input.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/number_bullet_item.dart';
import 'package:digital_onboarding/presentation/port_in_details_page_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_future_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

class PortInDetailsPage extends StatefulWidget {
  const PortInDetailsPage({super.key});

  @override
  State<PortInDetailsPage> createState() => _PortInDetailsPageState();
}

class _PortInDetailsPageState extends State<PortInDetailsPage> {
  late PortInDetailsPageVM viewmodel;

  Future<List<ServiceProvider>>? getProvidersFuture;

  @override
  void initState() {
    super.initState();
    viewmodel = context.read<PortInDetailsPageVM>();
    getProvidersFuture = viewmodel.getServiceProviders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DobAppBar(
        title: "Port-In Details",
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(KPadding.page),
          child: UTFutureBuilder(
            future: getProvidersFuture,
            onCompleted: (providers) {
              return ListView(
                children: [
                  PortInDetailsForm(providers: providers),
                  const SizedBox(height: kSpacingMedium),
                  const PortInDescription(),
                  const SizedBox(height: kSpacingMedium),
                  SubmitActivationButton(
                    onPressed: _submitPortInActivation,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _submitPortInActivation() async {
    if (!viewmodel.formKey.currentState!.validate()) return;

    final task = viewmodel.submitPortInActivation();
    context.loaderOverlay.show();
    final result = await task.run();
    final userBrief = await viewmodel.userBrief;

    result.fold((failure) {
      context.loaderOverlay.hide();
      context.pushNamed(
        Pages.activationFailed,
        extra: failure,
      );
    }, (_) {
      context.loaderOverlay.hide();
      context.pushNamed(
        Pages.success,
        queryParameters: {"username": userBrief.name},
        extra: userBrief.registrationType,
      );
    });
  }
}

//region PortInDetailsForm
class PortInDetailsForm extends StatelessWidget {
  final List<ServiceProvider> providers;

  const PortInDetailsForm({
    super.key,
    required this.providers,
  });

  @override
  Widget build(BuildContext context) {
    final viewmodel = context.read<PortInDetailsPageVM>();

    return Form(
      key: viewmodel.formKey,
      child: Column(
        children: [
          FormFieldInput(
            controller: viewmodel.mobileNoCtrl,
            label: "Port-In Mobile Number",
            hintText: "Enter Port-In Number",
            keyboardType: TextInputType.number,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                "Port-In Mobile Number is required.";
              }
              RegExp exp = RegExp(r'^\d{10,11}$');
              if (!exp.hasMatch(value!)) {
                return "Invalid Phone Number.";
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          FormFieldDropDown<ServiceProvider>(
            label: "Current Service Provider",
            hintText: "Please select",
            dropdownMenuItems: List.generate(
              providers.length,
              (index) => DropdownMenuItem(
                value: providers[index],
                child: Text(providers[index].name),
              ),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Current Service Provider is required.";
              }
              return null;
            },
            onSelected: viewmodel.onSelectProvider,
          ),
          const SizedBox(height: 16.0),
          Selector<PortInDetailsPageVM, List<Plan>>(
            selector: (ctx, viewmodel) => viewmodel.availablePlans ?? [],
            builder: (ctx, value, _) {
              final viewmodel = ctx.read<PortInDetailsPageVM>();

              return AvailablePlans(
                label: "Postpaid or Prepaid",
                planTypes: value,
                selectedPlan: viewmodel.selectedPlan,
                onSelected: viewmodel.onSelectPlan,
              );
            },
          ),
        ],
      ),
    );
  }
}
//endregion

//region AvailablePlans
class AvailablePlans extends StatelessWidget {
  final String label;
  final List<Plan> planTypes;
  final Plan? selectedPlan;
  final void Function(Plan) onSelected;

  const AvailablePlans({
    super.key,
    required this.label,
    required this.planTypes,
    required this.selectedPlan,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            planTypes.length,
            (index) => PlanCard(
              plan: planTypes[index],
              isSelected: selectedPlan == planTypes[index],
              onSelected: onSelected,
            ),
          ),
        )
      ],
    );
  }
}

class PlanCard extends StatefulWidget {
  final Plan plan;
  final bool isSelected;
  final void Function(Plan) onSelected;

  const PlanCard({
    super.key,
    required this.plan,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  State<PlanCard> createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSelected(widget.plan);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: kSpacingMedium),
        child: Container(
          decoration: BoxDecoration(
            color: widget.isSelected ? Colors.red : Colors.transparent,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.plan.name,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : null,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//endregion

//region PortInDescription
class PortInDescription extends StatelessWidget {
  const PortInDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "To port-in your number to our telco, please ensure:-",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.0),
        NumberBulletItem(
          number: '1.',
          text: Text("Your line is still active."),
        ),
        SizedBox(height: 4.0),
        NumberBulletItem(
          number: '2.',
          text: Text("You are not tied to a contract."),
        ),
        SizedBox(height: 4.0),
        NumberBulletItem(
          number: '3.',
          text: Text("There are no outstanding payments."),
        ),
        SizedBox(height: 4.0),
        NumberBulletItem(
          number: '4.',
          text: Text(
            "You are using the same ID (MyKad/ old IC/ passport) that was used to register with your current service provider.",
          ),
        ),
      ],
    );
  }
}
//endregion

//region SubmitActivationButton
class SubmitActivationButton extends StatelessWidget {
  final void Function() onPressed;

  const SubmitActivationButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
          onPressed: onPressed,
          child: const Text("Next"),
        ),
        const SizedBox(height: 32.0),
      ],
    );
  }

  // void _handleInvalidRequestException(BuildContext context, InvalidRequestException ex) {
  //   showDialog(
  //     context: context,
  //     builder: (ctx) => SingleButtonDialog(
  //       title: context.string(TPortInDetails.dialogInvalidRequest),
  //       message: ex.message,
  //       action: context.string(TPortInDetails.dialogButtonPositive),
  //       onAction: null,
  //     ),
  //   );
  // }
  //
  // void _handleRegistrationException(BuildContext context, RegistrationException ex) {
  //   utils.navigation.pushNamed(
  //     context,
  //     name: PageName.registerFailed,
  //     arguments: ex,
  //   );
  // }
}
//endregion
