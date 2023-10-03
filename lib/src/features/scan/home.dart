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
        floatingActionButton: FloatingActionButton(
          onPressed: _handleFloatingActionButton,
          child: const Icon(
            IconlyBroken.chat,
            size: 18,
          ),
        ),
        routes: const [
          routes.Home(),
          routes.SelfCheck(),
          routes.Awareness(),
      //    routes.IntelliRecords(),
          routes.Profile(),
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
                label: 'selfcheck',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconlyBroken.shield_done,
                  size: 18,
                ),
                // backgroundColor: Palette.dark,
                label: 'awareness',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  IconlyBroken.folder,
                  size: 18,
                ),
                // backgroundColor: Palette.dark,
                label: 'records',
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

  void _handleFloatingActionButton(){
    //show a toast
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Chatbot comming soon'),
      ),
    );
  }
}
