class Failure {
  final String title;
  final String message;

  Failure({
    required this.title,
    required this.message,
  });

  factory Failure.unknown() {
    return Failure(
      title: "Whoops!",
      message: "Something went wrong",
    );
  }
}
