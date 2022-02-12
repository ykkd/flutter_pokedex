import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokedex/domain/use_case/get_pokemon_detail_view_use_case.dart';
import 'package:pokedex/model/view/pokemon_detail_view.dart';

final pokemonDetailViewModelNotifierProvider =
    ChangeNotifierProvider((ref) => PokemonDetailViewModel(ref.read));

class PokemonDetailViewModel extends ChangeNotifier {
  PokemonDetailViewModel(this._reader);

  final Reader _reader;
  late final GetPokemonDetailViewUseCase _getPokemonDetailViewUseCase =
      _reader(getPokemonDetailViewUseCaseProvider);

  PokemonDetailView? _pokemonDetailView;

  PokemonDetailView? get pokemonDetailView => _pokemonDetailView;

  Future<void> fetchPokemonDetailView(int id) async {
    return _getPokemonDetailViewUseCase.execute(id).then((value) {
      value.when(success: (data) {
        _pokemonDetailView = data;
      }, failure: (error) {
        Logger().e(error.message);
      });
    }).whenComplete(notifyListeners);
  }
}
