import 'dart:convert';

import 'package:http/http.dart' as http;

class PokemonApiService {
  Future<List<Map<String, dynamic>>> fetchPokemonsFromApi() async {
    final response = await http.get(
      Uri.parse('https://private-a37d8e-pokestorm.apiary-mock.com/pokemons'),
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(json.decode(response.body));
    } else {
      throw Exception('Failed to load users');
    }
  }
}
