import 'package:json_annotation/json_annotation.dart';

part 'caller.g.dart';

@JsonSerializable()
class Caller {
  /// The generated code assumes these values exist in JSON.
  final String callerId;
  final String name;
  final bool isOnline;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.

  Caller({required this.callerId, required this.name, required this.isOnline});

  /// Connect the generated [_$UserFromJson] function to the `fromJson`
  /// factory.
  factory Caller.fromJson(Map<String, dynamic> json) => _$CallerFromJson(json);

  /// Connect the generated [_$UserToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CallerToJson(this);
}
