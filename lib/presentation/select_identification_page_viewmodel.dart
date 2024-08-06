import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/usecases/get_id_documents_usecase.dart';
import 'package:digital_onboarding/domain/usecases/select_id_document_usecase.dart';
import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:fpdart/fpdart.dart';

class SelectIdentificationPageVM {
  final GetIdDocumentsUseCase _getIdDocumentsUseCase;
  final SelectIdDocumentUseCase _selectIdDocumentUseCase;

  SelectIdentificationPageVM({
    required GetIdDocumentsUseCase getIdDocumentsUseCase,
    required SelectIdDocumentUseCase selectIdDocumentUseCase,
  })  : _getIdDocumentsUseCase = getIdDocumentsUseCase,
        _selectIdDocumentUseCase = selectIdDocumentUseCase;

  Future<List<IdDocument>> getIdDocuments() async {
    return await _getIdDocumentsUseCase();
  }

  TaskEither<Failure, void> saveIdDocument(IdDocument document) {
    return TaskEither.tryCatch(
      () => _selectIdDocumentUseCase.call(document),
      (ex, _) => switch (ex) {
        _ => Failure.unknown(),
      },
    );
  }
}
