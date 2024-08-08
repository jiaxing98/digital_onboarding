import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:digital_onboarding/domain/usecases/confirm_mobile_number_usecase.dart';
import 'package:fpdart/fpdart.dart';

class ConfirmMobileNumberPageVM {
  final ConfirmMobileNumberUseCase _confirmMobileNumberUseCase;

  ConfirmMobileNumberPageVM({
    required ConfirmMobileNumberUseCase confirmMobileNumberUseCase,
  }) : _confirmMobileNumberUseCase = confirmMobileNumberUseCase;

  TaskEither<Failure, void> confirmMobileNumber(String callerId) {
    return TaskEither.tryCatch(
      () => _confirmMobileNumberUseCase.call(callerId),
      (ex, __) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
