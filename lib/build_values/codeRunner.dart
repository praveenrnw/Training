import 'package:training/build_values/build_vehicles.dart';

class CodeRunner {
  static void runcode() {
    var car = BuildVehicles((b) => b
      ..type = VehicleType.car
      ..brand = 'tesla'
      ..price = 1000000
      ..passengers.addAll(['John', 'Mark', 'Alex', 'Mathew']));

    var copiedCar = car.rebuild((b) => b
      ..brand = 'Skoda Transportation'
      ..type = VehicleType.train);

    final carJson = car.toJson();
    final carFromJson =
        BuildVehicles.fromJson(carJson)?.rebuild((b) => b..price = 2000);
    print(carJson);
    print(carFromJson);
    //print(car);
    //print(copiedCar);
    //print(car == copiedCar);
  }
}
