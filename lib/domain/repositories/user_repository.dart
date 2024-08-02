import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/sim_package.dart';
import 'package:digital_onboarding/domain/entities/user_form.dart';
import 'package:digital_onboarding/domain/entities/user_info.dart';

abstract class UserRepository {
  Future<RegistrationType> getRegistrationType();
  Future<void> saveSimPackageInfo(SimPackage simPackage);
  Future<String> getCallerId();
  Future<IdDocument> geIdDocument();
  // Future<void> saveEkycResult(EkycResult result);
  Future<UserForm> getUserForm();
}
