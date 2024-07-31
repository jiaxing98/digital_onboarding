// import 'package:flutter/material.dart';
// import 'package:flutter_one/dependency/utility_manager.dart';
// import 'package:flutter_one/extension/theme_extension.dart';
// import 'package:flutter_one/extension/translation_extension.dart';
// import 'package:oneapp_shared/theme/prepaid_theme.dart';
// import 'package:oneapp_shared/ui/widget/mini_app_page.dart';
// import 'package:provider/provider.dart';
// import 'package:digital_onboarding/core/constants/layout.dart';
// import 'package:digital_onboarding/domain/entities/user_info.dart';
// import 'package:digital_onboarding/presentation/_shared/widgets/scan_package_tag_button.dart';
// import 'package:digital_onboarding/presentation/_viewmodels/sim_package_viewmodel.dart';
// import 'package:digital_onboarding/presentation/registration/registration_screen_viewmodel.dart';
// import 'package:digital_onboarding/translations/sim_example_translation.dart';
//
// class SimExamplePage extends StatelessWidget {
//   final RegistrationType registrationType;
//
//   const SimExamplePage({
//     super.key,
//     required this.registrationType,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final register = context.read<RegistrationScreenVM>();
//     final vm = context.read<SimPackageVM>();
//
//     return MiniAppPage(
//       onBack: () {
//         utils.navigation.back(context);
//       },
//       onClose: register.quit,
//       title: context.string(TSimExample.appBarTitle),
//       builder: Padding(
//         padding: const EdgeInsets.all(kPaddingMedium),
//         child: Column(
//           children: [
//             Text(
//               context.string(TSimExample.viewMessage),
//               style: context.textStyle.medium,
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: kSpacingMedium),
//             Image.asset(
//               registrationType == RegistrationType.newRegistration
//                   ? context.prepaidImage.imgSimPack
//                   : context.prepaidImage.imgPortInSimPack,
//             ),
//             const SizedBox(height: kSpacingMedium),
//             ScanPackageTagButton(
//               label: context.string(TSimExample.buttonScan),
//               onVerify: (qrCode) {
//                 return vm.verifyPackageTag(qrCode);
//               },
//               onSuccess: register.nextPage,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
