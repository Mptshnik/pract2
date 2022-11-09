class OrderItemEntity {
  late int id;
  final int itemsCount;
  final int idOrder;
  final int idItem;

  OrderItemEntity(
      {this.id = 0,
      required this.itemsCount,
      required this.idOrder,
      required this.idItem});
}
