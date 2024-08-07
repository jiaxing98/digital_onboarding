// import 'package:flutter/material.dart';
// import 'package:flutter_one/dependency/utility_manager.dart';
// import 'package:flutter_one/extension/translation_extension.dart';
// import 'package:oneapp_shared/ui/dialog/single_button_dialog.dart';
// import 'package:oneapp_shared/ui/widget/action_button.dart';
// import 'package:provider/provider.dart';
// import 'package:redone_dob/core/exceptions/registration_exception.dart';
// import 'package:redone_dob/features/register/presentation/port_in_details/port_in_details_page_viewmodel.dart';
// import 'package:redone_dob/features/register/presentation/registration/registration_page_name.dart';
// import 'package:redone_dob/features/register/presentation/registration/registration_screen_viewmodel.dart';
// import 'package:redone_dob/routes/page_name.dart';
// import 'package:redone_dob/translations/port_in_details_translation.dart';
//
// class SubmitActivationButton extends StatelessWidget {
//   final GlobalKey<FormState> formKey;
//
//   const SubmitActivationButton({
//     super.key,
//     required this.formKey,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ActionButton(
//           action: context.string(TPortInDetails.buttonNext),
//           onTap: () async {
//             await _submitPortInActivation(context);
//           },
//         ),
//         SizedBox(height: utils.screen.bottomSafeAreaHeight),
//       ],
//     );
//   }
//
//   Future<void> _submitPortInActivation(BuildContext context) async {
//     final register = context.read<RegistrationScreenVM>();
//     final vm = context.read<PortInDetailsPageVM>();
//
//     if (!formKey.currentState!.validate()) return;
//
//     vm.submitPortInActivation(
//       onSuccess: () {
//         register.toPage(ViewName.portInRegistrationSuccess);
//       },
//       onInvalidRequestException: (ex) => _handleInvalidRequestException(context, ex),
//       onRegistrationException: (ex) => _handleRegistrationException(context, ex),
//     );
//   }
//
//   void _handleInvalidRequestException(BuildContext context, InvalidRequestException ex) {
//     showDialog(
//       context: context,
//       builder: (ctx) => SingleButtonDialog(
//         title: context.string(TPortInDetails.dialogInvalidRequest),
//         message: ex.message,
//         action: context.string(TPortInDetails.dialogButtonPositive),
//         onAction: null,
//       ),
//     );
//   }
//
//   void _handleRegistrationException(BuildContext context, RegistrationException ex) {
//     utils.navigation.pushNamed(
//       context,
//       name: PageName.registerFailed,
//       arguments: ex,
//     );
//   }
// }
