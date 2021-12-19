import 'package:pokedex/data/remote/response/ability_response.dart';

class Ability {
  String name;
  bool isHidden;
  int slot;

  Ability({required this.name, required this.isHidden, required this.slot});

  factory Ability.transform(AbilityResponse abilityResponse) {
    return Ability(
        name: abilityResponse.ability.name,
        isHidden: abilityResponse.isHidden,
        slot: abilityResponse.slot);
  }
}
