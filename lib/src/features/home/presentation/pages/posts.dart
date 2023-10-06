import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';
import 'package:intellibra/src/features/home/domain/entities/post_entity.dart';
import 'package:intellibra/src/features/home/presentation/widgets/article_post_widget.dart';
import 'package:intellibra/src/router/intellibra_router.gr.dart' as routes;

class Posts extends StatefulWidget {
  const Posts({required this.posts, super.key});
  final List<PostEntity> posts;

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<PostEntity> _filteredPosts = [];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredPosts = widget.posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Posts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search Posts',
                  labelStyle: context.bodySm,
                ),
                onChanged: (value) {
                  setState(() {
                    _filteredPosts = widget.posts
                        .where(
                          (post) => post.title
                              .toLowerCase()
                              .contains(value.toLowerCase()),
                        )
                        .toList();
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => 32.vGap,
                itemCount: _filteredPosts.length,
                itemBuilder: (context, index) {
                  final post = _filteredPosts[index];
                  return GestureDetector(
                    onTap: () {
                      context.pushRoute(
                        routes.Post(
                          title: post.title,
                          image: post.image,
                          description: post.description,
                        ),
                      );
                    },
                    child: ArticlePostWidget(
                      title: post.title,
                      imageLink: post.image,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
