import 'package:pract2/domain/entity/customer_entity.dart';

class Customer extends CustomerEntity {
  Customer(
      {super.id,
      required super.idUser,
      required super.lastName,
      required super.firstName,
      required super.phoneNumber,
      required super.email});

  Map<String, dynamic> toMap() {
    return {
      'lastName': lastName,
      'firstName': firstName,
      'phoneNumber': phoneNumber,
      'email': email,
      'idUser': idUser
    };
  }

  factory Customer.toFromMap(Map<String, dynamic> json) {
    return Customer(
        id: json['id'] as int,
        lastName: json['login'],
        firstName: json['firstName'],
        phoneNumber: json['phoneNumber'],
        email: json['email'],
        idUser: json['idUser'] as int);
  }
}
