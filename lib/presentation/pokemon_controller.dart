import 'package:ecommerce/domain/get_pokemon_usecase.dart';
import 'package:ecommerce/domain/pokemon.dart';

class PokemonController {
  final GetPokemonsUsecase useCase;

  PokemonController(this.useCase);

  Future<List<Section>> loadPokemons() {
    return useCase.execute();
  }
}
