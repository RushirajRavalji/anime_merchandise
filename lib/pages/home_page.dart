import 'package:commercial_app/components/bottom_nav_bar.dart';
import 'package:commercial_app/pages/cart_page.dart';
import 'package:commercial_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

/// The main page of the application that handles navigation
/// between different sections (e.g., Shop and Cart).
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Tracks the currently selected index in the bottom navigation bar
  int _selectedIndex = 0;

  /// Method to update the selected index when a bottom bar item is tapped.
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages to display based on the selected index
  final List<Widget> _pages = [
    const ShopPage(), // Shop page
    const CartPage(), // Cart page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sets the background color of the page
      backgroundColor: Colors.grey[300],

      // Bottom navigation bar
      bottomNavigationBar: BottomNavBar(
        onTabChange: navigateBottomBar, // Passes index changes to update UI
      ),

      // App bar with a menu icon that opens a drawer
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu), // Menu icon
              onPressed: () {
                // Opens the drawer when the menu button is pressed
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),

      // Drawer containing navigation options
      drawer: Drawer(
        backgroundColor: Colors.grey[900], // Sets the drawer background color
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Aligns widgets vertically
          children: [
            Column(
              children: [
                // Logo displayed at the top of the drawer
                DrawerHeader(
                  child: Image.asset('assets/images/logo.png'),
                ),
                // "Home" navigation option
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.home,
                        color: Colors.white), // Home icon
                    title: const Text(
                      'Home',
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                    onTap: () {
                      // Closes the drawer when tapped
                      Navigator.pop(context);
                    },
                  ),
                ),
                // "Cart" navigation option
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag_rounded,
                        color: Colors.white), // Cart icon
                    title: const Text(
                      'Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      // Closes the drawer when tapped
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            // "Logout" option at the bottom of the drawer
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
              child: ListTile(
                leading: const Icon(Icons.logout,
                    color: Colors.white), // Logout icon
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Closes the drawer when tapped
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),

      // Displays the selected page based on the current index
      body: _pages[_selectedIndex],
    );
  }
}
