class ServiceProvider {
  final String code;
  final List<Plan> plans;

  ServiceProvider({
    required this.code,
    required this.plans,
  });
}

enum PlanType { postpaid, prepaid }

class Plan {
  final String id;
  final PlanType type;

  Plan({
    required this.id,
    required this.type,
  });
}
