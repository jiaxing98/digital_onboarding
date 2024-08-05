import 'package:digital_onboarding/domain/entities/address_info.dart';
import 'package:equatable/equatable.dart';

enum Gender { male, female, none }

class EkycInfo extends Equatable {
  final String name;
  final String identificationNo;
  final Gender gender;
  final DateTime? birthDate;
  final AddressInfo? addressInfo;

  const EkycInfo({
    required this.name,
    required this.identificationNo,
    required this.gender,
    required this.birthDate,
    required this.addressInfo,
  });

  @override
  List<Object?> get props => [
        name,
        identificationNo,
        gender,
        birthDate,
        addressInfo,
      ];

  EkycInfo copyWith(AddressInfo? addressInfo) {
    return EkycInfo(
      name: name,
      identificationNo: identificationNo,
      gender: gender,
      birthDate: birthDate,
      addressInfo: addressInfo,
    );
  }
}
