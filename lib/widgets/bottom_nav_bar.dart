import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui/screens/article_screen.dart';
import 'package:news_app_ui/screens/discover_screen.dart';
import 'package:news_app_ui/screens/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index ;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              icon: const Icon(Icons.home),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(DiscoverScreen.routeName);
              },
              icon: const Icon(Icons.search),
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
               if (kDebugMode) {
                 print('no yet design');
               }
              },
              icon: const Icon(Icons.person),
            ),
            label: 'Person'),
      ],
    );
  }
}