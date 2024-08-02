import 'package:digital_onboarding/domain/usecases/perform_ekyc_usecase.dart';
import 'package:digital_onboarding/utils/failure.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class CaptureIdGuidelinesPageVM extends ChangeNotifier {
  final PerformEkycUseCase _performEkycUseCase;

  CaptureIdGuidelinesPageVM({
    required PerformEkycUseCase performEkycUseCase,
  }) : _performEkycUseCase = performEkycUseCase;

  TaskEither<Failure, bool> performEkyc() {
    return TaskEither.tryCatch(
      () => _performEkycUseCase.call(),
      (ex, __) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
