import 'package:equatable/equatable.dart';

class ServiceProvider {
  final String code;
  final String name;
  final List<Plan> plans;

  ServiceProvider({
    required this.code,
    required this.name,
    required this.plans,
  });
}

enum PlanType { postpaid, prepaid }

class Plan extends Equatable {
  final String id;
  final String name;
  final PlanType type;

  const Plan({
    required this.id,
    required this.name,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        type,
      ];
}
