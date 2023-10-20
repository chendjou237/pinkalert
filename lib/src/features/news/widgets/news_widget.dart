import 'package:flutter/material.dart';
import 'package:intellibra/src/extensions/build_context.dart';
import 'package:intellibra/src/extensions/num.dart';
import 'package:intellibra/src/features/home/data/models/post_model.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    required this.post,
    super.key,
  });

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: NetworkImage(post.image)),
            ),
          ),
        ),
        20.hGap,
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                post.title,
                style: context.theme.textTheme.titleMedium!
                    .copyWith(color: context.scheme.primary),
              ),
              10.vGap,
              Text(
                post.description,
                style: context.theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
