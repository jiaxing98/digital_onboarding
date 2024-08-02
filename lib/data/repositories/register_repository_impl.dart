import 'package:digital_onboarding/data/data_sources/user_data_source.dart';
import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/port_in_details.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final UserDataSource _dataSource;

  RegisterRepositoryImpl(this._dataSource);

  @override
  Future<void> confirmDetail(AddressInfo address) {
    // TODO: implement confirmDetail
    throw UnimplementedError();
  }

  @override
  Future<void> startRegistrationTransaction(RegistrationType registrationType) async {
    await Future.delayed(Duration(seconds: 1));
    await _dataSource.saveRegistrationType(registrationType);
  }

  @override
  Future<void> submitNewActivation(AddressInfo address) {
    // TODO: implement submitNewActivation
    throw UnimplementedError();
  }

  @override
  Future<void> submitPortInActivation(PortInDetails details) {
    // TODO: implement submitPortInActivation
    throw UnimplementedError();
  }

  @override
  Future<void> updateEkycResultTransaction() {
    // TODO: implement updateEkycResultTransaction
    throw UnimplementedError();
  }

  @override
  Future<bool> updateIdDocumentTransaction(IdDocument document) async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }
}
