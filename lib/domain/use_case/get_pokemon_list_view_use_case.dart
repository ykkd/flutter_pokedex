import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/model/model/result.dart';
import 'package:pokedex/model/view/pokemon_list_view.dart';
import 'package:pokedex/data/repository/pokemon_list_view_repository.dart';

final getPokemonListViewUseCase =
    Provider((ref) => GetPokemonListViewUseCaseImpl(ref.read));

abstract class GetPokemonListViewUseCase {
  Future<Result<PokemonListView>> execute();
}

class GetPokemonListViewUseCaseImpl implements GetPokemonListViewUseCase {
  GetPokemonListViewUseCaseImpl(this._reader);

  late final PokemonListViewRepository _pokemonListViewRepository =
      _reader(pokemonListViewRepositoryProvider);

  final Reader _reader;

  @override
  Future<Result<PokemonListView>> execute() {
    return _pokemonListViewRepository.fetchData();
  }
}
