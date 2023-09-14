import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'user.g.dart';

/// explicitToJson: false => {firstName: John, address: Instance of 'Address'}
/// explicitToJson: true => {firstName: John, address: {street: My st., city: New York}}
@JsonSerializable(explicitToJson: true)
class User {
  String firstName;
  Address address;

  User(this.firstName, this.address);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}