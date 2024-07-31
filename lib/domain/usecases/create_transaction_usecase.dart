import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class CreateTransactionUseCase {
  final RegisterRepository _repository;

  CreateTransactionUseCase(this._repository);

  Future<bool> call({required String agentId}) async {
    return await _repository.createTransaction(agentId);
  }
}
