import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/ui/pokemon_detail/pokemon_detail_view_model.dart';

class PokemonDetailPage extends HookConsumerWidget {
  const PokemonDetailPage(this.id, {Key? key}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(pokemonDetailViewModelNotifierProvider);
    final pokemonDetailView = ref.watch(pokemonDetailViewModelNotifierProvider
        .select((value) => value.pokemonDetailView));

    useEffect(() {
      viewModel.fetchPokemonDetailView(id);
      return;
    }, []);

    if (pokemonDetailView != null) {
      return Column(
        children: [Image.network(pokemonDetailView.imageUrl)],
      );
    } else {
      return const SizedBox();
    }
  }
}
