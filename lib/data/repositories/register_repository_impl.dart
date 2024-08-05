import 'package:digital_onboarding/data/data_sources/register_data_source.dart';
import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/port_in_details.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';
import 'package:digital_onboarding/utils/ekyc_service.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final RegisterDataSource _registerDS;
  final UserRepository _userRepository;
  final EkycService _service;

  RegisterRepositoryImpl(
    this._registerDS,
    this._userRepository,
    this._service,
  );

  @override
  Future<EkycInfo> performEkyc() async {
    final document = await _userRepository.getIdDocument();
    final ekycInfo = await switch (document.type) {
      DocumentType.myKad => _service.performMyKadEkyc(),
      DocumentType.myTentera => _service.performMyTenteraEkyc(),
      DocumentType.passport => _service.performPassportEkyc(),
    };

    return await _userRepository.processedAndSaveEkycInfo(ekycInfo);
  }

  @override
  Future<void> submitNewActivation(AddressInfo addressInfo) async {
    _userRepository.updateAddressInfo(addressInfo);
    await _registerDS.submitNewActivation();
  }

  @override
  Future<void> submitPortInActivation(PortInDetails details) {
    // TODO: implement submitPortInActivation
    throw UnimplementedError();
  }
}
