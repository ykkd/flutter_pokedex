import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/client/api_client.dart';
import 'package:pokedex/data/remote/response/result.dart';
import 'package:pokedex/model/view/pokemon_list_view.dart';

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
        .then((pokemonListResponse) => Result<PokemonListView>.success(
            PokemonListView.transform(pokemonListResponse)))
        .catchError((error) => Result<PokemonListView>.failure(error));
  }
}
