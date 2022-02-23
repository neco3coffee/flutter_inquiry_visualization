// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Caller _$CallerFromJson(Map<String, dynamic> json) => Caller(
      callerId: json['callerId'] as String,
      name: json['name'] as String,
      isOnline: json['isOnline'] as bool,
    );

Map<String, dynamic> _$CallerToJson(Caller instance) => <String, dynamic>{
      'callerId': instance.callerId,
      'name': instance.name,
      'isOnline': instance.isOnline,
    };
