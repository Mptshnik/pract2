import 'package:pract2/data/model/gender.dart';
import 'package:pract2/domain/entity/employee_entity.dart';
import 'package:pract2/domain/entity/gender_entity.dart';

class Employee extends EmployeeEntity {
  Employee(
      {super.id,
      required super.lastName,
      required super.firstName,
      required super.middleName,
      required super.passportNumber,
      required super.age,
      required super.idGender,
      required super.idUser});

  Map<String, dynamic> toMap() {
    return {
      'lastName': lastName,
      'firstName': firstName,
      'middleName': middleName,
      'passportNumber': passportNumber,
      'age': age,
      'idGender': idGender
    };
  }

  factory Employee.toFromMap(Map<String, dynamic> json) {
    return Employee(
        id: json['id'] as int,
        lastName: json['lastName'],
        firstName: json['firstName'],
        middleName: json['middleName'],
        passportNumber: json['passportNumber'],
        age: json['age'],
        idUser: json['idUser'],
        idGender: GenderEnum.values.firstWhere((element) => element.id == (json['idGender'] as int))
    );
  }
}
