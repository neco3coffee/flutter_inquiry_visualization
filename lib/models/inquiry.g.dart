// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inquiry _$InquiryFromJson(Map<String, dynamic> json) => Inquiry(
      inquiryId: json['inquiryId'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      callerId: json['callerId'] as String?,
      content: json['content'] as String,
      isUserTyping: json['isUserTyping'] as bool,
      isCallerTyping: json['isCallerTyping'] as bool,
      status: json['status'] as int,
      answer: json['answer'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
    );

Map<String, dynamic> _$InquiryToJson(Inquiry instance) => <String, dynamic>{
      'inquiryId': instance.inquiryId,
      'user': instance.user.toJson(),
      'callerId': instance.callerId,
      'content': instance.content,
      'isUserTyping': instance.isUserTyping,
      'isCallerTyping': instance.isCallerTyping,
      'status': instance.status,
      'answer': instance.answer,
      'createdAt': instance.createdAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
    };
