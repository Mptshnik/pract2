import 'package:pract2/domain/entity/item_category_entity.dart';

class ItemCategory extends ItemCategoryEntity {
  ItemCategory({super.id, required super.name});

  Map<String, dynamic> toMap() {
    return {'name': name};
  }

  factory ItemCategory.toFromMap(Map<String, dynamic> json) {
    return ItemCategory(id: json['id'] as int, name: json['name']);
  }
}
