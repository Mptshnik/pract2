import 'package:pract2/domain/entity/order_entity.dart';

class Order extends OrderEntity {
  Order(
      {super.id,
      required super.number,
      required super.description,
      required super.idCustomer});

  Map<String, dynamic> toMap() {
    return {
      'number': number,
      'description': description,
      'idCustomer': idCustomer
    };
  }

  factory Order.toFromMap(Map<String, dynamic> json) {
    return Order(
        id: json['id'] as int,
        number: json['number'],
        idCustomer: json['idCustomer'] as int,
        description: json['description']);
  }
}
