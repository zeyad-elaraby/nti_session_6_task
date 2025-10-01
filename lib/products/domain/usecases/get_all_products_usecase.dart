import 'package:dartz/dartz.dart';
import 'package:nti_session_6_task/core/base_usecase/base_usecase.dart';
import 'package:nti_session_6_task/core/error/failure.dart';
import 'package:nti_session_6_task/products/domain/entities/product_entity.dart';
import 'package:nti_session_6_task/products/domain/repository/base_products_repository.dart';

class GetAllProductsUsecase
    extends BaseUsecase<List<ProductEntity>, NoParameters> {
  BaseProductsRepository baseProductsRepository;
  GetAllProductsUsecase(this.baseProductsRepository);

  @override
  Future<Either<Failure, List<ProductEntity>>> call(
    NoParameters parameters,
  ) async {
    return await baseProductsRepository.getAllProducts();
  }
}
