import 'package:pokedex/data/remote/response/pokemon_response.dart';

class Pokemon {
  String name;
  String url;

  Pokemon(this.name, this.url);

  factory Pokemon.transform(PokemonResponse pokemonResponse) {
    return Pokemon(pokemonResponse.name, pokemonResponse.url);
  }

  int get id => int.parse(url.substring(
      'https://pokeapi.co/api/v2/pokemon/'.length, url.length - 1));

  String get thumbnailImageUrl =>
      'https://github.com/fanzeyi/pokemon.json/blob/master/thumbnails/${id.toString().padLeft(3, '0')}.png?raw=true';
}
