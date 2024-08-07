import 'package:digital_onboarding/domain/entities/country_state.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';

abstract class AppDataDataSource {
  Future<List<IdDocument>> getIdDocuments();
  Future<Map<String, CountryState>> getStateMap();
  Future<List<CountryState>> getCountryStates();
  Future<Map<String, String>> getCountryMap();
  Future<List<ServiceProvider>> getServiceProviders();
}

class AppDataDataSourceImpl extends AppDataDataSource {
  @override
  Future<Map<String, String>> getCountryMap() async {
    await Future.delayed(const Duration(seconds: 1));
    return {
      'MYS': 'Malaysia',
      'BRN': 'Bangladesh',
      'BRU': 'Brunei',
      'KHM': 'Cambodia',
      'CHN': 'China',
      'IND': 'India',
      'IDN': 'Indonesia',
      'JPN': 'Japan',
      'MMR': 'Myanmar',
      'PAK': 'Pakistan',
      'SGP': 'Singapore',
      'THA': 'Thailand',
      'VNM': 'Vietnam',
      'OTHERS': 'Others',
    };
  }

  @override
  Future<List<CountryState>> getCountryStates() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      CountryState(
        code: 'JOHOR',
        name: 'JOHOR',
        keywords: ['JOHOR'],
      ),
      CountryState(
        code: 'KEDAH',
        name: 'KEDAH',
        keywords: ['KEDAH'],
      ),
      CountryState(
        code: 'KELANTAN',
        name: 'KELANTAN',
        keywords: ['KELANTAN'],
      ),
      CountryState(
        code: 'MELAKA',
        name: 'MELAKA',
        keywords: ['MELAKA'],
      ),
      CountryState(
        code: 'NEGERI_SEMBILAN',
        name: 'NEGERI SEMBILAN',
        keywords: ['NEGERI SEMBILAN'],
      ),
      CountryState(
        code: 'PAHANG',
        name: 'PAHANG',
        keywords: ['PAHANG'],
      ),
      CountryState(
        code: 'PULAU_PINANG',
        name: 'PULAU PINANG',
        keywords: ['PULAU PINANG'],
      ),
      CountryState(
        code: 'SABAH',
        name: 'SABAH',
        keywords: ['SABAH'],
      ),
      CountryState(
        code: 'SARAWAK',
        name: 'SARAWAK',
        keywords: ['SARAWAK'],
      ),
      CountryState(
        code: 'SELANGOR',
        name: 'SELANGOR',
        keywords: ['SELANGOR'],
      ),
      CountryState(
        code: 'TERENGGANU',
        name: 'TERENGGANU',
        keywords: ['TERENGGANU'],
      ),
      CountryState(
        code: 'WP_KUALA_LUMPUR',
        name: 'KUALA LUMPUR',
        keywords: ['KL', 'KUALA LUMPUR', 'W. PERSEKUTUAN(KL)'],
      ),
      CountryState(
        code: 'WP_LABUAN',
        name: 'LABUAN',
        keywords: ['LABUAN'],
      ),
      CountryState(
        code: 'WP_PUTRAJAYA',
        name: 'PUTRAJAYA',
        keywords: ['PUTRAJAYA'],
      ),
    ];
  }

  @override
  Future<List<IdDocument>> getIdDocuments() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      IdDocument(
        code: "MY_KAD",
        name: "MyKad",
        type: DocumentType.myKad,
      ),
      IdDocument(
        code: "MY_TENTERA",
        name: "MyTentera",
        type: DocumentType.myTentera,
      ),
      IdDocument(
        code: "PASSPORT",
        name: "PASSPORT",
        type: DocumentType.passport,
      ),
    ];
  }

  @override
  Future<List<ServiceProvider>> getServiceProviders() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      ServiceProvider(
        code: 'CELCOM',
        name: 'CELCOM',
        plans: [
          Plan(id: "CELCOM_POSTPAID", name: "POSTPAID", type: PlanType.postpaid),
          Plan(id: "CELCOM_PREPAID", name: "PREPAID", type: PlanType.prepaid),
        ],
      ),
      ServiceProvider(
        code: 'MAXIS',
        name: 'MAXIS',
        plans: [
          Plan(id: "MAXIS_POSTPAID", name: "POSTPAID", type: PlanType.postpaid),
          Plan(id: "MAXIS_PREPAID", name: "PREPAID", type: PlanType.prepaid),
        ],
      ),
      ServiceProvider(
        code: 'DIGI',
        name: 'DIGI',
        plans: [
          Plan(id: "DIGI_POSTPAID", name: "POSTPAID", type: PlanType.postpaid),
          Plan(id: "DIGI_PREPAID", name: "PREPAID", type: PlanType.prepaid),
        ],
      ),
      ServiceProvider(
        code: 'UMOBILE',
        name: 'UMOBILE',
        plans: [
          Plan(id: "UMOBILE_POSTPAID", name: "POSTPAID", type: PlanType.postpaid),
          Plan(id: "UMOBILE_PREPAID", name: "PREPAID", type: PlanType.prepaid),
        ],
      ),
      ServiceProvider(
        code: 'UNIFI',
        name: 'UNIFI',
        plans: [
          Plan(id: "UNIFI_POSTPAID", name: "POSTPAID", type: PlanType.postpaid),
          Plan(id: "UNIFI_PREPAID", name: "PREPAID", type: PlanType.prepaid),
        ],
      ),
      ServiceProvider(
        code: 'YES',
        name: 'YES',
        plans: [
          Plan(id: "YES_POSTPAID", name: "POSTPAID", type: PlanType.postpaid),
          Plan(id: "YES_PREPAID", name: "PREPAID", type: PlanType.prepaid),
        ],
      ),
    ];
  }

  @override
  Future<Map<String, CountryState>> getStateMap() async {
    await Future.delayed(const Duration(seconds: 1));
    return {
      'JOHOR': CountryState(
        code: 'JOHOR',
        name: 'JOHOR',
        keywords: ['JOHOR'],
      ),
      'KEDAH': CountryState(
        code: 'KEDAH',
        name: 'KEDAH',
        keywords: ['KEDAH'],
      ),
      'KELANTAN': CountryState(
        code: 'KELANTAN',
        name: 'KELANTAN',
        keywords: ['KELANTAN'],
      ),
      'MELAKA': CountryState(
        code: 'MELAKA',
        name: 'MELAKA',
        keywords: ['MELAKA'],
      ),
      'NEGERI_SEMBILAN': CountryState(
        code: 'NEGERI_SEMBILAN',
        name: 'NEGERI SEMBILAN',
        keywords: ['NEGERI SEMBILAN'],
      ),
      'PAHANG': CountryState(
        code: 'PAHANG',
        name: 'PAHANG',
        keywords: ['PAHANG'],
      ),
      'PERAK': CountryState(
        code: 'PERAK',
        name: 'PERAK',
        keywords: ['PERAK'],
      ),
      'PULAU_PINANG': CountryState(
        code: 'PULAU_PINANG',
        name: 'PULAU PINANG',
        keywords: ['PULAU PINANG'],
      ),
      'SABAH': CountryState(
        code: 'SABAH',
        name: 'SABAH',
        keywords: ['SABAH'],
      ),
      'SARAWAK': CountryState(
        code: 'SARAWAK',
        name: 'SARAWAK',
        keywords: ['SARAWAK'],
      ),
      'SELANGOR': CountryState(
        code: 'SELANGOR',
        name: 'SELANGOR',
        keywords: ['SELANGOR'],
      ),
      'TERENGGANU': CountryState(
        code: 'TERENGGANU',
        name: 'TERENGGANU',
        keywords: ['TERENGGANU'],
      ),
      'WP_KUALA_LUMPUR': CountryState(
        code: 'WP_KUALA_LUMPUR',
        name: 'KUALA LUMPUR',
        keywords: ['KL', 'KUALA LUMPUR', 'W. PERSEKUTUAN(KL)'],
      ),
      'WP_LABUAN': CountryState(
        code: 'WP_LABUAN',
        name: 'LABUAN',
        keywords: ['LABUAN'],
      ),
      'WP_PUTRAJAYA': CountryState(
        code: 'WP_PUTRAJAYA',
        name: 'PUTRAJAYA',
        keywords: ['PUTRAJAYA'],
      ),
    };
  }
}
