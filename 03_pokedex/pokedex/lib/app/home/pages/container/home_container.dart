import 'package:flutter/material.dart';
import 'package:pokedex/app/home/data/pokemon_repository.dart';
import 'package:pokedex/app/home/pages/HomeLoading.dart';
import 'package:pokedex/app/home/pages/home_error.dart';
import 'package:pokedex/app/home/pages/home_page.dart';
import 'package:pokedex/common/models/Pokemon.dart';

class HomeContainer extends StatelessWidget {
  HomeContainer({Key? key, required this.repository}) : super(key: key);
  final IPokemonRepository repository;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: repository.getAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const HomeLoading();
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return HomePage(pokemons: snapshot.data!);
        }

        if (snapshot.hasError) {
          return HomeError(error: snapshot.error.toString());
        }

        return HomeLoading();
      },
    );
  }
}
