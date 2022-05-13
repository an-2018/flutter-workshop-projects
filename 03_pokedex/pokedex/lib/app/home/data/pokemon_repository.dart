import 'package:pokedex/common/constants/api_constants.dart';
import 'package:pokedex/common/exceptions/Failure.dart';
import 'package:pokedex/common/models/Pokemon.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAll();
}

class PokemonRepository implements IPokemonRepository {
  //https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json
  Uri url = Uri.parse(ApiConstants.allPokemonURL);

  @override
  Future<List<Pokemon>> getAll() async {
    final pokemons = <Pokemon>[
      Pokemon(
        id: 1,
        image: "http://www.serebii.net/pokemongo/pokemon/001.png",
        name: 'Bulbassaur',
        num: '1',
        type: ["Grass", "Poison"],
      ),
    ];
    return Future.value(
      pokemons,
    );
  }
}
