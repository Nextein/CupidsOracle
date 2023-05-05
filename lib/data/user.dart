class User {
  final String id;
  final String name;
  final String imageUrl;
  final int age;
  final String bio;

  const User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.age,
    required this.bio,
  });

  static const List<User> users = [
    User(
      id: '0',
      name: 'Lluis',
      imageUrl: '/assets/images/blank_profile.png',
      age: 50,
      bio: "Lo no se repite, no existe.",
    ),
    User(
      id: '1',
      name: 'Pantoja',
      imageUrl: '/assets/images/blank_profile.png',
      age: 50,
      bio: "Lo que no existe,  no se repite.",
    ),
    User(
      id: '2',
      name: 'Marc',
      imageUrl: '/assets/images/blank_profile.png',
      age: 50,
      bio: "Lo que se repite, existe.",
    ),
    User(
      id: '3',
      name: 'Rocio',
      imageUrl: '/assets/images/blank_profile.png',
      age: 50,
      bio: "Lo que se repite, no existe.",
    ),
  ];
}
