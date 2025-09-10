import 'package:either_dart/either.dart';
import 'package:marketplace/domain/entity/product_entity.dart';
import 'package:marketplace/domain/repository/product_repository.dart';

class ProductUseCase {
  final ProductRepository productRepository;
  ProductUseCase(this.productRepository);

  Future<Either<Exception, List<ProductEntity>>> getProducts(int limit, int skip) async {
    return productRepository.getProducts(limit, skip);
  }
}