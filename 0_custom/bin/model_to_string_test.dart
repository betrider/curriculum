import 'dart:convert';

void main() {
  UserModel model1 = UserModel(id: "1", name: "name1");
  String saveStringData = modelToString(model1);
  UserModel model2 = stringToModel(saveStringData);

  print(model1.toString());
  print(model2.toString());
  print(model1.toString() == model2.toString());
}

/// 모델을 JSON 문자열로 변환
String modelToString(UserModel model) {
  // 객체를 JSON으로 변환하고 이를 문자열로 변환
  return jsonEncode(model.toJson());
}

/// JSON 문자열을 모델로 변환
UserModel stringToModel(String jsonString) {
  // JSON 문자열을 디코딩하여 Map으로 변환한 후, 이를 모델로 복원
  return UserModel.fromJson(jsonDecode(jsonString));
}

class UserModel {
  final String id;
  final String name;
  UserModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "name": name,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map["id"],
      name: map["name"],
    );
  }

  @override
  String toString() => toJson().toString();
}
