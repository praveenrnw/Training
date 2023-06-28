// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_vehicles.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VehicleType _$car = const VehicleType._('car');
const VehicleType _$motorBike = const VehicleType._('motorBike');
const VehicleType _$plane = const VehicleType._('plane');
const VehicleType _$train = const VehicleType._('train');

VehicleType _$valueOf(String name) {
  switch (name) {
    case 'car':
      return _$car;
    case 'motorBike':
      return _$motorBike;
    case 'plane':
      return _$plane;
    case 'train':
      return _$train;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<VehicleType> _$values =
    new BuiltSet<VehicleType>(const <VehicleType>[
  _$car,
  _$motorBike,
  _$plane,
  _$train,
]);

Serializer<BuildVehicles> _$buildVehiclesSerializer =
    new _$BuildVehiclesSerializer();
Serializer<VehicleType> _$vehicleTypeSerializer = new _$VehicleTypeSerializer();

class _$BuildVehiclesSerializer implements StructuredSerializer<BuildVehicles> {
  @override
  final Iterable<Type> types = const [BuildVehicles, _$BuildVehicles];
  @override
  final String wireName = 'BuildVehicles';

  @override
  Iterable<Object?> serialize(Serializers serializers, BuildVehicles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(VehicleType)),
      'brand',
      serializers.serialize(object.brand,
          specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
      'passengers',
      serializers.serialize(object.passengers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object? value;
    value = object.isAvailable;
    if (value != null) {
      result
        ..add('isAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  BuildVehicles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuildVehiclesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(VehicleType))! as VehicleType;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'isAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'passengers':
          result.passengers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$VehicleTypeSerializer implements PrimitiveSerializer<VehicleType> {
  @override
  final Iterable<Type> types = const <Type>[VehicleType];
  @override
  final String wireName = 'VehicleType';

  @override
  Object serialize(Serializers serializers, VehicleType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  VehicleType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VehicleType.valueOf(serialized as String);
}

class _$BuildVehicles extends BuildVehicles {
  @override
  final VehicleType type;
  @override
  final String brand;
  @override
  final double price;
  @override
  final bool? isAvailable;
  @override
  final BuiltList<String> passengers;

  factory _$BuildVehicles([void Function(BuildVehiclesBuilder)? updates]) =>
      (new BuildVehiclesBuilder()..update(updates))._build();

  _$BuildVehicles._(
      {required this.type,
      required this.brand,
      required this.price,
      this.isAvailable,
      required this.passengers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'BuildVehicles', 'type');
    BuiltValueNullFieldError.checkNotNull(brand, r'BuildVehicles', 'brand');
    BuiltValueNullFieldError.checkNotNull(price, r'BuildVehicles', 'price');
    BuiltValueNullFieldError.checkNotNull(
        passengers, r'BuildVehicles', 'passengers');
  }

  @override
  BuildVehicles rebuild(void Function(BuildVehiclesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuildVehiclesBuilder toBuilder() => new BuildVehiclesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuildVehicles &&
        type == other.type &&
        brand == other.brand &&
        price == other.price &&
        isAvailable == other.isAvailable &&
        passengers == other.passengers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jc(_$hash, passengers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuildVehicles')
          ..add('type', type)
          ..add('brand', brand)
          ..add('price', price)
          ..add('isAvailable', isAvailable)
          ..add('passengers', passengers))
        .toString();
  }
}

class BuildVehiclesBuilder
    implements Builder<BuildVehicles, BuildVehiclesBuilder> {
  _$BuildVehicles? _$v;

  VehicleType? _type;
  VehicleType? get type => _$this._type;
  set type(VehicleType? type) => _$this._type = type;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  ListBuilder<String>? _passengers;
  ListBuilder<String> get passengers =>
      _$this._passengers ??= new ListBuilder<String>();
  set passengers(ListBuilder<String>? passengers) =>
      _$this._passengers = passengers;

  BuildVehiclesBuilder();

  BuildVehiclesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _brand = $v.brand;
      _price = $v.price;
      _isAvailable = $v.isAvailable;
      _passengers = $v.passengers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuildVehicles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuildVehicles;
  }

  @override
  void update(void Function(BuildVehiclesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuildVehicles build() => _build();

  _$BuildVehicles _build() {
    _$BuildVehicles _$result;
    try {
      _$result = _$v ??
          new _$BuildVehicles._(
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'BuildVehicles', 'type'),
              brand: BuiltValueNullFieldError.checkNotNull(
                  brand, r'BuildVehicles', 'brand'),
              price: BuiltValueNullFieldError.checkNotNull(
                  price, r'BuildVehicles', 'price'),
              isAvailable: isAvailable,
              passengers: passengers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'passengers';
        passengers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BuildVehicles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
