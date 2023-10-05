import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intellibra/src/common/common.dart';
import 'package:intellibra/src/configs/intellibra_constants.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';
import 'package:intellibra/src/features/home/data/datasources/post_data.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  void _handleFloatingActionButton() {
    //show a toast
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Chatbot comming soon'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _handleFloatingActionButton,
        child: const Icon(
          IconlyBroken.chat,
          size: 18,
        ),
      ),
      appBar: AppBar(
        title: const Text(Constants.appName),
        leading: const SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              32.vGap,
              const Text(
                'Welcome to ${Constants.appName}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              16.vGap,
              const Text(
                '''You understand that everyday count when it comes to early breast cancer detection. it's great that you take responsibility for your health and check your breasts reguarly. We're here to help you with that.''',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              16.vGap,
              IntellibraButtonMedium(
                text: 'self check now',
                action: () {},
              ),
              32.vGap,
              Row(
                children: [
                  Text(
                    'Newest Posts',
                    style: context.titleLg,
                  ),
                  const Spacer(),
                  Text(
                    'View all',
                    style: context.bodySm.copyWith(
                      color: context.scheme.primary,
                    ),
                  ),
                ],
              ),
              16.vGap,
              PostSectionContentsWidget(
                posts: newnestPosts,
              ),
              32.vGap,
              Row(
                children: [
                  Text(
                    'Popular Posts',
                    style: context.titleLg,
                  ),
                  const Spacer(),
                  Text(
                    'View all',
                    style: context.bodySm.copyWith(
                      color: context.scheme.primary,
                    ),
                  ),
                ],
              ),
              16.vGap,
              PostSectionContentsWidget(
                posts: popularPosts,
              ),
              32.vGap,
              Row(
                children: [
                  Text(
                    'Recommended Posts',
                    style: context.titleLg,
                  ),
                  const Spacer(),
                  Text(
                    'View all',
                    style: context.bodySm.copyWith(
                      color: context.scheme.primary,
                    ),
                  ),
                ],
              ),
              16.vGap,
              PostSectionContentsWidget(
                posts: recommendedPosts,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostSectionContentsWidget extends StatelessWidget {
  const PostSectionContentsWidget({
    required this.posts,
    super.key,
  });

  final List<Map<String, String>> posts;

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
          return Container(
            height: 200,
            width: 300,
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: LinearGradient(
                end: Alignment.bottomCenter,
                begin: Alignment.center,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(1),
                ],
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(posts[index]['imageLink']!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(32),
            ),
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  posts[index]['title']!,
                  style: context.titleLg,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
