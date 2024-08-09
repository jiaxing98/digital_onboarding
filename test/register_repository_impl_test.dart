import 'package:digital_onboarding/data/data_sources/app_data_data_source.dart';
import 'package:digital_onboarding/data/data_sources/register_data_source.dart';
import 'package:digital_onboarding/data/data_sources/user_data_source.dart';
import 'package:digital_onboarding/data/repositories/register_repository_impl.dart';
import 'package:digital_onboarding/domain/entities/country_state.dart';
import 'package:digital_onboarding/domain/entities/ekyc_info.dart';
import 'package:digital_onboarding/domain/entities/ekyc_raw_info.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/domain/repositories/register_repository.dart';
import 'package:digital_onboarding/utils/ekyc_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

//region Mock
class MockAppDataDS extends Mock implements AppDataDataSource {}

class MockRegisterDS extends Mock implements RegisterDataSource {}

class MockUserDS extends Mock implements UserDataSource {}

class MockEkycService extends Mock implements EkycService {}
//endregion

//region Fake
class FakeEkycInfo extends Fake implements EkycInfo {}
//endregion

void main() {
  late AppDataDataSource mockAppDataDS;
  late RegisterDataSource mockRegisterDS;
  late UserDataSource mockUserDS;
  late EkycService mockEkycService;
  late RegisterRepository sut;

  setUp(() {
    mockAppDataDS = MockAppDataDS();
    mockRegisterDS = MockRegisterDS();
    mockUserDS = MockUserDS();
    mockEkycService = MockEkycService();
    sut = RegisterRepositoryImpl(
      mockAppDataDS,
      mockRegisterDS,
      mockUserDS,
      mockEkycService,
    );

    registerFallbackValue(FakeEkycInfo());
  });

  test("performMyKadEkyc_4LineAddress_Success", () async {
    // arrange
    final countryStates = [
      const CountryState(
        code: "Selangor",
        name: "SELANGOR",
        keywords: ["Selangor"],
      )
    ];
    final document = IdDocument(
      code: "code",
      name: "name",
      type: DocumentType.myKad,
    );
    final rawInfo = EkycRawInfo(
      name: "name",
      identificationNo: "identificationNo",
      gender: "m",
      birthDate: DateTime.now(),
      fullAddress: "123 Taman ABD\nJalan Gemilang\n52000 Bangsar\nSelangor",
    );

    when(() => mockAppDataDS.getCountryStates()).thenAnswer((_) async => countryStates);
    when(() => mockUserDS.getIdDocument()).thenAnswer((_) async => document);
    when(() => mockEkycService.performMyKadEkyc()).thenAnswer((_) async => rawInfo);
    when(() => mockUserDS.saveEkycInfo(any())).thenAnswer((_) async {});

    // act
    await sut.performEkyc();
    final capturedArgs = verify(
      () => mockUserDS.saveEkycInfo(captureAny()),
    ).captured.singleOrNull as EkycInfo;

    // assert
    expect(capturedArgs.gender, Gender.male);
    expect(capturedArgs.addressInfo?.street1, "123 Taman ABD");
    expect(capturedArgs.addressInfo?.street2, "Jalan Gemilang");
    expect(capturedArgs.addressInfo?.postcode, "52000");
    expect(capturedArgs.addressInfo?.city, "Bangsar");
    expect(capturedArgs.addressInfo?.state?.name, "SELANGOR");
  });

  test("performMyKadEkyc_4LineAddress_Success", () async {
    // arrange
    final countryStates = [
      const CountryState(
        code: "Selangor",
        name: "SELANGOR",
        keywords: ["Selangor"],
      )
    ];
    final document = IdDocument(
      code: "code",
      name: "name",
      type: DocumentType.myKad,
    );
    final rawInfo = EkycRawInfo(
      name: "name",
      identificationNo: "identificationNo",
      gender: "m",
      birthDate: DateTime.now(),
      fullAddress: "123 Taman ABD\nJalan Gemilang\n52000 Bangsar\nSelangor",
    );

    when(() => mockAppDataDS.getCountryStates()).thenAnswer((_) async => countryStates);
    when(() => mockUserDS.getIdDocument()).thenAnswer((_) async => document);
    when(() => mockEkycService.performMyKadEkyc()).thenAnswer((_) async => rawInfo);
    when(() => mockUserDS.saveEkycInfo(any())).thenAnswer((_) async {});

    // act
    await sut.performEkyc();
    final capturedArgs = verify(
      () => mockUserDS.saveEkycInfo(captureAny()),
    ).captured.singleOrNull as EkycInfo;

    // assert
    expect(capturedArgs.gender, Gender.male);
    expect(capturedArgs.addressInfo?.street1, "123 Taman ABD");
    expect(capturedArgs.addressInfo?.street2, "Jalan Gemilang");
    expect(capturedArgs.addressInfo?.postcode, "52000");
    expect(capturedArgs.addressInfo?.city, "Bangsar");
    expect(capturedArgs.addressInfo?.state?.name, "SELANGOR");
  });
}
