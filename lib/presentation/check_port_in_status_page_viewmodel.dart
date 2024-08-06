import 'package:digital_onboarding/domain/usecases/check_mnp_status_usecase.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:flutter/cupertino.dart';
import 'package:fpdart/fpdart.dart';

class CheckPortInStatusPageVM extends ChangeNotifier {
  final CheckMnpStatusUseCase _checkMnpStatusUseCase;

  CheckPortInStatusPageVM({
    required CheckMnpStatusUseCase checkMnpStatusUseCase,
  }) : _checkMnpStatusUseCase = checkMnpStatusUseCase;

  final formKey = GlobalKey<FormState>();

  TaskEither<Failure, void> checkMnpStatus(String callerId, String identificationNo) {
    return TaskEither.tryCatch(
      () => _checkMnpStatusUseCase.call(callerId, identificationNo),
      (ex, __) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
