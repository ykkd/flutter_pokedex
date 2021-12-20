import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/response/result.dart';
import 'package:pokedex/data/repository/pokemon_detail_view_repository.dart';
import 'package:pokedex/model/view/pokemon_detail_view.dart';
import 'package:logger/logger.dart';

final getPokemonDetailViewUseCaseProvider =
    Provider((ref) => GetPokemonDetailViewUseCaseImpl(ref.read));

abstract class GetPokemonDetailViewUseCase {
  Future<Result<PokemonDetailView>> execute(int id);
}

class GetPokemonDetailViewUseCaseImpl implements GetPokemonDetailViewUseCase {
  GetPokemonDetailViewUseCaseImpl(this._reader);

  late final PokemonDetailViewRepository _pokemonDetailViewRepository =
      _reader(pokemonDetailViewRepositoryProvider);

  final Reader _reader;

  @override
  Future<Result<PokemonDetailView>> execute(int id) {
    return _pokemonDetailViewRepository.fetchData(id);
  }
}
