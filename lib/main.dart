import 'package:ecommerce/data/repositories/pokemon_repository_impl.dart';
import 'package:ecommerce/data/services/pokemon_api_service.dart';
import 'package:ecommerce/domain/usecases/get_pokemon_usecase.dart';
import 'package:ecommerce/presentation/controllers/pokemon_controller.dart';
import 'package:ecommerce/presentation/screens/pokemon_screen.dart';
import 'package:flutter/material.dart';

void main() {
  final apiService = PokemonApiService();
  final repository = PokemonRepositoryImpl(apiService);
  final useCase = GetPokemonsUsecase(repository);
  final controller = PokemonController(useCase);

  runApp(MyApp(controller: controller));
}

class MyApp extends StatelessWidget {
  final PokemonController controller;

  const MyApp({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PokemonScreen(controller: controller),
    );
  }
}
