import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/model/view/pokemon_list_view.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

final dioProvider = Provider((ref) => Dio());

final apiClientProvider = Provider((ref) => ApiClient(ref.read(dioProvider)));

@RestApi(baseUrl: "https://pokeapi.co/api/v2/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/pokemon")
  Future<PokemonListView> pokemonList();
}
