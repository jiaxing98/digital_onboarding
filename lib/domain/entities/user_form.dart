import 'package:digital_onboarding/domain/entities/address_info.dart';

class UserForm {
  final String name;
  final String id;
  final String gender;
  final String dob;
  final AddressInfo address;

  UserForm({
    required this.name,
    required this.id,
    required this.gender,
    required this.dob,
    required this.address,
  });
}
