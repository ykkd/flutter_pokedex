import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.g.dart';

@JsonSerializable(explicitToJson: true)
class Pokemon {
  String name;
  String url;

  Pokemon({required this.name, required this.url});

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}
