import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/model/model/result.dart';
import 'package:pokedex/model/view/pokemon_list_view.dart';
import 'package:pokedex/data/remote/api_client.dart';

final pokemonListViewRepositoryProvider =
    Provider((ref) => PokemonListViewRepositoryImpl(ref.read));

abstract class PokemonListViewRepository {
  Future<Result<PokemonListView>> fetchData();
}

class PokemonListViewRepositoryImpl implements PokemonListViewRepository {
  PokemonListViewRepositoryImpl(this._reader);

  final Reader _reader;

  late final ApiClient _apiClient = _reader(apiClientProvider);

  @override
  Future<Result<PokemonListView>> fetchData() {
    return _apiClient
        .pokemonList()
        .then((pokemonListView) =>
            Result<PokemonListView>.success(pokemonListView))
        .catchError((error) => Result<PokemonListView>.failure(error));
  }
}
