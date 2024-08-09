import 'package:digital_onboarding/data/data_sources/user_data_source.dart';
import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource _userDS;

  UserRepositoryImpl(this._userDS);

  @override
  Future<IdDocument> getIdDocument() async {
    return await _userDS.getIdDocument();
  }

  @override
  Future<RegistrationType> getRegistrationType() async {
    return await _userDS.getRegistrationType();
  }

  @override
  Future<void> savePackageTagInfo(String packageTag) async {
    await _userDS.savePackageTagInfo(packageTag);
  }

  @override
  Future<void> selectIdDocument(IdDocument document) async {
    await _userDS.saveIdDocument(document);
  }

  @override
  Future<void> updateAddressInfo(AddressInfo address) async {
    await _userDS.updateAddressInfo(address);
  }

  @override
  Future<UserInfo> getUserInfo() async {
    return await _userDS.getUserInfo();
  }
}
