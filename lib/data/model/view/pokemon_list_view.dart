import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/model/model/pokemon.dart';

part 'pokemon_list_view.g.dart';

@JsonSerializable(explicitToJson: true)
class PokemonListView {
  List<Pokemon> pokemons;

  PokemonListView({required this.pokemons});

  factory PokemonListView.fromJson(Map<String, dynamic> json) =>
      _$PokemonListViewFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonListViewToJson(this);
}
