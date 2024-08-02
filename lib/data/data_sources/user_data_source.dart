import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/user_form.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:uuid/uuid.dart';

abstract class UserDataSource {
  Future<IdDocument> geIdDocument();
  Future<void> saveIdDocument(IdDocument document);
  Future<void> saveRegistrationType(RegistrationType registrationType);
  Future<RegistrationType> getRegistrationType();
  // Future<void> saveEkycResult(EkycResult result);
  Future<UserForm> getUserForm();
}

class UserDataSourceImpl extends UserDataSource {
  UserInfo? userInfo;

  @override
  Future<IdDocument> geIdDocument() {
    // TODO: implement geIdDocument
    throw UnimplementedError();
  }

  @override
  Future<RegistrationType> getRegistrationType() {
    // TODO: implement getRegistrationType
    throw UnimplementedError();
  }

  @override
  Future<UserForm> getUserForm() {
    // TODO: implement getUserForm
    throw UnimplementedError();
  }

  @override
  Future<void> saveIdDocument(IdDocument document) {
    // TODO: implement saveIdDocument
    throw UnimplementedError();
  }

  @override
  Future<void> saveRegistrationType(RegistrationType registrationType) async {
    userInfo = UserInfo.initialize(
      transactionId: const Uuid().v1(),
      registrationType: registrationType,
    );
    print(userInfo);
  }
}
