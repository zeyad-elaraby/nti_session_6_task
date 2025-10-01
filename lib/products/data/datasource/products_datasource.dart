import 'package:dio/dio.dart';
import 'package:nti_session_6_task/core/error/exceptions.dart';
import 'package:nti_session_6_task/core/network/api_constants.dart';
import 'package:nti_session_6_task/core/utils/dio_helper.dart';
import 'package:nti_session_6_task/products/data/models/product_model.dart';

abstract class BaseProductsRemoteDataSource {
  Future<List<ProductModel>> getAllProducts();
}

class ProductsRemoteDatasource implements BaseProductsRemoteDataSource {
  @override
  Future<List<ProductModel>> getAllProducts() async {
    Response response = await DioHelper.getData(url: ApiConstant.laptops);
    if (response.statusCode == 200) {
      List<ProductModel> products = List.from(
        (response.data["product"] as List).map(
          (product) => ProductModel.fromJson(product),
        ),
      );
      print('Raw response: ${response.data}');

      return products;
    } else {
      throw ServerException(errorMessageModel: response.data);
    }
  }
}
