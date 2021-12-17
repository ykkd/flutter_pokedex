import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/remote/response/pokemon_response.dart';

part 'pokemon_list_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PokemonListResponse {
  List<PokemonResponse> results;

  PokemonListResponse({required this.results});

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonListResponseToJson(this);
}
