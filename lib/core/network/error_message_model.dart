import 'package:equatable/equatable.dart';
import 'package:nti_session_6_task/products/data/models/product_model.dart';
import 'package:nti_session_6_task/products/domain/entities/product_entity.dart';

class ErrorMessageModel extends Equatable {
  String status;
  String message;
  List<ProductModel> product;
  ErrorMessageModel({
    required this.status,
    required this.message,
    required this.product,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      status: json['status'],
      message: json['message'],
      product: List<ProductModel>.from(
        (json['product'] as List).map(
          (product) => ProductModel.fromJson(product),
        ),
      ),
    );
  }
  @override
  List<Object?> get props => [status, message, product];
}
