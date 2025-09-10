import 'package:dio/dio.dart';
import 'package:marketplace/data/models/product_model_response.dart';

abstract class ProductDs {
  Future<ProductModelResponse> getProducts(int limit, int skip);
}

class ProductDsImpl implements ProductDs {
  final Dio dio;
  ProductDsImpl(this.dio);


  @override
  Future<ProductModelResponse> getProducts(int limit, int skip) async {
    final result = await dio.get(
      'https://dummyjson.com/products/?limit=$limit&skip=$skip',
    );

    if (result.statusCode != 200) {
      throw DioException(requestOptions: result.requestOptions);
    }

    return ProductModelResponse.fromJson(result.data);
  }

}
