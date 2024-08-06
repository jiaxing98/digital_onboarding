import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/usecases/perform_ekyc_usecase.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:fpdart/fpdart.dart';

class CaptureIdGuidelinesPageVM {
  final PerformEkycUseCase _performEkycUseCase;

  CaptureIdGuidelinesPageVM({
    required PerformEkycUseCase performEkycUseCase,
  }) : _performEkycUseCase = performEkycUseCase;

  TaskEither<Failure, EkycInfo> performEkyc() {
    return TaskEither.tryCatch(
      () => _performEkycUseCase.call(),
      (ex, __) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
