import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/model/pokemon.dart';
import 'package:logger/logger.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> pokemons;

  const PokemonList({Key? key, required this.pokemons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return PokemonListItem(pokemon: pokemons[index]);
        },
        separatorBuilder: (context, index) {
          return const Divider(height: 1);
        },
        itemCount: pokemons.length);
  }
}

class PokemonListItem extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Logger().d("onTap: PokemonListItem");
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              pokemon.thumbnailImageUrl,
              width: 48,
              height: 48,
            ),
            const SizedBox(width: 16),
            SizedBox(
                height: 48,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "No." + pokemon.id.toString(),
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      StringUtils.capitalize(pokemon.name),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
