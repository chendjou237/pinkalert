import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intellibra/src/common/common.dart';
import 'package:intellibra/src/configs/intellibra_constants.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';
import 'package:intellibra/src/features/home/data/datasources/post_data.dart';
import 'package:intellibra/src/features/home/presentation/widgets/posts_section_widget.dart';

import 'package:intellibra/src/router/intellibra_router.gr.dart' as routes;

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
                action: () {
                  context.router.pushNamed('/home/self-check');
                },
              ),
              32.vGap,
              Row(
                children: [
                  Text(
                    'Newest Posts',
                    style: context.titleLg,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(routes.Posts(posts: allPostsE()));
                    },
                    child: Text(
                      'View all',
                      style: context.bodySm.copyWith(
                        color: context.scheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              16.vGap,
              PostSectionContentsWidget(
                posts: newnestPostsE(),
              ),
              32.vGap,
              Row(
                children: [
                  Text(
                    'Popular Posts',
                    style: context.titleLg,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(routes.Posts(posts: allPostsE()));
                    },
                    child: Text(
                      'View all',
                      style: context.bodySm.copyWith(
                        color: context.scheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              16.vGap,
              GestureDetector(
                child: PostSectionContentsWidget(
                  posts: popularPostsE(),
                ),
              ),
              32.vGap,
              Row(
                children: [
                  Text(
                    'Recommended Posts',
                    style: context.titleLg,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      context.pushRoute(routes.Posts(posts: allPostsE()));
                    },
                    child: Text(
                      'View all',
                      style: context.bodySm.copyWith(
                        color: context.scheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              16.vGap,
              PostSectionContentsWidget(
                posts: recommendedPostsE(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
