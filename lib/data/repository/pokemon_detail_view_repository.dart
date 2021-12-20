import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/client/api_client.dart';
import 'package:pokedex/data/remote/response/result.dart';
import 'package:pokedex/model/view/pokemon_detail_view.dart';

final pokemonDetailViewRepositoryProvider =
    Provider((ref) => PokemonDetailViewRepositoryImpl(ref.read));

abstract class PokemonDetailViewRepository {
  Future<Result<PokemonDetailView>> fetchData(int id);
}

class PokemonDetailViewRepositoryImpl implements PokemonDetailViewRepository {
  PokemonDetailViewRepositoryImpl(this._reader);

  final Reader _reader;
  late final ApiClient _apiClient = _reader(apiClientProvider);

  @override
  Future<Result<PokemonDetailView>> fetchData(int id) {
    return _apiClient
        .pokemonDetail(id)
        .then((pokemonDetailResponse) => Result<PokemonDetailView>.success(
            PokemonDetailView.transform(pokemonDetailResponse)))
        .catchError((error) {
      return Result<PokemonDetailView>.failure(error);
    });
  }
}
