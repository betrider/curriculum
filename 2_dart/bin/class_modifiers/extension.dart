import 'dart:convert';

void main() {
  Car car1 = const Car(title: 'asdf', description: 'bbbb');
  var jsonString = car1.encode();
  Car car2 = ExtraModelExtension.decode<Car>(jsonString);
  print(car2.title);
  
}

extension ExtraModelExtension on ExtraModel {
  String encode() {
    var result = jsonEncode(toJson());
    return result;
  }

  static T decode<T>(String json){
    return ExtraModel.fromJson<T>(jsonDecode(json)) as T;
  }
}

abstract class ExtraModel {
  const ExtraModel();

  Map<String, dynamic> toJson();

  static ExtraModel fromJson<T>(Map<String, dynamic> json) {
    if (T == Car) {
      return Car.fromJson(json);
    } else if (T == Truck) {
      return Truck.fromJson(json);
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

  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
    };
  }

  factory Truck.fromJson(Map<String, dynamic> json) {
    return Truck(
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }
}

class Car extends ExtraModel {
  const Car({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
    };
  }

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }
}

Map<String, dynamic> classJsonEncode<T extends ExtraModel>(T value) {
  var result = value.toJson();
  return result;
}
