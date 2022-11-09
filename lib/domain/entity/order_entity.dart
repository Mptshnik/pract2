import 'package:pract2/data/model/customer.dart';

class OrderEntity {
  late int id;
  final String number;
  final String description;
  final int idCustomer;

  OrderEntity(
      {this.id = 0,
      required this.number,
      required this.description,
      required this.idCustomer});
}
