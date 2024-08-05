abstract class RegisterDataSource {
  Future<void> submitNewActivation();
  Future<void> submitPortInActivation();
}

class RegisterDataSourceImpl extends RegisterDataSource {
  @override
  Future<void> submitNewActivation() async {
    await Future.delayed(const Duration(seconds: 2));
    return;
  }

  @override
  Future<void> submitPortInActivation() async {
    await Future.delayed(const Duration(seconds: 2));
    return;
  }
}
