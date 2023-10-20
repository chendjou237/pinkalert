// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostModel {
  const PostModel({
    required this.title,
    required this.image,
    required this.description,
    required this.content,
    required this.points,
    required this.authorChoice,
  });
  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      title: map['title'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
      content: map['content'] as String,
      points: map['points'] as String,
      authorChoice: map['authorChoice'] as bool,
    );
  }

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);
  final String title;
  final String image;
  final String description;
  final String content;
  final String points;
  final bool authorChoice;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'description': description,
      'content': content,
      'points': points,
      'authorChoice': authorChoice,
    };
  }

  String toJson() => json.encode(toMap());

  PostModel copyWith({
    String? title,
    String? image,
    String? description,
    String? content,
    String? points,
    bool? authorChoice,
  }) {
    return PostModel(
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
      content: content ?? this.content,
      points: points ?? this.points,
      authorChoice: authorChoice ?? this.authorChoice,
    );
  }

  @override
  String toString() {
    return 'PostEntity(title: $title, image: $image, description: $description, content: $content, points: $points, authorChoice: $authorChoice)';
  }
}
