import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/data/remote/response/stat_response.dart';
import 'package:pokedex/data/remote/response/type_response.dart';

import 'ability_response.dart';

part 'pokemon_detail_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PokemonDetailResponse {
  List<AbilityResponse> abilities;
  double height;
  double weight;
  int id;
  String name;
  List<StatResponse> stats;
  List<TypeResponse> types;

  PokemonDetailResponse(this.abilities, this.height, this.weight, this.id,
      this.name, this.stats, this.types);

  StatResponse get hp =>
      stats.firstWhere((element) => element.stat.name == 'hp');

  StatResponse get attack =>
      stats.firstWhere((element) => element.stat.name == 'attack');

  StatResponse get defense =>
      stats.firstWhere((element) => element.stat.name == 'defense');

  StatResponse get specialAttack =>
      stats.firstWhere((element) => element.stat.name == 'special-attack');

  StatResponse get specialDefense =>
      stats.firstWhere((element) => element.stat.name == 'special-defense');

  StatResponse get speed =>
      stats.firstWhere((element) => element.stat.name == 'speed');
}
