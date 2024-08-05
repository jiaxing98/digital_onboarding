import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/usecases/select_id_document_usecase.dart';
import 'package:digital_onboarding/utils/failure.dart';
import 'package:fpdart/fpdart.dart';

class SelectIdentificationPageVM {
  final SelectIdDocumentUseCase _selectIdDocumentUseCase;

  SelectIdentificationPageVM({
    required SelectIdDocumentUseCase selectIdDocumentUseCase,
  }) : _selectIdDocumentUseCase = selectIdDocumentUseCase;

  TaskEither<Failure, void> saveIdDocument(IdDocument document) {
    return TaskEither.tryCatch(
      () => _selectIdDocumentUseCase.call(document),
      (ex, _) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
