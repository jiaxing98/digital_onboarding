import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/repositories/app_data_repository.dart';

class GetIdDocumentsUseCase {
  final AppDataRepository _repository;

  GetIdDocumentsUseCase(this._repository);

  Future<List<IdDocument>> call() async {
    return await _repository.getIdDocuments();
  }
}
