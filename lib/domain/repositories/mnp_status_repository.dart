import 'package:digital_onboarding/domain/entities/check_mnp_info.dart';

abstract class MnpStatusRepository {
  Future<void> checkMnpStatus(CheckMnpInfo info);
  Future<void> resubmitMnp(String transactionId);
}
