import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/sim_package.dart';
import 'package:digital_onboarding/domain/entities/user_form.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  @override
  Future<IdDocument> geIdDocument() {
    // TODO: implement geIdDocument
    throw UnimplementedError();
  }

  @override
  Future<String> getCallerId() {
    // TODO: implement getCallerId
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
  Future<void> saveSimPackageInfo(SimPackage simPackage) {
    // TODO: implement saveSimPackageInfo
    throw UnimplementedError();
  }
}
