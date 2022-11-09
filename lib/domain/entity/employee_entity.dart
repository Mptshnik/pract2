import 'package:pract2/data/model/gender.dart';
import 'package:pract2/domain/entity/gender_entity.dart';

class EmployeeEntity {
  late int id;
  final String lastName;
  final String firstName;
  final String middleName;
  final String passportNumber;
  final int age;
  final GenderEnum idGender;
  final int idUser;

  EmployeeEntity(
      {this.id = 0,
      required this.lastName,
      required this.firstName,
      required this.middleName,
      required this.passportNumber,
      required this.age,
      required this.idGender,
      required this.idUser});
}
