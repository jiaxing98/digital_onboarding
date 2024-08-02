import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/usecases/start_registration_usecase.dart';
import 'package:digital_onboarding/utils/failure.dart';
import 'package:fpdart/fpdart.dart';

class LandingPageVM {
  final StartRegistrationUseCase _startRegistrationUseCase;

  LandingPageVM({
    required StartRegistrationUseCase startRegistrationUseCase,
  }) : _startRegistrationUseCase = startRegistrationUseCase;

  TaskEither<Failure, void> startRegistration(RegistrationType registrationType) {
    return TaskEither.tryCatch(
      () => _startRegistrationUseCase.call(registrationType),
      (ex, __) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
