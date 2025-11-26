class Skills {
  final String images;
  final String title;
  final String subtitle;

  Skills({required this.images, required this.title, required this.subtitle});

  factory Skills.fromJson(Map<String, dynamic> json) {
    return Skills(
      images: json['images'],
      title: json['title'],
      subtitle: json['subtitle'],
    );
  }
}
