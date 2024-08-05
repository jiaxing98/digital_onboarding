import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class SelectIdDocumentUseCase {
  final UserRepository _repository;

  SelectIdDocumentUseCase(this._repository);

  Future<void> call(IdDocument document) async {
    await _repository.selectIdDocument(document);
  }
}
