import 'package:pract2/domain/entity/order_item_entity.dart';

class OrderItem extends OrderItemEntity {
  OrderItem(
      {super.id,
      required super.itemsCount,
      required super.idOrder,
      required super.idItem});

  Map<String, dynamic> toMap() {
    return {'itemsCount': itemsCount, 'idOrder': idOrder, 'idItem': idItem};
  }

  factory OrderItem.toFromMap(Map<String, dynamic> json) {
    return OrderItem(
        id: json['id'] as int,
        itemsCount: json['itemsCount'],
        idItem: json['idItem'] as int,
        idOrder: json['idOrder'] as int);
  }
}
