import 'package:nti_session_6_task/products/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.id,
    required super.status,
    required super.category,
    required super.name,
    required super.price,
    required super.description,
    required super.image,
    required super.images,
    required super.company,
    required super.countInStock,
    required super.sales,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['_id'] as String,
      status: json['status'] as String,
      category: json['category'] as String,
      name: json['name'] as String,
      price: json['price'] as num,
      description: json['description'] as String,
      image: json['image'] as String,
      images: List<String>.from(json['images'] as List),
      company: json['company'] as String,
      countInStock: json['countInStock'] as int,
      sales: json['sales'] as int? ?? 0,
    );
  }
}
