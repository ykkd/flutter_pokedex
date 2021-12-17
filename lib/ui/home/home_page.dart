import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/ui/home/home_view_model.dart';
import 'package:pokedex/ui/home/pokemon_list.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(homeViewModelNotifierProvider);
    final pokemonListView = ref.watch(
        homeViewModelNotifierProvider.select((value) => value.pokemonListView));

    useEffect(() {
      viewModel.fetchPokemonListView();
      return;
    }, []);

    return pokemonListView == null
        ? const SizedBox()
        : Scaffold(
            appBar: AppBar(
              title: const Text("Pokedex")
            ),
            body: PokemonList(pokemons: pokemonListView.pokemons),
          );
  }
}
