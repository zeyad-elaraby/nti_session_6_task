import 'package:get_it/get_it.dart';
import 'package:nti_session_6_task/products/data/datasource/products_datasource.dart';
import 'package:nti_session_6_task/products/data/repository/products_repository.dart';
import 'package:nti_session_6_task/products/domain/repository/base_products_repository.dart';
import 'package:nti_session_6_task/products/domain/usecases/get_all_products_usecase.dart';
import 'package:nti_session_6_task/products/presentation/controller/products_cubit.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    //cubits
    sl.registerFactory(() => ProductsCubit(sl()));

    //datasources
    sl.registerLazySingleton<BaseProductsRemoteDataSource>(
      () => ProductsRemoteDatasource(),
    );

    //repository
    sl.registerLazySingleton<BaseProductsRepository>(
      () => ProductsRepository(sl()),
    );
    //usecases
    sl.registerLazySingleton<GetAllProductsUsecase>(
      () => GetAllProductsUsecase(sl()),
    );
  }
}
