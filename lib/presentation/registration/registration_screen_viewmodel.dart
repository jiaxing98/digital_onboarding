// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_one/state/viewmodel.dart';
// import 'package:flutter_one/ui/widget/page_view.dart';
// import 'package:digital_onboarding/core/dependency_injection/_dependency_injection.dart';
// import 'package:digital_onboarding/domain/entities/user_info.dart';
// import 'package:digital_onboarding/domain/usecases/get_registration_type_usecase.dart';
// import 'package:digital_onboarding/features/_shared/widgets/s_journal.dart';
// import 'package:digital_onboarding/main/dob_app_controller.dart';
// import 'package:digital_onboarding/presentation/registration/new_register_map.dart';
// import 'package:digital_onboarding/presentation/registration/port_in_map.dart';
// import 'package:digital_onboarding/presentation/registration/registration_page_name.dart';
//
// class RegistrationScreenVM extends ViewModel {
//   final GetRegistrationTypeUseCase _getRegistrationTypeUseCase;
//
//   late UIPageViewController controller;
//
//   RegistrationScreenVM({
//     required GetRegistrationTypeUseCase getRegistrationTypeUseCase,
//   }) : _getRegistrationTypeUseCase = getRegistrationTypeUseCase;
//
//   Map<String, ({int index, Widget page})> _mapInUse = {};
//   JournalStep _currentStep = JournalStep.step1;
//   int _currentPage = 0;
//
//   Map<String, ({int index, Widget page})> get mapInUse => _mapInUse;
//   JournalStep get currentStep => _currentStep;
//
//   Future<void> initialize() async {
//     final registrationType = await _getRegistrationTypeUseCase();
//     _mapInUse = switch (registrationType) {
//       RegistrationType.newRegistration => newRegisterMap,
//       RegistrationType.portIn => portInMap,
//     };
//     controller = UIPageViewController(totalPage: _mapInUse.length);
//   }
//
//   Future<void> prevPage() async {
//     _currentPage -= 1;
//     controller.toPage(_currentPage);
//     _updateProgress();
//   }
//
//   Future<void> nextPage() async {
//     _currentPage += 1;
//     controller.toPage(_currentPage);
//     _updateProgress();
//   }
//
//   Future<void> toPage(RegistrationPageName pageName) async {
//     final page = mapInUse[pageName]?.index;
//     if (page == null) return; //todo: enhance- 404 route page
//
//     controller.toPage(page);
//     _updateProgress();
//   }
//
//   Future<void> quit() async {
//     helpers.get<DobAppController>().quitProcessDob();
//   }
//
//   void _updateProgress() {
//     if (_currentPage <= 1) {
//       _currentStep = JournalStep.step1;
//     } else if (_currentPage >= 2 && _currentPage <= 3) {
//       _currentStep = JournalStep.step2;
//     } else if (_currentPage <= 4) {
//       _currentStep = JournalStep.step3;
//     } else if (_currentPage == mapInUse.length - 1) {
//       _currentStep = JournalStep.step4;
//     }
//   }
// }
