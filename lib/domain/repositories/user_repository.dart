import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';

abstract class UserRepository {
  Future<void> savePackageTagInfo(String packageTag);
  Future<RegistrationType> getRegistrationType();
  Future<void> selectIdDocument(IdDocument document);
  Future<IdDocument> getIdDocument();
  Future<void> updateAddressInfo(AddressInfo address);
  Future<UserInfo> getUserInfo();
}
