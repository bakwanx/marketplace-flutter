import 'package:either_dart/src/either.dart';
import 'package:marketplace/data/datasource/product_datasource.dart';
import 'package:marketplace/data/mapper/product_mapper.dart';
import 'package:marketplace/domain/entity/product_entity.dart';
import 'package:marketplace/domain/repository/product_repository.dart';
import 'package:marketplace/utils/ext/safe_null_object.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDs productDs;

  ProductRepositoryImpl(this.productDs);

  @override
  Future<Either<Exception, List<ProductEntity>>> getProducts(
    int limit,
    int skip,
  ) async {
    try {
      final result = await productDs.getProducts(limit, skip);
      return Right(
        result.products.orEmpty().map((value) => value.toEntity()).toList(),
      );
    } catch (e) {
      return Future.value(Left(e as Exception));
    }
  }
}
