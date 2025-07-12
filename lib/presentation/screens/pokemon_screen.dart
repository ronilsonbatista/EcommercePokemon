import 'package:ecommerce/domain/entities/section.dart';
import 'package:ecommerce/presentation/controllers/pokemon_controller.dart';
import 'package:flutter/material.dart';

class PokemonScreen extends StatelessWidget {
  final PokemonController controller;

  const PokemonScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokémons')),
      body: FutureBuilder<List<Section>>(
        future: controller.loadPokemons(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Pokémons found.'));
          }

          final pokemons = snapshot.data!;
          return ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons[index];
              return ListTile(
                // leading: Image.network(pokemon.imageUrl, width: 50, height: 50),
                title: Text(pokemon.section ?? ""),
                subtitle: Text('ID: ${pokemon.id}'),
              );
            },
          );
        },
      ),
    );
  }
}
