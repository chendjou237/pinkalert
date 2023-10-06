import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/features/home/domain/entities/post_entity.dart';
import 'package:intellibra/src/router/intellibra_router.gr.dart' as routes;

class News extends StatelessWidget {
  News({super.key});

  final List<PostEntity> posts = [
    const PostEntity(
      title: 'New Study Shows Promise for Breast Cancer Treatment',
      image: 'https://picsum.photos/200/300',
      description:
          'A new study has shown promising results for a new breast cancer treatment...',
    ),
    const PostEntity(
      title: 'Breast Cancer Awareness Month: What You Need to Know',
      image: 'https://picsum.photos/200/300',
      description:
          'October is Breast Cancer Awareness Month. Here are some important things to know...',
    ),
    const PostEntity(
      title: 'Breast Cancer Survivors Share Their Stories',
      image: 'https://picsum.photos/200/300',
      description:
          'In honor of Breast Cancer Awareness Month, we spoke with several breast cancer survivors...',
    ),
    const PostEntity(
      title: 'New Study Shows Promise for Breast Cancer Treatment',
      image: 'https://picsum.photos/200/300',
      description:
          'A new study has shown promising results for a new breast cancer treatment...',
    ),
    const PostEntity(
      title: 'Breast Cancer Awareness Month: What You Need to Know',
      image: 'https://picsum.photos/200/300',
      description:
          'October is Breast Cancer Awareness Month. Here are some important things to know...',
    ),
    const PostEntity(
      title: 'Breast Cancer Survivors Share Their Stories',
      image: 'https://picsum.photos/200/300',
      description:
          'In honor of Breast Cancer Awareness Month, we spoke with several breast cancer survivors...',
    ),
  ];

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
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    opacity: .5,
                    image: NetworkImage(posts[index].image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      posts[index].title,
                      style: context.titleLg,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      posts[index].description,
                      style: context.titleMd,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
