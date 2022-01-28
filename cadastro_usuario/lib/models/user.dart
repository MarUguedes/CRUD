class User {
  final String? id;
  final String name;
  final String number;
  final String email;
  final String urlAvatar;

  const User({
    this.id,
    required this.name,
    required this.number,
    required this.email,
    required this.urlAvatar,
  });
}
