import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intellibra/src/extensions/num.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';
import 'package:intellibra/src/features/home/presentation/widgets/article_post_widget.dart';
import 'package:intellibra/src/router/intellibra_router.gr.dart' as routes;

class PostSectionContentsWidget extends StatelessWidget {
  const PostSectionContentsWidget({
    required this.posts,
    super.key,
  });

  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: posts.length,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) => 32.hGap,
        itemBuilder: (BuildContext context, int index) {
          return Hero(
            tag: posts[index].title,
            child: GestureDetector(
              onTap: () {
                context.pushRoute(
                  routes.Post(
                    title: posts[index].title,
                    image: posts[index].image,
                    description: posts[index].description,
                  ),
                );
              },
              child: ArticlePostWidget(
                title: posts[index].title,
                imageLink: posts[index].image,
              ),
            ),
          );
        },
      ),
    );
  }
}
