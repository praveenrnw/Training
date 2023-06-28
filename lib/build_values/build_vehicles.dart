library build_vehicles;

import 'dart:convert';

import 'package:built_value/built_value.dart';
// ignore: depend_on_referenced_packages
import 'package:built_collection/built_collection.dart';
import 'serializers.dart';
import 'package:built_value/serializer.dart';

part 'build_vehicles.g.dart';

abstract class BuildVehicles
    implements Built<BuildVehicles, BuildVehiclesBuilder> {
  VehicleType get type;
  String get brand;
  double get price;
  bool? get isAvailable;
  BuiltList<String> get passengers;

  BuildVehicles._();

  factory BuildVehicles([updates(BuildVehiclesBuilder b)]) = _$BuildVehicles;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuildVehicles.serializer, this));
  }

  static BuildVehicles? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuildVehicles.serializer, json.decode(jsonString));
  }

  static Serializer<BuildVehicles> get serializer => _$buildVehiclesSerializer;
}

class VehicleType extends EnumClass {
  static const VehicleType car = _$car;
  static const VehicleType motorBike = _$motorBike;
  static const VehicleType plane = _$plane;
  static const VehicleType train = _$train;

  const VehicleType._(String name) : super(name);

  static BuiltSet<VehicleType> get values => _$values;
  static VehicleType valueOf(String name) => _$valueOf(name);

  static Serializer<VehicleType> get serializer => _$vehicleTypeSerializer;
}
