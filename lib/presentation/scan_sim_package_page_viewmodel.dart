import 'package:digital_onboarding/core/exceptions/failure.dart';
import 'package:digital_onboarding/core/exceptions/package_tag_exception.dart';
import 'package:digital_onboarding/domain/usecases/scan_sim_package_usecase.dart';
import 'package:fpdart/fpdart.dart';

class ScanSimPackagePageVM {
  final ScanSimPackageUseCase _scanSimPackageUseCase;

  ScanSimPackagePageVM({
    required ScanSimPackageUseCase scanSimPackageUseCase,
  }) : _scanSimPackageUseCase = scanSimPackageUseCase;

  TaskEither<Failure, String> scanSimPackage(String qrCode) {
    return TaskEither.tryCatch(
      () => _scanSimPackageUseCase.call(qrCode),
      (ex, __) => switch (ex) {
        PackageExpiredException() => Failure(
            title: "Invalid SIM Pack",
            message: ex.message ?? "SIM package has expired.",
          ),
        PackageRegisteredException() => Failure(
            title: "Invalid SIM Pack",
            message: ex.message ?? "SIM package has been registered.",
          ),
        _ => Failure.unknown(),
      },
    );
  }
}
