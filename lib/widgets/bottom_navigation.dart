import 'dart:ui';
import 'package:flutter/material.dart';

import '../helpers/colors.dart';
import 'bottom_nav_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: C0C60A5_Blue,
      currentIndex: 0,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      type: BottomNavigationBarType.fixed,
      //iconSize: 5.0,
      items: [
        BottomNavigationBarItem(
          icon: BottomNavItem(icon: Icons.playlist_add),
          title: Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 6.0,
            ),
            child: Text(
              "Prepare",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: BottomNavItem(icon: Icons.create),
          title: Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 6.0,
            ),
            child: Text(
              "Plan",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: BottomNavItem(icon: Icons.shopping_cart),
          title: Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 6.0,
            ),
            child: Text(
              "Pick",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: BottomNavItem(icon: Icons.local_dining),
          title: Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
              bottom: 6.0,
            ),
            child: Text(
              "Produce",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
