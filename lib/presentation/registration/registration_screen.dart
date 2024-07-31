// import 'package:flutter/material.dart';
// import 'package:flutter_one/ui/widget/page_view.dart';
// import 'package:provider/provider.dart';
// import 'package:digital_onboarding/core/constants/layout.dart';
// import 'package:digital_onboarding/features/_shared/widgets/s_journal.dart';
// import 'package:digital_onboarding/presentation/registration/registration_screen_viewmodel.dart';
//
// class RegistrationScreen extends StatelessWidget {
//   const RegistrationScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final vm = context.watch<RegistrationScreenVM>();
//
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(
//             height: kPaddingMedium / 2,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: kPaddingMedium),
//             child: SJournal(currentStep: vm.currentStep),
//           ),
//           Expanded(
//             child: UIPageView(
//               controller: vm.controller,
//               children: vm.mapInUse.values.map((e) => e.page).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
