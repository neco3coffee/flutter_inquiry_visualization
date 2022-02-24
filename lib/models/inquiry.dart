import 'package:flutter_inquiry_visualization/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inquiry.g.dart';

@JsonSerializable(explicitToJson: true)
class Inquiry {
  /// The generated code assumes these values exist in JSON.
  final String inquiryId;
  final User user;
  final String? callerId;
  final String content;
  final bool isUserTyping;
  final bool isCallerTyping;
  final int status;
  final String? answer;
  final DateTime createdAt;
  final DateTime? startedAt;
  final DateTime? finishedAt;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.

  Inquiry({
    required this.inquiryId,
    required this.user,
    required this.callerId,
    required this.content,
    required this.isUserTyping,
    required this.isCallerTyping,
    required this.status,
    required this.answer,
    required this.createdAt,
    required this.startedAt,
    required this.finishedAt,
  });

  /// Connect the generated [_$UserFromJson] function to the `fromJson`
  /// factory.
  factory Inquiry.fromJson(Map<String, dynamic> json) =>
      _$InquiryFromJson(json);

  /// Connect the generated [_$UserToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$InquiryToJson(this);
}
