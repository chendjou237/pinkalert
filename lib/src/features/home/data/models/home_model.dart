// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:intellibra/src/features/home/data/models/post_model.dart';

class HomeModel {
  final List<PostModel> recommendedArticles;
  final List<PostModel> popularArticles;
  final List<PostModel> recentArticles;
  HomeModel({
    required this.recommendedArticles,
    required this.popularArticles,
    required this.recentArticles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recomndedArticles': recommendedArticles.map((x) => x.toMap()).toList(),
      'popularArticles': popularArticles.map((x) => x.toMap()).toList(),
      'recentArticles': recentArticles.map((x) => x.toMap()).toList(),
    };
  }

  factory HomeModel.fromMap(Map<String, dynamic> map) {
    return HomeModel(
      recommendedArticles: List<PostModel>.from(
        (map['recomndedArticles'] as List<int>).map<PostModel>(
          (x) => PostModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      popularArticles: List<PostModel>.from(
        (map['popularArticles'] as List<int>).map<PostModel>(
          (x) => PostModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      recentArticles: List<PostModel>.from(
        (map['recentArticles'] as List<int>).map<PostModel>(
          (x) => PostModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeModel.fromJson(String source) =>
      HomeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
