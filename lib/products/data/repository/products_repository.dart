import 'package:dartz/dartz.dart';
import 'package:nti_session_6_task/core/error/exceptions.dart';
import 'package:nti_session_6_task/core/error/failure.dart';
import 'package:nti_session_6_task/products/data/datasource/products_datasource.dart';
import 'package:nti_session_6_task/products/data/models/product_model.dart';
import 'package:nti_session_6_task/products/domain/entities/product_entity.dart';
import 'package:nti_session_6_task/products/domain/repository/base_products_repository.dart';

class ProductsRepository implements BaseProductsRepository {
  BaseProductsRemoteDataSource baseRemoteDataSource;
  ProductsRepository(this.baseRemoteDataSource);

  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts() async {
    try {
      final result = await baseRemoteDataSource.getAllProducts();
      return right(result);
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.errorMessageModel.message));
    }
  }
}
