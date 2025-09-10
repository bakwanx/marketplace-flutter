// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  DimensionEntity? get dimensions => throw _privateConstructorUsedError;
  String get warrantyInformation => throw _privateConstructorUsedError;
  String get shippingInformation => throw _privateConstructorUsedError;
  String get availabilityStatus => throw _privateConstructorUsedError;
  List<ReviewEntity> get reviews => throw _privateConstructorUsedError;
  String get returnPolicy => throw _privateConstructorUsedError;
  int get minimumOrderQuantity => throw _privateConstructorUsedError;
  MetaEntity? get meta => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
    ProductEntity value,
    $Res Function(ProductEntity) then,
  ) = _$ProductEntityCopyWithImpl<$Res, ProductEntity>;
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String category,
    double price,
    double discountPercentage,
    double rating,
    int stock,
    List<String> tags,
    String brand,
    String sku,
    int weight,
    DimensionEntity? dimensions,
    String warrantyInformation,
    String shippingInformation,
    String availabilityStatus,
    List<ReviewEntity> reviews,
    String returnPolicy,
    int minimumOrderQuantity,
    MetaEntity? meta,
    List<String> images,
    String thumbnail,
  });

  $DimensionEntityCopyWith<$Res>? get dimensions;
  $MetaEntityCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res, $Val extends ProductEntity>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = null,
    Object? sku = null,
    Object? weight = null,
    Object? dimensions = freezed,
    Object? warrantyInformation = null,
    Object? shippingInformation = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? returnPolicy = null,
    Object? minimumOrderQuantity = null,
    Object? meta = freezed,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            discountPercentage:
                null == discountPercentage
                    ? _value.discountPercentage
                    : discountPercentage // ignore: cast_nullable_to_non_nullable
                        as double,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double,
            stock:
                null == stock
                    ? _value.stock
                    : stock // ignore: cast_nullable_to_non_nullable
                        as int,
            tags:
                null == tags
                    ? _value.tags
                    : tags // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            brand:
                null == brand
                    ? _value.brand
                    : brand // ignore: cast_nullable_to_non_nullable
                        as String,
            sku:
                null == sku
                    ? _value.sku
                    : sku // ignore: cast_nullable_to_non_nullable
                        as String,
            weight:
                null == weight
                    ? _value.weight
                    : weight // ignore: cast_nullable_to_non_nullable
                        as int,
            dimensions:
                freezed == dimensions
                    ? _value.dimensions
                    : dimensions // ignore: cast_nullable_to_non_nullable
                        as DimensionEntity?,
            warrantyInformation:
                null == warrantyInformation
                    ? _value.warrantyInformation
                    : warrantyInformation // ignore: cast_nullable_to_non_nullable
                        as String,
            shippingInformation:
                null == shippingInformation
                    ? _value.shippingInformation
                    : shippingInformation // ignore: cast_nullable_to_non_nullable
                        as String,
            availabilityStatus:
                null == availabilityStatus
                    ? _value.availabilityStatus
                    : availabilityStatus // ignore: cast_nullable_to_non_nullable
                        as String,
            reviews:
                null == reviews
                    ? _value.reviews
                    : reviews // ignore: cast_nullable_to_non_nullable
                        as List<ReviewEntity>,
            returnPolicy:
                null == returnPolicy
                    ? _value.returnPolicy
                    : returnPolicy // ignore: cast_nullable_to_non_nullable
                        as String,
            minimumOrderQuantity:
                null == minimumOrderQuantity
                    ? _value.minimumOrderQuantity
                    : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
                        as int,
            meta:
                freezed == meta
                    ? _value.meta
                    : meta // ignore: cast_nullable_to_non_nullable
                        as MetaEntity?,
            images:
                null == images
                    ? _value.images
                    : images // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            thumbnail:
                null == thumbnail
                    ? _value.thumbnail
                    : thumbnail // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DimensionEntityCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionEntityCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaEntityCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaEntityCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductEntityImplCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$ProductEntityImplCopyWith(
    _$ProductEntityImpl value,
    $Res Function(_$ProductEntityImpl) then,
  ) = __$$ProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String description,
    String category,
    double price,
    double discountPercentage,
    double rating,
    int stock,
    List<String> tags,
    String brand,
    String sku,
    int weight,
    DimensionEntity? dimensions,
    String warrantyInformation,
    String shippingInformation,
    String availabilityStatus,
    List<ReviewEntity> reviews,
    String returnPolicy,
    int minimumOrderQuantity,
    MetaEntity? meta,
    List<String> images,
    String thumbnail,
  });

  @override
  $DimensionEntityCopyWith<$Res>? get dimensions;
  @override
  $MetaEntityCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ProductEntityImplCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res, _$ProductEntityImpl>
    implements _$$ProductEntityImplCopyWith<$Res> {
  __$$ProductEntityImplCopyWithImpl(
    _$ProductEntityImpl _value,
    $Res Function(_$ProductEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = null,
    Object? sku = null,
    Object? weight = null,
    Object? dimensions = freezed,
    Object? warrantyInformation = null,
    Object? shippingInformation = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? returnPolicy = null,
    Object? minimumOrderQuantity = null,
    Object? meta = freezed,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(
      _$ProductEntityImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        discountPercentage:
            null == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                    as double,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double,
        stock:
            null == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                    as int,
        tags:
            null == tags
                ? _value._tags
                : tags // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        brand:
            null == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                    as String,
        sku:
            null == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                    as String,
        weight:
            null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                    as int,
        dimensions:
            freezed == dimensions
                ? _value.dimensions
                : dimensions // ignore: cast_nullable_to_non_nullable
                    as DimensionEntity?,
        warrantyInformation:
            null == warrantyInformation
                ? _value.warrantyInformation
                : warrantyInformation // ignore: cast_nullable_to_non_nullable
                    as String,
        shippingInformation:
            null == shippingInformation
                ? _value.shippingInformation
                : shippingInformation // ignore: cast_nullable_to_non_nullable
                    as String,
        availabilityStatus:
            null == availabilityStatus
                ? _value.availabilityStatus
                : availabilityStatus // ignore: cast_nullable_to_non_nullable
                    as String,
        reviews:
            null == reviews
                ? _value._reviews
                : reviews // ignore: cast_nullable_to_non_nullable
                    as List<ReviewEntity>,
        returnPolicy:
            null == returnPolicy
                ? _value.returnPolicy
                : returnPolicy // ignore: cast_nullable_to_non_nullable
                    as String,
        minimumOrderQuantity:
            null == minimumOrderQuantity
                ? _value.minimumOrderQuantity
                : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
                    as int,
        meta:
            freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                    as MetaEntity?,
        images:
            null == images
                ? _value._images
                : images // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        thumbnail:
            null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ProductEntityImpl implements _ProductEntity {
  const _$ProductEntityImpl({
    this.id = 0,
    this.title = '',
    this.description = '',
    this.category = '',
    this.price = 0.0,
    this.discountPercentage = 0.0,
    this.rating = 0.0,
    this.stock = 0,
    final List<String> tags = const [],
    this.brand = '',
    this.sku = '',
    this.weight = 0,
    this.dimensions,
    this.warrantyInformation = '',
    this.shippingInformation = '',
    this.availabilityStatus = '',
    final List<ReviewEntity> reviews = const [],
    this.returnPolicy = '',
    this.minimumOrderQuantity = 0,
    this.meta,
    final List<String> images = const [],
    this.thumbnail = '',
  }) : _tags = tags,
       _reviews = reviews,
       _images = images;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final double discountPercentage;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int stock;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final String brand;
  @override
  @JsonKey()
  final String sku;
  @override
  @JsonKey()
  final int weight;
  @override
  final DimensionEntity? dimensions;
  @override
  @JsonKey()
  final String warrantyInformation;
  @override
  @JsonKey()
  final String shippingInformation;
  @override
  @JsonKey()
  final String availabilityStatus;
  final List<ReviewEntity> _reviews;
  @override
  @JsonKey()
  List<ReviewEntity> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  @JsonKey()
  final String returnPolicy;
  @override
  @JsonKey()
  final int minimumOrderQuantity;
  @override
  final MetaEntity? meta;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final String thumbnail;

  @override
  String toString() {
    return 'ProductEntity(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.returnPolicy, returnPolicy) ||
                other.returnPolicy == returnPolicy) &&
            (identical(other.minimumOrderQuantity, minimumOrderQuantity) ||
                other.minimumOrderQuantity == minimumOrderQuantity) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    description,
    category,
    price,
    discountPercentage,
    rating,
    stock,
    const DeepCollectionEquality().hash(_tags),
    brand,
    sku,
    weight,
    dimensions,
    warrantyInformation,
    shippingInformation,
    availabilityStatus,
    const DeepCollectionEquality().hash(_reviews),
    returnPolicy,
    minimumOrderQuantity,
    meta,
    const DeepCollectionEquality().hash(_images),
    thumbnail,
  ]);

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      __$$ProductEntityImplCopyWithImpl<_$ProductEntityImpl>(this, _$identity);
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity({
    final int id,
    final String title,
    final String description,
    final String category,
    final double price,
    final double discountPercentage,
    final double rating,
    final int stock,
    final List<String> tags,
    final String brand,
    final String sku,
    final int weight,
    final DimensionEntity? dimensions,
    final String warrantyInformation,
    final String shippingInformation,
    final String availabilityStatus,
    final List<ReviewEntity> reviews,
    final String returnPolicy,
    final int minimumOrderQuantity,
    final MetaEntity? meta,
    final List<String> images,
    final String thumbnail,
  }) = _$ProductEntityImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get category;
  @override
  double get price;
  @override
  double get discountPercentage;
  @override
  double get rating;
  @override
  int get stock;
  @override
  List<String> get tags;
  @override
  String get brand;
  @override
  String get sku;
  @override
  int get weight;
  @override
  DimensionEntity? get dimensions;
  @override
  String get warrantyInformation;
  @override
  String get shippingInformation;
  @override
  String get availabilityStatus;
  @override
  List<ReviewEntity> get reviews;
  @override
  String get returnPolicy;
  @override
  int get minimumOrderQuantity;
  @override
  MetaEntity? get meta;
  @override
  List<String> get images;
  @override
  String get thumbnail;

  /// Create a copy of ProductEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MetaEntity {
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaEntityCopyWith<MetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaEntityCopyWith<$Res> {
  factory $MetaEntityCopyWith(
    MetaEntity value,
    $Res Function(MetaEntity) then,
  ) = _$MetaEntityCopyWithImpl<$Res, MetaEntity>;
  @useResult
  $Res call({
    String createdAt,
    String updatedAt,
    String barcode,
    String qrCode,
  });
}

/// @nodoc
class _$MetaEntityCopyWithImpl<$Res, $Val extends MetaEntity>
    implements $MetaEntityCopyWith<$Res> {
  _$MetaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? barcode = null,
    Object? qrCode = null,
  }) {
    return _then(
      _value.copyWith(
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as String,
            barcode:
                null == barcode
                    ? _value.barcode
                    : barcode // ignore: cast_nullable_to_non_nullable
                        as String,
            qrCode:
                null == qrCode
                    ? _value.qrCode
                    : qrCode // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MetaEntityImplCopyWith<$Res>
    implements $MetaEntityCopyWith<$Res> {
  factory _$$MetaEntityImplCopyWith(
    _$MetaEntityImpl value,
    $Res Function(_$MetaEntityImpl) then,
  ) = __$$MetaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String createdAt,
    String updatedAt,
    String barcode,
    String qrCode,
  });
}

/// @nodoc
class __$$MetaEntityImplCopyWithImpl<$Res>
    extends _$MetaEntityCopyWithImpl<$Res, _$MetaEntityImpl>
    implements _$$MetaEntityImplCopyWith<$Res> {
  __$$MetaEntityImplCopyWithImpl(
    _$MetaEntityImpl _value,
    $Res Function(_$MetaEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? barcode = null,
    Object? qrCode = null,
  }) {
    return _then(
      _$MetaEntityImpl(
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as String,
        barcode:
            null == barcode
                ? _value.barcode
                : barcode // ignore: cast_nullable_to_non_nullable
                    as String,
        qrCode:
            null == qrCode
                ? _value.qrCode
                : qrCode // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$MetaEntityImpl implements _MetaEntity {
  const _$MetaEntityImpl({
    this.createdAt = '',
    this.updatedAt = '',
    this.barcode = '',
    this.qrCode = '',
  });

  @override
  @JsonKey()
  final String createdAt;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final String barcode;
  @override
  @JsonKey()
  final String qrCode;

  @override
  String toString() {
    return 'MetaEntity(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaEntityImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, barcode, qrCode);

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaEntityImplCopyWith<_$MetaEntityImpl> get copyWith =>
      __$$MetaEntityImplCopyWithImpl<_$MetaEntityImpl>(this, _$identity);
}

abstract class _MetaEntity implements MetaEntity {
  const factory _MetaEntity({
    final String createdAt,
    final String updatedAt,
    final String barcode,
    final String qrCode,
  }) = _$MetaEntityImpl;

  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get barcode;
  @override
  String get qrCode;

  /// Create a copy of MetaEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaEntityImplCopyWith<_$MetaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewEntity {
  int get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get reviewerName => throw _privateConstructorUsedError;
  String get reviewerEmail => throw _privateConstructorUsedError;

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewEntityCopyWith<ReviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEntityCopyWith<$Res> {
  factory $ReviewEntityCopyWith(
    ReviewEntity value,
    $Res Function(ReviewEntity) then,
  ) = _$ReviewEntityCopyWithImpl<$Res, ReviewEntity>;
  @useResult
  $Res call({
    int rating,
    String comment,
    String date,
    String reviewerName,
    String reviewerEmail,
  });
}

/// @nodoc
class _$ReviewEntityCopyWithImpl<$Res, $Val extends ReviewEntity>
    implements $ReviewEntityCopyWith<$Res> {
  _$ReviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
    Object? date = null,
    Object? reviewerName = null,
    Object? reviewerEmail = null,
  }) {
    return _then(
      _value.copyWith(
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as int,
            comment:
                null == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
            reviewerName:
                null == reviewerName
                    ? _value.reviewerName
                    : reviewerName // ignore: cast_nullable_to_non_nullable
                        as String,
            reviewerEmail:
                null == reviewerEmail
                    ? _value.reviewerEmail
                    : reviewerEmail // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewEntityImplCopyWith<$Res>
    implements $ReviewEntityCopyWith<$Res> {
  factory _$$ReviewEntityImplCopyWith(
    _$ReviewEntityImpl value,
    $Res Function(_$ReviewEntityImpl) then,
  ) = __$$ReviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int rating,
    String comment,
    String date,
    String reviewerName,
    String reviewerEmail,
  });
}

/// @nodoc
class __$$ReviewEntityImplCopyWithImpl<$Res>
    extends _$ReviewEntityCopyWithImpl<$Res, _$ReviewEntityImpl>
    implements _$$ReviewEntityImplCopyWith<$Res> {
  __$$ReviewEntityImplCopyWithImpl(
    _$ReviewEntityImpl _value,
    $Res Function(_$ReviewEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
    Object? date = null,
    Object? reviewerName = null,
    Object? reviewerEmail = null,
  }) {
    return _then(
      _$ReviewEntityImpl(
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as int,
        comment:
            null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
        reviewerName:
            null == reviewerName
                ? _value.reviewerName
                : reviewerName // ignore: cast_nullable_to_non_nullable
                    as String,
        reviewerEmail:
            null == reviewerEmail
                ? _value.reviewerEmail
                : reviewerEmail // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ReviewEntityImpl implements _ReviewEntity {
  const _$ReviewEntityImpl({
    this.rating = 0,
    this.comment = '',
    this.date = '',
    this.reviewerName = '',
    this.reviewerEmail = '',
  });

  @override
  @JsonKey()
  final int rating;
  @override
  @JsonKey()
  final String comment;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String reviewerName;
  @override
  @JsonKey()
  final String reviewerEmail;

  @override
  String toString() {
    return 'ReviewEntity(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewEntityImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    rating,
    comment,
    date,
    reviewerName,
    reviewerEmail,
  );

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewEntityImplCopyWith<_$ReviewEntityImpl> get copyWith =>
      __$$ReviewEntityImplCopyWithImpl<_$ReviewEntityImpl>(this, _$identity);
}

abstract class _ReviewEntity implements ReviewEntity {
  const factory _ReviewEntity({
    final int rating,
    final String comment,
    final String date,
    final String reviewerName,
    final String reviewerEmail,
  }) = _$ReviewEntityImpl;

  @override
  int get rating;
  @override
  String get comment;
  @override
  String get date;
  @override
  String get reviewerName;
  @override
  String get reviewerEmail;

  /// Create a copy of ReviewEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewEntityImplCopyWith<_$ReviewEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DimensionEntity {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get depth => throw _privateConstructorUsedError;

  /// Create a copy of DimensionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DimensionEntityCopyWith<DimensionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionEntityCopyWith<$Res> {
  factory $DimensionEntityCopyWith(
    DimensionEntity value,
    $Res Function(DimensionEntity) then,
  ) = _$DimensionEntityCopyWithImpl<$Res, DimensionEntity>;
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class _$DimensionEntityCopyWithImpl<$Res, $Val extends DimensionEntity>
    implements $DimensionEntityCopyWith<$Res> {
  _$DimensionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DimensionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(
      _value.copyWith(
            width:
                null == width
                    ? _value.width
                    : width // ignore: cast_nullable_to_non_nullable
                        as double,
            height:
                null == height
                    ? _value.height
                    : height // ignore: cast_nullable_to_non_nullable
                        as double,
            depth:
                null == depth
                    ? _value.depth
                    : depth // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DimensionEntityImplCopyWith<$Res>
    implements $DimensionEntityCopyWith<$Res> {
  factory _$$DimensionEntityImplCopyWith(
    _$DimensionEntityImpl value,
    $Res Function(_$DimensionEntityImpl) then,
  ) = __$$DimensionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class __$$DimensionEntityImplCopyWithImpl<$Res>
    extends _$DimensionEntityCopyWithImpl<$Res, _$DimensionEntityImpl>
    implements _$$DimensionEntityImplCopyWith<$Res> {
  __$$DimensionEntityImplCopyWithImpl(
    _$DimensionEntityImpl _value,
    $Res Function(_$DimensionEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DimensionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(
      _$DimensionEntityImpl(
        width:
            null == width
                ? _value.width
                : width // ignore: cast_nullable_to_non_nullable
                    as double,
        height:
            null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                    as double,
        depth:
            null == depth
                ? _value.depth
                : depth // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$DimensionEntityImpl implements _DimensionEntity {
  const _$DimensionEntityImpl({
    this.width = 0.0,
    this.height = 0.0,
    this.depth = 0.0,
  });

  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;
  @override
  @JsonKey()
  final double depth;

  @override
  String toString() {
    return 'DimensionEntity(width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionEntityImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width, height, depth);

  /// Create a copy of DimensionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionEntityImplCopyWith<_$DimensionEntityImpl> get copyWith =>
      __$$DimensionEntityImplCopyWithImpl<_$DimensionEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _DimensionEntity implements DimensionEntity {
  const factory _DimensionEntity({
    final double width,
    final double height,
    final double depth,
  }) = _$DimensionEntityImpl;

  @override
  double get width;
  @override
  double get height;
  @override
  double get depth;

  /// Create a copy of DimensionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DimensionEntityImplCopyWith<_$DimensionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
