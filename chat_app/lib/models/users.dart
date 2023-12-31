class UserModels {
  final String uid;
  final String name;
  final String email;
  final String image;
  final DateTime lastActive;
  final bool isOnlne;

  UserModels(
      {required this.uid,
      required this.name,
      required this.email,
      required this.image,
      required this.lastActive,
      required this.isOnlne});
}
