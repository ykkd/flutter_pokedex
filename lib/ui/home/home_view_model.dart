import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:pokedex/domain/use_case/get_pokemon_list_view_use_case.dart';
import 'package:pokedex/model/view/pokemon_list_view.dart';

final homeViewModelNotifierProvider =
    ChangeNotifierProvider((ref) => HomeViewModel(ref.read));

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._reader);

  final Reader _reader;
  late final GetPokemonListViewUseCase _getPokemonListViewUseCase =
      _reader(getPokemonListViewUseCaseProvider);

  PokemonListView? _pokemonListView;

  PokemonListView? get pokemonListView => _pokemonListView;

  Future<void> fetchPokemonListView() async {
    return _getPokemonListViewUseCase.execute().then((value) {
      value.when(success: (data) {
        _pokemonListView = data;
      }, failure: (error) {
        Logger().e(error.message);
      });
    }).whenComplete(() {
      notifyListeners();
    });
  }
}
