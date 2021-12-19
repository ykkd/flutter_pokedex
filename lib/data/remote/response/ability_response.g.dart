// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityResponse _$AbilityResponseFromJson(Map<String, dynamic> json) =>
    AbilityResponse(
      AbilityXResponse.fromJson(json['ability'] as Map<String, dynamic>),
      json['is_hidden'] as bool,
      json['slot'] as int,
    );

Map<String, dynamic> _$AbilityResponseToJson(AbilityResponse instance) =>
    <String, dynamic>{
      'ability': instance.ability.toJson(),
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };
