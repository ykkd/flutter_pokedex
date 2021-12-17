import 'package:pokedex/data/remote/response/pokemon_list_response.dart';
import 'package:pokedex/model/model/pokemon.dart';

class PokemonListView {
  List<Pokemon> pokemons;

  PokemonListView(this.pokemons);

  factory PokemonListView.transform(PokemonListResponse pokemonListResponse) {
    return PokemonListView(
        pokemonListResponse.results.map((e) => Pokemon.transform(e)).toList());
  }
}
