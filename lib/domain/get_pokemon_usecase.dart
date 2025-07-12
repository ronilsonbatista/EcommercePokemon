import 'package:ecommerce/domain/pokemon.dart';
import 'package:ecommerce/domain/pokemon_repository.dart';

class GetPokemonsUsecase {
  final PokemonRepository repository;

  GetPokemonsUsecase(this.repository);

  Future<List<Section>> execute() {
    return repository.fetchPokemons();
  }
}
