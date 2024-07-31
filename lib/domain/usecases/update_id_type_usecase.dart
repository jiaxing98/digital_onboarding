import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class UpdateIdDocumentUseCase {
  final RegisterRepository _repository;

  UpdateIdDocumentUseCase(this._repository);

  Future<bool> call(IdDocument document) async {
    return await _repository.updateIdDocumentTransaction(document);
  }
}
