// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListView _$PokemonListViewFromJson(Map<String, dynamic> json) =>
    PokemonListView(
      pokemons: (json['pokemons'] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonListViewToJson(PokemonListView instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons.map((e) => e.toJson()).toList(),
    };
