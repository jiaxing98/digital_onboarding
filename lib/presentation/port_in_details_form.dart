// import 'package:flutter/material.dart';
// import 'package:flutter_one/extension/translation_extension.dart';
// import 'package:provider/provider.dart';
// import 'package:redone_dob/core/constants/layout.dart';
// import 'package:redone_dob/core/extensions/column_extension.dart';
// import 'package:redone_dob/features/_shared/widgets/form_field_drop_down.dart';
// import 'package:redone_dob/features/_shared/widgets/form_field_input.dart';
// import 'package:redone_dob/features/register/domain/entities/donor_type_entity.dart';
// import 'package:redone_dob/features/register/presentation/port_in_details/choose_plan.dart';
// import 'package:redone_dob/features/register/presentation/port_in_details/port_in_details_page_viewmodel.dart';
// import 'package:redone_dob/translations/port_in_details_translation.dart';
//
// class PortInDetailsForm extends StatelessWidget {
//   final GlobalKey<FormState> formKey;
//
//   const PortInDetailsForm({
//     super.key,
//     required this.formKey,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final vm = context.watch<PortInDetailsPageVM>();
//
//     return Form(
//       key: formKey,
//       child: Column(
//         children: [
//           FormFieldInput(
//             label: context.string(TPortInDetails.textFieldMobileNumberTitle),
//             hintText: context.string(TPortInDetails.textFieldMobileNumberHint),
//             keyboardType: TextInputType.number,
//             validator: (String? value) {
//               if (value == null || value.isEmpty) {
//                 return context
//                     .string(TPortInDetails.textFieldMobileNumberEmpty);
//               }
//               RegExp exp = RegExp(r'^\d{10,11}$');
//               if (!exp.hasMatch(value)) {
//                 return context
//                     .string(TPortInDetails.textFieldMobileNumberError);
//               }
//               return null;
//             },
//             onChanged: (value) => vm.portInMobileNumber = value,
//           ),
//           //todo: !!! sos
//           Selector<PortInDetailsPageVM, List<String>>(
//             selector: (_, vm) => vm.donorKeys,
//             builder: (ctx, value, _) {
//               return FormFieldDropDown<String>(
//                 label: context.string(TPortInDetails.textFieldProviderTitle),
//                 hintText: context.string(TPortInDetails.textFieldProviderHint),
//                 dropdownMenuItems: List.generate(
//                   value.length,
//                   (index) => DropdownMenuItem(
//                     value: value[index],
//                     child: Text(value[index]),
//                   ),
//                 ),
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return context
//                         .string(TPortInDetails.textFieldMobileNumberEmpty);
//                   }
//                   return null;
//                 },
//                 onSelected: vm.onSelectProvider,
//               );
//             },
//           ),
//           Selector<PortInDetailsPageVM, Map<String, List<DonorTypeEntity>>>(
//             selector: (_, vm) => vm.donorType,
//             builder: (ctx, value, _) {
//               if (vm.selectedProvider.isEmpty) return Container();
//
//               return ChoosePlan(
//                 label: context.string(TPortInDetails.formPlans),
//                 planTypes:
//                     value[vm.selectedProvider]!.map((e) => e.planType).toList(),
//                 selectedPlan: vm.selectedPlan,
//                 onSelected: vm.onSelectPlan,
//               );
//             },
//           ),
//         ],
//       ).separated(
//         const SizedBox(height: kSpacingMedium),
//       ),
//     );
//   }
// }
