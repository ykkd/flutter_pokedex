// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailResponse _$PokemonDetailResponseFromJson(
        Map<String, dynamic> json) =>
    PokemonDetailResponse(
      (json['abilities'] as List<dynamic>)
          .map((e) => AbilityResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['height'] as num).toDouble(),
      (json['weight'] as num).toDouble(),
      json['id'] as int,
      json['name'] as String,
      (json['stats'] as List<dynamic>)
          .map((e) => StatResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['types'] as List<dynamic>)
          .map((e) => TypeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonDetailResponseToJson(
        PokemonDetailResponse instance) =>
    <String, dynamic>{
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'height': instance.height,
      'weight': instance.weight,
      'id': instance.id,
      'name': instance.name,
      'stats': instance.stats.map((e) => e.toJson()).toList(),
      'types': instance.types.map((e) => e.toJson()).toList(),
    };
