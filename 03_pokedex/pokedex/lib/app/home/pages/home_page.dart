import 'package:flutter/material.dart';
import 'package:pokedex/common/models/Pokemon.dart';

class HomePage extends StatelessWidget {
  final List<Pokemon> pokemons;
  const HomePage({Key? key, required this.pokemons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: pokemons.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text(pokemons[index].name));
          }),
    );
  }
}
