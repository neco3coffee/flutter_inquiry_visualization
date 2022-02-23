import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  /// The generated code assumes these values exist in JSON.
  final String userId;
  final String name;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.

  User({required this.userId, required this.name});

  /// Connect the generated [_$UserFromJson] function to the `fromJson`
  /// factory.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Connect the generated [_$UserToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
