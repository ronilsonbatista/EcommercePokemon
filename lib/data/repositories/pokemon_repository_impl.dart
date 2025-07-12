import 'package:ecommerce/data/services/pokemon_api_service.dart';
import 'package:ecommerce/domain/entities/section.dart';
import 'package:ecommerce/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApiService _apiService;

  PokemonRepositoryImpl(this._apiService);

  @override
  Future<List<Section>> fetchPokemons() async {
    final jsonList = await _apiService.fetchPokemons();
    return jsonList.map(Section.fromJson).toList();
  }
}
