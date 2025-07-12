import 'package:ecommerce/domain/entities/section.dart';
import 'package:ecommerce/domain/repositories/pokemon_repository.dart';

class GetPokemonsUsecase {
  final PokemonRepository repository;

  GetPokemonsUsecase(this.repository);

  Future<List<Section>> execute() {
    return repository.fetchPokemons();
  }
}
