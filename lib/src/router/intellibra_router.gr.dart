// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i14;
import 'package:flutter/material.dart' as _i13;
import 'package:intellibra/src/features/auth/presentation/signup/screens/signup.dart'
    as _i2;
import 'package:intellibra/src/features/home/domain/entities/post_entity.dart'
    as _i15;
import 'package:intellibra/src/features/home/presentation/pages/home_page.dart'
    as _i8;
import 'package:intellibra/src/features/home/presentation/pages/post.dart'
    as _i3;
import 'package:intellibra/src/features/home/presentation/pages/posts.dart'
    as _i6;
import 'package:intellibra/src/features/news/screens/news_page.dart' as _i10;
import 'package:intellibra/src/features/onboarding/onboarding.dart' as _i1;
import 'package:intellibra/src/features/scan/home.dart' as _i7;
import 'package:intellibra/src/features/scan/presentation/screens/graphics_guided_chat.dart'
    as _i4;
import 'package:intellibra/src/features/scan/presentation/screens/self_exam.dart'
    as _i9;
import 'package:intellibra/src/features/scan/presentation/screens/video_guided_check.dart'
    as _i5;
import 'package:intellibra/src/features/settings/settings.dart' as _i11;

class IntellibraRouter extends _i12.RootStackRouter {
  IntellibraRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    Welcome.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Welcome(),
      );
    },
    CreateAccount.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateAccount(),
      );
    },
    ChooseLanguage.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChooseLanguage(),
      );
    },
    ChooseTheme.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChooseTheme(),
      );
    },
    Post.name: (routeData) {
      final args = routeData.argsAs<PostArgs>();
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.Post(
          title: args.title,
          image: args.image,
          description: args.description,
          key: args.key,
        ),
      );
    },
    BreastCancerGraphicsSelfCheckRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.BreastCancerGraphicsSelfCheckPage(),
      );
    },
    BreastCancerSelfCheckVideoRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.BreastCancerSelfCheckVideoPage(),
      );
    },
    Posts.name: (routeData) {
      final args = routeData.argsAs<PostsArgs>();
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i6.Posts(
          posts: args.posts,
          key: args.key,
        ),
      );
    },
    Home.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.Home(),
      );
    },
    Landing.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.Landing(),
      );
    },
    SelfCheck.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.SelfCheck(),
      );
    },
    News.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.News(),
      );
    },
    Profile.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.Profile(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          Welcome.name,
          path: '/welcome',
        ),
        _i12.RouteConfig(
          CreateAccount.name,
          path: '/create-account',
        ),
        _i12.RouteConfig(
          ChooseLanguage.name,
          path: '/choose-language',
        ),
        _i12.RouteConfig(
          ChooseTheme.name,
          path: '/choose-theme',
        ),
        _i12.RouteConfig(
          Post.name,
          path: '/post',
        ),
        _i12.RouteConfig(
          BreastCancerGraphicsSelfCheckRoute.name,
          path: '/graphics-self-check',
        ),
        _i12.RouteConfig(
          BreastCancerSelfCheckVideoRoute.name,
          path: '/video-self-check',
        ),
        _i12.RouteConfig(
          Posts.name,
          path: '/posts',
        ),
        _i12.RouteConfig(
          Home.name,
          path: '/',
          children: [
            _i12.RouteConfig(
              '#redirect',
              path: '',
              parent: Home.name,
              redirectTo: 'landing',
              fullMatch: true,
            ),
            _i12.RouteConfig(
              Landing.name,
              path: 'landing',
              parent: Home.name,
            ),
            _i12.RouteConfig(
              SelfCheck.name,
              path: 'self-check',
              parent: Home.name,
            ),
            _i12.RouteConfig(
              News.name,
              path: 'news',
              parent: Home.name,
            ),
            _i12.RouteConfig(
              Profile.name,
              path: 'Profile',
              parent: Home.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.Welcome]
class Welcome extends _i12.PageRouteInfo<void> {
  const Welcome()
      : super(
          Welcome.name,
          path: '/welcome',
        );

  static const String name = 'Welcome';
}

/// generated route for
/// [_i2.CreateAccount]
class CreateAccount extends _i12.PageRouteInfo<void> {
  const CreateAccount()
      : super(
          CreateAccount.name,
          path: '/create-account',
        );

  static const String name = 'CreateAccount';
}

/// generated route for
/// [_i1.ChooseLanguage]
class ChooseLanguage extends _i12.PageRouteInfo<void> {
  const ChooseLanguage()
      : super(
          ChooseLanguage.name,
          path: '/choose-language',
        );

  static const String name = 'ChooseLanguage';
}

/// generated route for
/// [_i1.ChooseTheme]
class ChooseTheme extends _i12.PageRouteInfo<void> {
  const ChooseTheme()
      : super(
          ChooseTheme.name,
          path: '/choose-theme',
        );

  static const String name = 'ChooseTheme';
}

/// generated route for
/// [_i3.Post]
class Post extends _i12.PageRouteInfo<PostArgs> {
  Post({
    required String title,
    required String image,
    required String description,
    _i14.Key? key,
  }) : super(
          Post.name,
          path: '/post',
          args: PostArgs(
            title: title,
            image: image,
            description: description,
            key: key,
          ),
        );

  static const String name = 'Post';
}

class PostArgs {
  const PostArgs({
    required this.title,
    required this.image,
    required this.description,
    this.key,
  });

  final String title;

  final String image;

  final String description;

  final _i14.Key? key;

  @override
  String toString() {
    return 'PostArgs{title: $title, image: $image, description: $description, key: $key}';
  }
}

/// generated route for
/// [_i4.BreastCancerGraphicsSelfCheckPage]
class BreastCancerGraphicsSelfCheckRoute extends _i12.PageRouteInfo<void> {
  const BreastCancerGraphicsSelfCheckRoute()
      : super(
          BreastCancerGraphicsSelfCheckRoute.name,
          path: '/graphics-self-check',
        );

  static const String name = 'BreastCancerGraphicsSelfCheckRoute';
}

/// generated route for
/// [_i5.BreastCancerSelfCheckVideoPage]
class BreastCancerSelfCheckVideoRoute extends _i12.PageRouteInfo<void> {
  const BreastCancerSelfCheckVideoRoute()
      : super(
          BreastCancerSelfCheckVideoRoute.name,
          path: '/video-self-check',
        );

  static const String name = 'BreastCancerSelfCheckVideoRoute';
}

/// generated route for
/// [_i6.Posts]
class Posts extends _i12.PageRouteInfo<PostsArgs> {
  Posts({
    required List<_i15.PostEntity> posts,
    _i14.Key? key,
  }) : super(
          Posts.name,
          path: '/posts',
          args: PostsArgs(
            posts: posts,
            key: key,
          ),
        );

  static const String name = 'Posts';
}

class PostsArgs {
  const PostsArgs({
    required this.posts,
    this.key,
  });

  final List<_i15.PostEntity> posts;

  final _i14.Key? key;

  @override
  String toString() {
    return 'PostsArgs{posts: $posts, key: $key}';
  }
}

/// generated route for
/// [_i7.Home]
class Home extends _i12.PageRouteInfo<void> {
  const Home({List<_i12.PageRouteInfo>? children})
      : super(
          Home.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i8.Landing]
class Landing extends _i12.PageRouteInfo<void> {
  const Landing()
      : super(
          Landing.name,
          path: 'landing',
        );

  static const String name = 'Landing';
}

/// generated route for
/// [_i9.SelfCheck]
class SelfCheck extends _i12.PageRouteInfo<void> {
  const SelfCheck()
      : super(
          SelfCheck.name,
          path: 'self-check',
        );

  static const String name = 'SelfCheck';
}

/// generated route for
/// [_i10.News]
class News extends _i12.PageRouteInfo<void> {
  const News()
      : super(
          News.name,
          path: 'news',
        );

  static const String name = 'News';
}

/// generated route for
/// [_i11.Profile]
class Profile extends _i12.PageRouteInfo<void> {
  const Profile()
      : super(
          Profile.name,
          path: 'Profile',
        );

  static const String name = 'Profile';
}
