// import 'package:flutter/material.dart';
// import 'package:flutter_one/extension/translation_extension.dart';
// import 'package:oneapp_shared/theme/prepaid_theme.dart';
// import 'package:oneapp_shared/ui/widget/action_button.dart';
// import 'package:oneapp_shared/ui/widget/mini_app_page.dart';
// import 'package:provider/provider.dart';
// import 'package:digital_onboarding/core/constants/layout.dart';
// import 'package:digital_onboarding/presentation/_shared/widgets/scan_package_tag_button.dart';
// import 'package:digital_onboarding/presentation/_viewmodels/sim_package_viewmodel.dart';
// import 'package:digital_onboarding/presentation/registration/registration_screen_viewmodel.dart';
// import 'package:digital_onboarding/translations/confirm_mobile_number_translation.dart';
//
// class ConfirmMobileNumberPage extends StatelessWidget {
//   const ConfirmMobileNumberPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final register = context.read<RegistrationScreenVM>();
//     final vm = context.read<SimPackageVM>();
//
//     return MiniAppPage(
//       onBack: register.prevPage,
//       onClose: register.quit,
//       title: context.string(TConfirmMobileNumber.appBarTitle),
//       builder: Padding(
//         padding: const EdgeInsets.all(kPaddingMedium),
//         child: Column(
//           children: [
//             Text(
//               context.string(TConfirmMobileNumber.viewMessage),
//               style: context.prepaidTextStyle.medium,
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: kSpacingMedium),
//             Text(
//               vm.callerId,
//               style: context.prepaidTextStyle.bold.copyWith(fontSize: 24.0),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: kSpacingMedium),
//             Column(
//               children: [
//                 ActionButton(
//                   action: context.string(TConfirmMobileNumber.buttonProceed),
//                   onTap: () {
//                     vm.updateConfirmMobile();
//                     register.nextPage();
//                   },
//                 ),
//                 const SizedBox(height: kSpacingButton),
//                 ScanPackageTagButton(
//                   label: context.string(TConfirmMobileNumber.buttonRescan),
//                   onVerify: (qrCode) {
//                     return vm.verifyPackageTag(qrCode);
//                   },
//                   onSuccess: register.nextPage,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
