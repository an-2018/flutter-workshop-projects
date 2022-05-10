class Pokemon {
  final String name;
  final String image;
  final String num;
  final List<String> type;
  final int id;

  Pokemon({
    required this.num,
    required this.type,
    required this.id,
    required this.name,
    required this.image,
  });

  factory Pokemon.fromMap(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      image: json['img'],
      num: json['num'],
      id: json['id'],
      type: (json['type'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }
}
