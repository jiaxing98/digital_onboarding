import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/usecases/update_id_type_usecase.dart';
import 'package:flutter/cupertino.dart';

class SelectIdentificationPageVM extends ChangeNotifier {
  final UpdateIdDocumentUseCase _updateIdTypeUseCase;

  SelectIdentificationPageVM({
    required UpdateIdDocumentUseCase updateIdTypeUseCase,
  }) : _updateIdTypeUseCase = updateIdTypeUseCase;

  Future<void> saveIdDocument(IdDocument document) async {
    await _updateIdTypeUseCase(document);
  }
}
