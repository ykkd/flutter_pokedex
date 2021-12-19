// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatResponse _$StatResponseFromJson(Map<String, dynamic> json) => StatResponse(
      json['base_state'] as int,
      json['effort'] as int,
      StatXResponse.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatResponseToJson(StatResponse instance) =>
    <String, dynamic>{
      'base_state': instance.baseState,
      'effort': instance.effort,
      'stat': instance.stat.toJson(),
    };
