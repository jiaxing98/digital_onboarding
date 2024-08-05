abstract class RegisterDataSource {
  Future<void> submitNewActivation();
  Future<void> submitPortInActivation();
}

class RegisterDataSourceImpl extends RegisterDataSource {
  @override
  Future<void> submitNewActivation() async {
    Future.delayed(const Duration(seconds: 2));
    return;
  }

  @override
  Future<void> submitPortInActivation() async {
    Future.delayed(const Duration(seconds: 2));
    return;
  }
}
