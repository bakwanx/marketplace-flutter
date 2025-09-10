import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String category,
    @Default(0.0) double price,
    @Default(0.0) double discountPercentage,
    @Default(0.0) double rating,
    @Default(0) int stock,
    @Default([]) List<String> tags,
    @Default('') String brand,
    @Default('') String sku,
    @Default(0) int weight,
    DimensionEntity? dimensions,
    @Default('') String warrantyInformation,
    @Default('') String shippingInformation,
    @Default('') String availabilityStatus,
    @Default([]) List<ReviewEntity> reviews,
    @Default('') String returnPolicy,
    @Default(0) int minimumOrderQuantity,
    MetaEntity? meta,
    @Default([]) List<String> images,
    @Default('') String thumbnail,
  }) = _ProductEntity;


}

@freezed
class MetaEntity with _$MetaEntity {
  const factory MetaEntity({
    @Default('') String createdAt,
    @Default('') String updatedAt,
    @Default('') String barcode,
     @Default('') String qrCode,
  }) = _MetaEntity;


}

@freezed
class ReviewEntity with _$ReviewEntity {
  const factory ReviewEntity({
    @Default(0) int rating,
    @Default('') String comment,
    @Default('') String date,
    @Default('') String reviewerName,
    @Default('') String reviewerEmail,
  }) = _ReviewEntity;


}

@freezed
class DimensionEntity with _$DimensionEntity {
  const factory DimensionEntity({
    @Default(0.0) double width,
    @Default(0.0) double height,
    @Default(0.0) double depth,
  }) = _DimensionEntity;


}

