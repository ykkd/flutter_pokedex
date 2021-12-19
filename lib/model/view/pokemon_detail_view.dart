import 'package:pokedex/data/remote/response/pokemon_detail_response.dart';
import 'package:pokedex/model/model/ability.dart';
import 'package:pokedex/model/model/stat.dart';
import 'package:pokedex/model/model/type.dart';

class PokemonDetailView {
  int id;
  String name;
  double height;
  double weight;
  Type type1;
  Type? type2;
  Ability ability1;
  Ability? ability2;
  Ability? hiddenAbility;
  Hp hp;
  Attack attack;
  Defense defense;
  SpecialAttack specialAttack;
  SpecialDefense specialDefense;
  Speed speed;

  PokemonDetailView(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.type1,
      required this.type2,
      required this.ability1,
      required this.ability2,
      required this.hiddenAbility,
      required this.hp,
      required this.attack,
      required this.defense,
      required this.specialAttack,
      required this.specialDefense,
      required this.speed});

  factory PokemonDetailView.transform(
      PokemonDetailResponse pokemonDetailResponse) {
    return PokemonDetailView(
        id: pokemonDetailResponse.id,
        name: pokemonDetailResponse.name,
        height: pokemonDetailResponse.height,
        weight: pokemonDetailResponse.weight,
        type1: Type.transform(pokemonDetailResponse.types[0]),
        type2: Type.transform(pokemonDetailResponse.types[1]),
        ability1: Ability.transform(pokemonDetailResponse.abilities[0]),
        ability2: Ability.transform(pokemonDetailResponse.abilities[1]),
        hiddenAbility: Ability.transform(pokemonDetailResponse.abilities
            .firstWhere((element) => element.isHidden)),
        hp: Hp(pokemonDetailResponse.hp.baseState),
        attack: Attack(pokemonDetailResponse.attack.baseState),
        defense: Defense(pokemonDetailResponse.defense.baseState),
        specialAttack:
            SpecialAttack(pokemonDetailResponse.specialAttack.baseState),
        specialDefense:
            SpecialDefense(pokemonDetailResponse.specialDefense.baseState),
        speed: Speed(pokemonDetailResponse.speed.baseState));
  }
}
