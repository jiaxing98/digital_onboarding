import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_raw_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';

abstract class UserRepository {
  Future<void> selectRegistrationType(RegistrationType registrationType);
  Future<RegistrationType> getRegistrationType();
  Future<void> selectIdDocument(IdDocument document);
  Future<IdDocument> getIdDocument();
  Future<EkycInfo> processedAndSaveEkycInfo(EkycRawInfo rawInfo);
  Future<void> updateAddressInfo(AddressInfo address);
}
