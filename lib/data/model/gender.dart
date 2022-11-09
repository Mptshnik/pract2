import 'package:pract2/domain/entity/gender_entity.dart';

class Gender extends GenderEntity {
  Gender({super.id, required super.name});
  Map<String, dynamic> toMap() {
    return {'login': name};
  }

  factory Gender.toFromMap(Map<String, dynamic> json) {
    return Gender(
      id: json['id'] as int,
      name: json['name']
    );
  }
}
