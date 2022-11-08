class RoleEnity {
  late int id;
  late final String name;

  RoleEnity({required this.name});
}

/*
enum RoleEnum
{
  admin,
  user  
}*/

enum RoleEnum {
  admin(id: 1, name: "Администратор"),
  user(id: 2, name: "Пользователь");

  const RoleEnum({
    required this.id,
    required this.name,
  });

  final String name;
  final int id;
}
