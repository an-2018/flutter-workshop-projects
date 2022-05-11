import 'package:pokedex/common/constants/api_constants.dart';
import 'package:pokedex/common/exceptions/Failure.dart';
import 'package:pokedex/common/models/Pokemon.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAll();
}

class PokemonRepository implements IPokemonRepository {
  Uri url = Uri.parse(ApiConstants.allPokemonURL);

  @override
  Future<List<Pokemon>> getAll() async {
    try {
      final response = await http.get(url);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        final list = json['pokemon'] as List<dynamic>;
        return list.map((e) => Pokemon.fromMap(e)).toList();
      }
    } catch (e) {
      throw Failure('Nao foi possivel carregar os dados');
    }
    return Future.delayed(
      Duration(seconds: 1),
    );
  }
}
