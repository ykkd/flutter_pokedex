import 'package:pokedex/data/remote/response/type_response.dart';

abstract class Type {
  int slot;
  String name;

  Type({required this.slot, required this.name});

  factory Type.transform(TypeResponse typeResponse) {
    final typeName = typeResponse.type.name;
    switch (typeResponse.type.name) {
      case 'normal':
        return Normal(typeResponse.slot, typeName);
      case 'fire':
        return Fire(typeResponse.slot, typeName);
      case 'water':
        return Water(typeResponse.slot, typeName);
      case 'electric':
        return Electric(typeResponse.slot, typeName);
      case 'grass':
        return Grass(typeResponse.slot, typeName);
      case 'ice':
        return Ice(typeResponse.slot, typeName);
      case 'fighting':
        return Fighting(typeResponse.slot, typeName);
      case 'poison':
        return Poison(typeResponse.slot, typeName);
      case 'ground':
        return Ground(typeResponse.slot, typeName);
      case 'flying':
        return Flying(typeResponse.slot, typeName);
      case 'psychic':
        return Psychic(typeResponse.slot, typeName);
      case 'bug':
        return Bug(typeResponse.slot, typeName);
      case 'rock':
        return Rock(typeResponse.slot, typeName);
      case 'ghost':
        return Ghost(typeResponse.slot, typeName);
      case 'dragon':
        return Dragon(typeResponse.slot, typeName);
      case 'dark':
        return Dark(typeResponse.slot, typeName);
      case 'steel':
        return Steel(typeResponse.slot, typeName);
      case 'fairy':
        return Fairy(typeResponse.slot, typeName);
      default:
        return Undefined();
    }
  }
}

class Normal extends Type {
  Normal(int slot, String name) : super(slot: slot, name: name);
}

class Fire extends Type {
  Fire(int slot, String name) : super(slot: slot, name: name);
}

class Water extends Type {
  Water(int slot, String name) : super(slot: slot, name: name);
}

class Electric extends Type {
  Electric(int slot, String name) : super(slot: slot, name: name);
}

class Grass extends Type {
  Grass(int slot, String name) : super(slot: slot, name: name);
}

class Ice extends Type {
  Ice(int slot, String name) : super(slot: slot, name: name);
}

class Fighting extends Type {
  Fighting(int slot, String name) : super(slot: slot, name: name);
}

class Poison extends Type {
  Poison(int slot, String name) : super(slot: slot, name: name);
}

class Ground extends Type {
  Ground(int slot, String name) : super(slot: slot, name: name);
}

class Flying extends Type {
  Flying(int slot, String name) : super(slot: slot, name: name);
}

class Psychic extends Type {
  Psychic(int slot, String name) : super(slot: slot, name: name);
}

class Bug extends Type {
  Bug(int slot, String name) : super(slot: slot, name: name);
}

class Rock extends Type {
  Rock(int slot, String name) : super(slot: slot, name: name);
}

class Ghost extends Type {
  Ghost(int slot, String name) : super(slot: slot, name: name);
}

class Dragon extends Type {
  Dragon(int slot, String name) : super(slot: slot, name: name);
}

class Dark extends Type {
  Dark(int slot, String name) : super(slot: slot, name: name);
}

class Steel extends Type {
  Steel(int slot, String name) : super(slot: slot, name: name);
}

class Fairy extends Type {
  Fairy(int slot, String name) : super(slot: slot, name: name);
}

class Undefined extends Type {
  Undefined() : super(slot: 0, name: '');
}
