// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeResponse _$TypeResponseFromJson(Map<String, dynamic> json) => TypeResponse(
      json['slot'] as int,
      TypeXResponse.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeResponseToJson(TypeResponse instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type.toJson(),
    };
