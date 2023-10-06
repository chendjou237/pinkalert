import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intellibra/src/router/intellibra_router.gr.dart' as routes;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsScaffold(
        routes: [
          const routes.Landing(),
          const routes.SelfCheck(),
          routes.News(),
          //  routes.IntelliRecords(),
          const routes.Profile(),
        ],
        builder: (context, child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        bottomNavigationBuilder: (context, router) {
          return BottomNavigationBar(
            //elevation: 12,
            // selectedItemColor: Palette.primary,
            //unselectedItemColor: Palette.primary.withOpacity(.55),
            currentIndex: router.activeIndex,
            onTap: (index) => router.setActiveIndex(index),
            type: BottomNavigationBarType.fixed,

            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  IconlyBroken.heart,
                  size: 18,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconlyBroken.scan,
                  size: 18,
                ),
                // backgroundColor: Palette.dark,
                label: 'self check',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconlyBroken.info_circle,
                  size: 18,
                ),
                // backgroundColor: Palette.dark,
                label: 'news',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconlyBroken.user_2,
                  size: 18,
                ),
                // backgroundColor: Palette.dark,
                label: 'profile',
              ),
            ],
          );
        },
      ),
    );
  }
}
