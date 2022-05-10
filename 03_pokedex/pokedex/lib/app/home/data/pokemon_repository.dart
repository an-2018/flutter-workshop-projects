import 'package:pokedex/common/models/Pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAll();
}

class PokemonRepository implements IPokemonRepository {
  @override
  Future<List<Pokemon>> getAll() {
    return Future.delayed(
      Duration(seconds: 1),
    );
  }
}
