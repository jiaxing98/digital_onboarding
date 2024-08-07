import 'package:digital_onboarding/domain/entities/country_state.dart';

class AddressInfo {
  final String street1;
  final String street2;
  final String postcode;
  final String city;
  final CountryState? state;

  AddressInfo({
    required this.street1,
    required this.street2,
    required this.postcode,
    required this.city,
    required this.state,
  });
}
