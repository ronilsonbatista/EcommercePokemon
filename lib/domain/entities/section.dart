import 'package:ecommerce/domain/entities/pokemon.dart';

class Section {
  final int id;
  final String section;
  final int price;
  final List<Pokemon> pokemons;

  Section({
    required this.id,
    required this.section,
    required this.price,
    required this.pokemons,
  });

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
      id: json['id'] as int,
      section: json['section'] as String,
      price: json['price'] as int,
      pokemons:
          (json['pokemons'] as List<dynamic>?)
              ?.map((e) => Pokemon.fromJson(e))
              .toList() ??
          [],
    );
  }
}
