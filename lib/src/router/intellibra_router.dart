import 'package:auto_route/auto_route.dart';
import 'package:intellibra/src/features/auth/presentation/signup/screens/signup.dart';
import 'package:intellibra/src/features/news/screens/news_page.dart';
import 'package:intellibra/src/features/home/presentation/pages/home_page.dart';
import 'package:intellibra/src/features/home/presentation/pages/post.dart';
import 'package:intellibra/src/features/home/presentation/pages/posts.dart';
import 'package:intellibra/src/features/onboarding/onboarding.dart';
import 'package:intellibra/src/features/scan/home.dart';
import 'package:intellibra/src/features/scan/presentation/screens/graphics_guided_chat.dart';
import 'package:intellibra/src/features/scan/presentation/screens/self_exam.dart';
import 'package:intellibra/src/features/scan/presentation/screens/video_guided_check.dart';
import 'package:intellibra/src/features/settings/settings.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: Welcome,
      path: '/welcome',
    ),
    AutoRoute(
      page: CreateAccount,
      initial: true,
      path: '/create-account',
    ),
    AutoRoute(
      page: ChooseLanguage,
      path: '/choose-language',
    ),
    AutoRoute(
      page: ChooseTheme,
      path: '/choose-theme',
    ),
    AutoRoute(
      page: Post,
      path: '/post',
    ),
    AutoRoute(
      page: BreastCancerGraphicsSelfCheckPage,
      path: '/graphics-self-check',
    ),
    AutoRoute(
      page: BreastCancerSelfCheckVideoPage,
      path: '/video-self-check',
    ),
    AutoRoute(
      page: Posts,
      path: '/posts',
    ),
    AutoRoute(
      page: Home,
      path: '/',
      children: [
        AutoRoute(
          page: Landing,
          initial: true,
          path: 'landing',
        ),
        AutoRoute(
          page: SelfCheck,
          path: 'self-check',
        ),
        AutoRoute(
          page: News,
          path: 'news',
        ),
        /* AutoRoute(
          page: IntelliRecords,
          path: 'medical-records',
        ), */
        AutoRoute(
          page: Profile,
          path: 'Profile',
        ),
      ],
    ),
  ],
)
class $IntellibraRouter {}
