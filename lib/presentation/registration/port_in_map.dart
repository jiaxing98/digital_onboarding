// import 'package:flutter/material.dart';
// import 'package:flutter_one/dependency/viewmodel_manager.dart';
// import 'package:flutter_one/state/widget/provider.dart';
// import 'package:digital_onboarding/presentation/_viewmodels/sim_package_viewmodel.dart';
// import 'package:digital_onboarding/presentation/registration/registration_page_name.dart';
// import 'package:digital_onboarding/presentation/select_identification_page.dart';
// import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
// import 'package:digital_onboarding/presentation/sim_example_page.dart';
//
// Map<String, ({int index, Widget page})> get portInMap => {
//       RegistrationPageName.simExample: (
//         index: 0,
//         page: UIProvider<SimPackageVM>(
//           viewModel: viewModels.get<SimPackageVM>(),
//           onBindReady: (vm) => vm.getRegistrationType(),
//           child: (vm) => SimExamplePage(registrationType: vm.registrationType),
//         ),
//       ),
//       RegistrationPageName.selectIdentification: (
//         index: 1,
//         page: UIProvider<SelectIdentificationPageVM>(
//           viewModel: viewModels.get<SelectIdentificationPageVM>(),
//           child: (_) => const SelectIdentificationPage(),
//         ),
//       ),
//       RegistrationPageName.captureIdGuidelines: (
//         index: 2,
//         page: UIProvider<CaptureIdGuidelinesPageVM>(
//           viewModel: viewModels.get<CaptureIdGuidelinesPageVM>(),
//           child: (_) => const CaptureIdGuidelinesPage(),
//         ),
//       ),
//       RegistrationPageName.customerDetails: (
//         index: 3,
//         page: UIProvider<CustomerDetailsPageVM>(
//           viewModel: viewModels.get<CustomerDetailsPageVM>(),
//           child: (_) => const CustomerDetailsPage(),
//         ),
//       ),
//       RegistrationPageName.portInDetails: (
//         index: 4,
//         page: UIProvider<PortInDetailsPageVM>(
//           viewModel: viewModels.get<PortInDetailsPageVM>(),
//           child: (_) => const PortInDetailsPage(),
//         ),
//       ),
//       RegistrationPageName.portInRegistrationSuccess: (
//         index: 5,
//         page: UIProvider<RegistrationSuccessPageVM>(
//           onBindReady: (vm) => vm.getUsername(),
//           viewModel: viewModels.get<RegistrationSuccessPageVM>(),
//           child: (_) => const PortInRegistrationSuccessPage(),
//         ),
//       ),
//     };
