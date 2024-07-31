enum DocumentType { myKad, passport, myTentera, myPR, myKAS }

class IdDocument {
  final String code;
  final String name;
  final DocumentType type;

  IdDocument({
    required this.code,
    required this.name,
    required this.type,
  });
}
