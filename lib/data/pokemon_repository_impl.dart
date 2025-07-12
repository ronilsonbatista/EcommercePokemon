import 'package:ecommerce/data/pokemon_api_service.dart';
import 'package:ecommerce/domain/pokemon.dart';
import 'package:ecommerce/domain/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApiService apiService;

  PokemonRepositoryImpl(this.apiService);

  @override
  Future<List<Section>> fetchPokemons() async {
    final data = await apiService.fetchPokemonsFromApi();
    return data.map(Section.fromJson).toList() ?? [];
  }
}
