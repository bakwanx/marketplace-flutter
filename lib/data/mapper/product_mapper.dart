import 'package:marketplace/utils/ext/safe_null_object.dart';

import '../../domain/entity/product_entity.dart';
import '../models/product_model_response.dart';


extension ProductModelResponseMapper on ProductModelResponse {
  List<ProductEntity> toEntity() {
    return products.orEmpty().map((p) => p.toEntity()).toList();
  }
}

extension ProductsMapper on Products {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id.orEmpty(),
      title: title.orEmpty(),
      description: description.orEmpty(),
      category: category.orEmpty(),
      price: price.orEmpty(),
      discountPercentage: discountPercentage.orEmpty(),
      rating: rating.orEmpty(),
      stock: stock.orEmpty(),
      tags: tags.orEmpty(),
      brand: brand.orEmpty(),
      sku: sku.orEmpty(),
      weight: weight.orEmpty(),
      dimensions: dimensions?.toEntity(),
      warrantyInformation: warrantyInformation.orEmpty(),
      shippingInformation: shippingInformation.orEmpty(),
      availabilityStatus: availabilityStatus.orEmpty(),
      reviews: reviews.orEmpty().map((r) => r.toEntity()).toList(),
      returnPolicy: returnPolicy.orEmpty(),
      minimumOrderQuantity: minimumOrderQuantity.orEmpty(),
      meta: meta?.toEntity(),
      images: images.orEmpty(),
      thumbnail: thumbnail.orEmpty(),
    );
  }
}

// Mapper for Meta
extension MetaMapper on Meta {
  MetaEntity toEntity() {
    return MetaEntity(
      createdAt: createdAt.orEmpty(),
      updatedAt: updatedAt.orEmpty(),
      barcode: barcode.orEmpty(),
      qrCode: qrCode.orEmpty(),
    );
  }
}

// Mapper for Reviews
extension ReviewsMapper on Reviews {
  ReviewEntity toEntity() {
    return ReviewEntity(
      rating: rating.orEmpty(),
      comment: comment.orEmpty(),
      date: date.orEmpty(),
      reviewerName: reviewerName.orEmpty(),
      reviewerEmail: reviewerEmail.orEmpty(),
    );
  }
}

extension DimensionsMapper on Dimensions {
  DimensionEntity toEntity() {
    return DimensionEntity(
      width: width.orEmpty(),
      height: height.orEmpty(),
      depth: depth.orEmpty(),
    );
  }
}
