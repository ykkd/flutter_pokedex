import 'package:auto_route/annotations.dart';
import 'package:pokedex/ui/home/home_page.dart';
import 'package:pokedex/ui/pokemon_detail/pokemon_detail_page.dart';

export 'app_route.gr.dart';

@AdaptiveAutoRouter(replaceInRouteName: '', routes: <AutoRoute>[
  AutoRoute(path: '/', page: HomePage, initial: true),
  AutoRoute(path: '/pokemonDetail', page: PokemonDetailPage)
])
class $AppRouter {}
