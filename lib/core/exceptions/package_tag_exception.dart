abstract class PackageTagException implements Exception {
  final String? message;

  PackageTagException(this.message);
}

class PackageExpiredException extends PackageTagException {
  PackageExpiredException([super.message]);
}

class PackageRegisteredException extends PackageTagException {
  PackageRegisteredException([super.message]);
}
