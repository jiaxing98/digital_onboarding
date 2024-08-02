import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/usecases/update_id_type_usecase.dart';
import 'package:digital_onboarding/utils/failure.dart';
import 'package:fpdart/fpdart.dart';

class SelectIdentificationPageVM {
  final UpdateIdDocumentUseCase _updateIdDocumentUseCase;

  SelectIdentificationPageVM({
    required UpdateIdDocumentUseCase updateIdDocumentUseCase,
  }) : _updateIdDocumentUseCase = updateIdDocumentUseCase;

  TaskEither<Failure, void> saveIdDocument(IdDocument document) {
    return TaskEither.tryCatch(
      () => _updateIdDocumentUseCase.call(document),
      (ex, _) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
