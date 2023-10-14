import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intellibra/src/features/news/data/mock_news.dart';
import 'package:intellibra/src/features/news/widgets/news_widget.dart';
import 'package:intellibra/src/router/intellibra_router.gr.dart' as routes;

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breast Cancer News'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 600,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 100,
          ),
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to PostEntity details page
                context.pushRoute(
                  routes.Post(
                    title: posts[index].title,
                    image: posts[index].image,
                    description: posts[index].description,
                  ),
                );
              },
              child: NewsWidget(post: posts[index]),
            );
          },
        ),
      ),
    );
  }
}
