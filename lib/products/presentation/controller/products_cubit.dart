import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_session_6_task/core/base_usecase/base_usecase.dart';
import 'package:nti_session_6_task/products/domain/usecases/get_all_products_usecase.dart';
import 'package:nti_session_6_task/products/presentation/controller/products_states.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit(this.getAllProductsUsecase) : super(ProductsInitialState());
  final GetAllProductsUsecase getAllProductsUsecase;
  Future<void> getAllProducts() async {
    emit(ProductsLoadingState());
    final data = await getAllProductsUsecase.call(NoParameters());
    data.fold(
      (failure) {
        emit(ProductsErrorState(failure.message));
      },
      (products) {
        emit(ProductsSuccessState(products));
      },
    );
  }
}
