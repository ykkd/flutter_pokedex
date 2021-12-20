// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:pokedex/ui/home/home_page.dart' as _i1;
import 'package:pokedex/ui/pokemon_detail/pokemon_detail_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PokemonDetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailPageRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.PokemonDetailPage(args.id, key: args.key));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomePageRoute.name, path: '/'),
        _i3.RouteConfig(PokemonDetailPageRoute.name, path: '/pokemonDetail')
      ];
}

/// generated route for [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i2.PokemonDetailPage]
class PokemonDetailPageRoute
    extends _i3.PageRouteInfo<PokemonDetailPageRouteArgs> {
  PokemonDetailPageRoute({required int id, _i5.Key? key})
      : super(name,
            path: '/pokemonDetail',
            args: PokemonDetailPageRouteArgs(id: id, key: key));

  static const String name = 'PokemonDetailPageRoute';
}

class PokemonDetailPageRouteArgs {
  const PokemonDetailPageRouteArgs({required this.id, this.key});

  final int id;

  final _i5.Key? key;
}
