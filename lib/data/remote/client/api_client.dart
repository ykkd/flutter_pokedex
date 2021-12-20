import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex/data/remote/response/pokemon_detail_response.dart';
import 'package:pokedex/data/remote/response/pokemon_list_response.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

final dioProvider = Provider((ref) => Dio());

final apiClientProvider = Provider((ref) => ApiClient(ref.read(dioProvider)));

@RestApi(baseUrl: 'https://pokeapi.co/api/v2/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/pokemon')
  Future<PokemonListResponse> pokemonList();

  @GET('pokemon/{id}')
  Future<PokemonDetailResponse> pokemonDetail(@Path('id') int id);
}
