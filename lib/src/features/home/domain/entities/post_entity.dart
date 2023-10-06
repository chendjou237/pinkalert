import 'dart:convert';

class PostEntity {

  factory PostEntity.fromMap(Map<String, String> map) {
    return PostEntity(
      title: map['title']! ,
      image: map['imageLink'] !,
      description: map['description']!,
    );
  }

  factory PostEntity.fromJson(String source) =>
      PostEntity.fromMap(json.decode(source) as Map<String, String>);
  const PostEntity({
    required this.title,
    required this.image,
    required this.description,
  });
  final String title;
  final String image;
  final String description;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
      'description': description,
    };
  }

  String toJson() => json.encode(toMap());
}
