class Pokemon {
  final int id;
  final String? name;
  final List<String> types;
  final List<String> weakness;
  final String? description;
  final String? imageUrl;

  Pokemon({
    required this.id,
    required this.name,
    required this.types,
    required this.weakness,
    this.description,
    this.imageUrl,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'] as int,
      name: json['name'] as String ?? "",
      types: List<String>.from(json['types'] ?? []),
      weakness: List<String>.from(json['weakness'] ?? []),
      description: json['description'] as String?,
      imageUrl: json['image'] as String?,
    );
  }
}
