import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

@immutable
class PostModel {
  const PostModel({
    this.title,
    this.image,
    this.description,
    this.content,
    this.points,
    this.authorChoice,
    this.createdAt,
  });

  factory PostModel.fromMap(Map<String, dynamic> data) => PostModel(
        title: data['title'] as String?,
        image: data['image'] as String?,
        description: data['description'] as String?,
        content: data['content'] as String?,
        points: data['points'] as int?,
        authorChoice: data['authorChoice'] as bool?,
        createdAt: data['createdAt'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PostModel].
  factory PostModel.fromJson(String data) {
    return PostModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final String? title;
  final String? image;
  final String? description;
  final String? content;
  final int? points;
  final bool? authorChoice;
  final int? createdAt;

  @override
  String toString() {
    return 'PostModel(title: $title, image: $image, description: $description, content: $content, points: $points, authorChoice: $authorChoice, createdAt: $createdAt)';
  }

  Map<String, dynamic> toMap() => {
        'title': title,
        'image': image,
        'description': description,
        'content': content,
        'points': points,
        'authorChoice': authorChoice,
        'createdAt': createdAt,
      };

  /// `dart:convert`
  ///
  /// Converts [PostModel] to a JSON string.
  String toJson() => json.encode(toMap());

  PostModel copyWith({
    String? title,
    String? image,
    String? description,
    String? content,
    int? points,
    bool? authorChoice,
    int? createdAt,
  }) {
    return PostModel(
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
      content: content ?? this.content,
      points: points ?? this.points,
      authorChoice: authorChoice ?? this.authorChoice,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PostModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      title.hashCode ^
      image.hashCode ^
      description.hashCode ^
      content.hashCode ^
      points.hashCode ^
      authorChoice.hashCode ^
      createdAt.hashCode;
}
