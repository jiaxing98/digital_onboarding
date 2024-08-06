import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';
import 'package:digital_onboarding/core/exceptions/activation_exception.dart';
import 'package:digital_onboarding/core/exceptions/app_exception.dart';
import 'package:uuid/uuid.dart';

abstract class UserDataSource {
  Future<IdDocument> getIdDocument();
  Future<void> saveIdDocument(IdDocument document);
  Future<void> saveRegistrationType(RegistrationType registrationType);
  Future<RegistrationType> getRegistrationType();
  Future<void> saveEkycInfo(EkycInfo ekycInfo);
  Future<void> updateAddressInfo(AddressInfo addressInfo);
  Future<UserInfo> getUserInfo();
}

class UserDataSourceImpl extends UserDataSource {
  UserInfo? userInfo;

  @override
  Future<IdDocument> getIdDocument() async {
    if (userInfo == null || userInfo!.idDocument == null) throw const InvalidAppStateException();
    return userInfo!.idDocument!;
  }

  @override
  Future<RegistrationType> getRegistrationType() async {
    if (userInfo == null || userInfo!.idDocument == null) throw const InvalidAppStateException();
    return userInfo!.registrationType;
  }

  @override
  Future<UserInfo> getUserInfo() async {
    if (userInfo == null) throw const InvalidAppStateException();

    if (userInfo!.registrationType == RegistrationType.portIn &&
        userInfo!.idDocument!.type == DocumentType.passport) {
      throw const OutstandingBillException(
          "Please pay the outstanding bill before the activation.");
    }

    if (userInfo!.registrationType == RegistrationType.newRegistration &&
        userInfo!.idDocument!.type == DocumentType.myTentera) {
      throw const SimExceedException("SIM activation cannot more than 5.");
    }

    return userInfo!;
  }

  @override
  Future<void> saveEkycInfo(EkycInfo ekycInfo) async {
    await Future.delayed(const Duration(seconds: 1));
    if (userInfo == null) throw const InvalidAppStateException();
    userInfo = userInfo!.copyWith(ekycInfo: ekycInfo);
  }

  @override
  Future<void> saveIdDocument(IdDocument document) async {
    await Future.delayed(const Duration(seconds: 1));
    if (userInfo == null) throw const InvalidAppStateException();
    userInfo = userInfo!.copyWith(idDocument: document);
  }

  @override
  Future<void> saveRegistrationType(RegistrationType registrationType) async {
    userInfo = UserInfo.initialize(
      transactionId: const Uuid().v1(),
      registrationType: registrationType,
    );
  }

  @override
  Future<void> updateAddressInfo(AddressInfo addressInfo) async {
    await Future.delayed(const Duration(seconds: 1));
    if (userInfo == null) throw const InvalidAppStateException();
    if (userInfo!.ekycInfo == null) throw const MissingEkycInfoException();

    final newInfo = userInfo!.ekycInfo!.copyWith(addressInfo);
    userInfo = userInfo!.copyWith(ekycInfo: newInfo);
  }
}
