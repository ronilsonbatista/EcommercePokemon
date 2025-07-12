import 'package:ecommerce/domain/entities/section.dart';

abstract class PokemonRepository {
  Future<List<Section>> fetchPokemons();
}
