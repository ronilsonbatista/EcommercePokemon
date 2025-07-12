import 'package:ecommerce/domain/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Section>> fetchPokemons();
}
