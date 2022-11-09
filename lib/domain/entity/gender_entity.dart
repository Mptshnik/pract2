class GenderEntity {
  late int id;
  final String name;

  GenderEntity({this.id = 0, required this.name});
}

enum GenderEnum
{
  male(id: 1, name:'Мужской'),
  female(id: 2, name:'Женский'),
  thirdgender(id: 3, name: 'Другое');

  const GenderEnum({
    required this.id,
    required this.name,
  });

  final String name;
  final int id;
}
