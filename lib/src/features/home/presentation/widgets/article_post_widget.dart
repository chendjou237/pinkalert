
import 'package:flutter/material.dart';
import 'package:intellibra/src/extensions/build_context.dart';

class ArticlePostWidget extends StatelessWidget {
  const ArticlePostWidget({
    required this.title,
    required this.imageLink,
    super.key,
  });

  final String title;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
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
          image: NetworkImage(imageLink),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(32),
      ),
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            title,
            style: context.titleLg,
          ),
        ],
      ),
    );
  }
}
