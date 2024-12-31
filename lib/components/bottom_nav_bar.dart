import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey, // Color of inactive icons
        activeColor: Colors.amber, // Color of active icons
        tabActiveBorder: Border.all(color: Colors.white), // Active tab border
        tabBackgroundColor:
            Colors.grey.shade100, // Background color for active tab
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20, // Radius for tab borders
        onTabChange: (value) {
          if (onTabChange != null) {
            onTabChange!(value); // Properly call the callback
          }
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
