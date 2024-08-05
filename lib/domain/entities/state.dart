import 'package:equatable/equatable.dart';

class CountryState extends Equatable {
  final String code;
  final String name;
  final List<String> keywords;

  const CountryState({
    required this.code,
    required this.name,
    required this.keywords,
  });

  @override
  List<Object?> get props => [
        code,
        name,
        keywords,
      ];
}
