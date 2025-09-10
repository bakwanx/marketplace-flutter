import 'package:either_dart/either.dart';
import 'package:marketplace/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<Either<Exception, List<ProductEntity>>> getProducts(int limit, int skip);
}