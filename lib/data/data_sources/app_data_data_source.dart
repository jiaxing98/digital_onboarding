import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/entities/service_provider.dart';
import 'package:digital_onboarding/domain/entities/state.dart';

abstract class AppDataDataSource {
  Future<List<IdDocument>> getIdDocuments();
  Future<Map<String, CountryState>> getStateMap();
  Future<List<CountryState>> getCountryStates();
  Future<Map<String, String>> getCountryMap();
  Future<Map<String, ServiceProvider>> getServiceProviderMap();
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
  Future<Map<String, ServiceProvider>> getServiceProviderMap() async {
    await Future.delayed(const Duration(seconds: 1));
    return {
      'CELCOM': ServiceProvider(
        code: 'CELCOM',
        plans: [
          Plan(id: "CELCOM_POSTPAID", type: PlanType.postpaid),
          Plan(id: "CELCOM_PREPAID", type: PlanType.prepaid),
        ],
      ),
      'MAXIS': ServiceProvider(
        code: 'MAXIS',
        plans: [
          Plan(id: "MAXIS_POSTPAID", type: PlanType.postpaid),
          Plan(id: "MAXIS_PREPAID", type: PlanType.prepaid),
        ],
      ),
      'DIGI': ServiceProvider(
        code: 'DIGI',
        plans: [
          Plan(id: "DIGI_POSTPAID", type: PlanType.postpaid),
          Plan(id: "DIGI_PREPAID", type: PlanType.prepaid),
        ],
      ),
      'UMOBILE': ServiceProvider(
        code: 'UMOBILE',
        plans: [
          Plan(id: "UMOBILE_POSTPAID", type: PlanType.postpaid),
          Plan(id: "UMOBILE_PREPAID", type: PlanType.prepaid),
        ],
      ),
      'UNIFI': ServiceProvider(
        code: 'UNIFI',
        plans: [
          Plan(id: "UNIFI_POSTPAID", type: PlanType.postpaid),
          Plan(id: "UNIFI_PREPAID", type: PlanType.prepaid),
        ],
      ),
      'YES': ServiceProvider(
        code: 'YES',
        plans: [
          Plan(id: "YES_POSTPAID", type: PlanType.postpaid),
          Plan(id: "YES_PREPAID", type: PlanType.prepaid),
        ],
      ),
    };
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
