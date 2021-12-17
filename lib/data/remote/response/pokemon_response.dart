import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_response.g.dart';

@JsonSerializable()
class PokemonResponse {
  String name;
  String url;

  PokemonResponse({required this.name, required this.url});

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonResponseToJson(this);
}
