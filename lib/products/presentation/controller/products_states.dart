import 'package:nti_session_6_task/products/domain/entities/product_entity.dart';

abstract class ProductsStates {}

class ProductsInitialState extends ProductsStates {}

class ProductsLoadingState extends ProductsStates {}

class ProductsSuccessState extends ProductsStates {
  final List<ProductEntity> products;
  ProductsSuccessState(this.products);
}

class ProductsErrorState extends ProductsStates {
  final String errorMessage;
  ProductsErrorState(this.errorMessage);
}
