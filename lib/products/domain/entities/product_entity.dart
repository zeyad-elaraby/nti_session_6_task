import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String id;
  final String status;
  final String category;
  final String name;
  final num price;
  final String description;
  final String image;
  final List<String> images;
  final String company;
  final int countInStock;
  final int sales;
  const ProductEntity({
    required this.id,
    required this.status,
    required this.category,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.images,
    required this.company,
    required this.countInStock,
    required this.sales,
  });

  @override
  List<Object?> get props => [
    id,
    status,
    category,
    name,
    price,
    description,
    image,
    images,
    company,
    countInStock,
    sales,
  ];
}
