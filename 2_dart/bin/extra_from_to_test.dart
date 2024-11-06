import 'dart:convert';

void main() {
  Car car1 = const Car(title: 'asdf', description: 'bbbb');
  var jsonString = car1.toJson();
  Car car2 = ExtraModel.fromJson(jsonString);
  print(car2.title);
}

abstract class ExtraModel {
  const ExtraModel();

  String toJson();

  static T fromJson<T>(String source) {
    if (T == Car) {
      return Car.fromJson(source) as T;
    } else if (T == Truck) {
      return Truck.fromJson(source) as T;
    } else {
      throw Exception('Unknown type');
    }
  }
}

class Truck extends ExtraModel {
  const Truck({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "title": title,
      "description": description,
    };
  }

  factory Truck.fromMap(Map<String, dynamic> map) {
    return Truck(
      title: map["title"],
      description: map["description"],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Truck.fromJson(String source) => Truck.fromMap(json.decode(source));
}

class Car extends ExtraModel {
  const Car({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "title": title,
      "description": description,
    };
  }

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      title: map["title"],
      description: map["description"],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Car.fromJson(String source) => Car.fromMap(json.decode(source));
}
