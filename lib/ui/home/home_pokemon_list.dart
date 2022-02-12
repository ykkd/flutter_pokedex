import 'package:auto_route/auto_route.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokedex/model/model/pokemon.dart';
import 'package:pokedex/ui/route/app_route.dart';

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

class PokemonListItem extends HookConsumerWidget {
  final Pokemon pokemon;

  const PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final context = useContext();
    final router = AutoRouter.of(context);

    return InkWell(
      onTap: () {
        Logger().d('onTap: PokemonListItem');
        router.push(PokemonDetailPageRoute(id: pokemon.id));
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
                      'No.${pokemon.id}',
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
