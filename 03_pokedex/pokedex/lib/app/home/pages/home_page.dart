import 'package:flutter/material.dart';
import 'package:pokedex/app/details/pages/container/detail_container.dart';
import 'package:pokedex/common/models/Pokemon.dart';

class HomePage extends StatelessWidget {
  final List<Pokemon> pokemons;
  const HomePage({Key? key, required this.pokemons, required this.onItemTap})
      : super(key: key);
  final Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: pokemons.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                onTap: () => onItemTap(
                      "/details",
                      DetailArguments(name: pokemons[index].name),
                    ),
                title: Text(pokemons[index].name));
          }),
    );
  }
}
