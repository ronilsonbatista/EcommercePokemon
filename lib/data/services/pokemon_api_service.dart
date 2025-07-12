import 'dart:convert';

import 'package:http/http.dart' as http;

class PokemonApiService {
  final _baseUrl = Uri.parse(
    'https://private-a37d8e-pokestorm.apiary-mock.com/pokemons',
  );

  Future<List<Map<String, dynamic>>> fetchPokemons() async {
    final response = await http.get(
      _baseUrl,
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load users');
    }

    final decoded = jsonDecode(response.body) as List;
    return decoded.cast<Map<String, dynamic>>();
  }
}
