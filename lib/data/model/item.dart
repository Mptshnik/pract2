import 'package:pract2/domain/entity/item_entity.dart';

class Item extends ItemEntity {
  Item(
      {super.id,
      required super.name,
      required super.price,
      required super.description,
      required super.producerName,
      required super.count,
      required super.idItemCategory});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'producerName': producerName,
      'count': count,
      'idItemCategory': idItemCategory
    };
  }

  factory Item.toFromMap(Map<String, dynamic> json) {
    return Item(
        id: json['id'] as int,
        name: json['name'],
        price: json['price'],
        description: json['description'],
        producerName: json['producerName'],
        count: json['count'],
        idItemCategory: json['idItemCategory'] as int);
  }
}
