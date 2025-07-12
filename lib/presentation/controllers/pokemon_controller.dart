import 'package:ecommerce/domain/entities/section.dart';
import 'package:ecommerce/domain/usecases/get_pokemon_usecase.dart';

class PokemonController {
  final GetPokemonsUsecase useCase;

  PokemonController(this.useCase);

  Future<List<Section>> loadPokemons() {
    return useCase.execute();
  }
}
