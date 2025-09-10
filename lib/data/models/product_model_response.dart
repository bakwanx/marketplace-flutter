import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model_response.freezed.dart';
part 'product_model_response.g.dart';

@freezed
class ProductModelResponse with _$ProductModelResponse {
  const factory ProductModelResponse({
    @JsonKey(name: 'products') List<Products>? products,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'skip') int? skip,
    @JsonKey(name: 'limit') int? limit,
  }) = _ProductModelResponse;

  factory ProductModelResponse.fromJson(Map<String, Object?> json) => _$ProductModelResponseFromJson(json);
}

@freezed
class Products with _$Products {
  const factory Products({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'discountPercentage') double? discountPercentage,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: 'stock') int? stock,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'sku') String? sku,
    @JsonKey(name: 'weight') int? weight,
    @JsonKey(name: 'dimensions') Dimensions? dimensions,
    @JsonKey(name: 'warrantyInformation') String? warrantyInformation,
    @JsonKey(name: 'shippingInformation') String? shippingInformation,
    @JsonKey(name: 'availabilityStatus') String? availabilityStatus,
    @JsonKey(name: 'reviews') List<Reviews>? reviews,
    @JsonKey(name: 'returnPolicy') String? returnPolicy,
    @JsonKey(name: 'minimumOrderQuantity') int? minimumOrderQuantity,
    @JsonKey(name: 'meta') Meta? meta,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'thumbnail') String? thumbnail,
  }) = _Products;

  factory Products.fromJson(Map<String, Object?> json) => _$ProductsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
    @JsonKey(name: 'barcode') String? barcode,
    @JsonKey(name: 'qrCode') String? qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, Object?> json) => _$MetaFromJson(json);
}

@freezed
class Reviews with _$Reviews {
  const factory Reviews({
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'reviewerName') String? reviewerName,
    @JsonKey(name: 'reviewerEmail') String? reviewerEmail,
  }) = _Reviews;

  factory Reviews.fromJson(Map<String, Object?> json) => _$ReviewsFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    @JsonKey(name: 'width') double? width,
    @JsonKey(name: 'height') double? height,
    @JsonKey(name: 'depth') double? depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, Object?> json) => _$DimensionsFromJson(json);
}

