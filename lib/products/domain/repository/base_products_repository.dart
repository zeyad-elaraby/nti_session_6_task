import 'package:dartz/dartz.dart';
import 'package:nti_session_6_task/core/error/failure.dart';
import 'package:nti_session_6_task/products/domain/entities/product_entity.dart';

abstract class BaseProductsRepository {
  Future<Either<Failure,List<ProductEntity>>>getAllProducts();
}