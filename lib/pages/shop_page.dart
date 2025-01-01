import 'package:commercial_app/components/merch_tile.dart';
import 'package:commercial_app/models/actfig.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Aligns children to the start
        children: [
          // Search bar container
          Container(
            padding: const EdgeInsets.all(12.0), // Inner padding for content
            margin: const EdgeInsets.fromLTRB(
                25, 15, 25, 0), // Horizontal and top margin
            decoration: BoxDecoration(
              color: Colors.grey[100], // Background color of the search bar
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Row(
              children: [
                const Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 16, color: Colors.grey), // Slightly larger text
                ),
                const Spacer(), // Pushes the icon to the right
                const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          const SizedBox(
              height: 20), // Space between search bar and "Hot Picks" row
          // Container(
          //   padding: const EdgeInsets.all(16.0), // Adds padding around the text
          //   child: const Text(
          //     "Power comes in response to your determination to fight through hardship.",
          //     textAlign: TextAlign.center, // Centers the text
          //     style: TextStyle(
          //       fontSize: 12, // Font size for the message
          //       color: Colors.grey, // Text color
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 12,
          ),
          // "Hot Picks" row
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 25.0), // Adds horizontal padding
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Space between the texts
              children: [
                const Text(
                  'Hot Picks 🔥🔥',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20), // Bold and larger font
                ),
                const Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500), // Styled "See all" text
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //creating a merch
                Actfig actfig = Actfig(
                    name: 'Naruto',
                    price: "2500",
                    imagePath: 'assets/images/naruto.png',
                    description: 'cool');
                return MerchTile(
                  actfig: actfig,
                );
              },
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25, right: 25))
        ],
      ),
    );
  }
}
