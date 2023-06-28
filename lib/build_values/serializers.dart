library serializers.dart;

import 'package:built_collection/built_collection.dart';

import 'build_vehicles.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([
  BuildVehicles,
  VehicleType,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
