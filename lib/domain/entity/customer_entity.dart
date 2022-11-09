class CustomerEntity {
  late int id;
  final int idUser;
  final String lastName;
  final String firstName;
  final String phoneNumber;
  final String email;

  CustomerEntity(
      {this.id = 0,
      required this.idUser,
      required this.lastName,
      required this.firstName,
      required this.phoneNumber,
      required this.email});
}
