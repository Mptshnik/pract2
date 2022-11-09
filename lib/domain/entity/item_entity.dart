class ItemEntity {
  late int id;
  final String name;
  final double price;
  final String description;
  final String producerName;
  final int count;
  final int idItemCategory;

  ItemEntity(
      {this.id = 0,
      required this.name,
      required this.price,
      required this.description,
      required this.producerName,
      required this.count,
      required this.idItemCategory});
}
