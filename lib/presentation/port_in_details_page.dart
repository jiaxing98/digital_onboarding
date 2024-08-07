// import 'package:flutter/material.dart';
// import 'package:flutter_one/extension/translation_extension.dart';
// import 'package:flutter_one/ui/widget/keyboard.dart';
// import 'package:oneapp_shared/ui/widget/mini_app_page.dart';
// import 'package:provider/provider.dart';
// import 'package:redone_dob/core/constants/layout.dart';
// import 'package:redone_dob/features/register/presentation/port_in_details/port_in_description.dart';
// import 'package:redone_dob/features/register/presentation/port_in_details/port_in_details_form.dart';
// import 'package:redone_dob/features/register/presentation/port_in_details/submit_activation_button.dart';
// import 'package:redone_dob/features/register/presentation/registration/registration_page_name.dart';
// import 'package:redone_dob/features/register/presentation/registration/registration_screen_viewmodel.dart';
// import 'package:redone_dob/translations/port_in_details_translation.dart';
//
// class PortInDetailsPage extends StatelessWidget {
//   const PortInDetailsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final register = context.read<RegistrationScreenVM>();
//     final formKey = GlobalKey<FormState>();
//
//     final children = [
//       PortInDetailsForm(formKey: formKey),
//       const PortInDescription(),
//       SubmitActivationButton(formKey: formKey),
//     ];
//
//     return MiniAppPage(
//       onBack: () {
//         register.toPage(ViewName.customerDetails);
//       },
//       onClose: register.quit,
//       title: context.string(TPortInDetails.appBarTitle),
//       builder: UIKeyboard(
//         child: ListView.separated(
//           shrinkWrap: true,
//           padding: const EdgeInsets.all(kPaddingMedium),
//           itemCount: children.length,
//           separatorBuilder: (context, index) => const SizedBox(height: kSpacingMedium),
//           itemBuilder: (context, index) => children[index],
//         ),
//       ),
//     );
//   }
// }
