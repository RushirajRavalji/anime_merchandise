import 'package:commercial_app/models/actfig.dart';
import 'package:flutter/material.dart';

class MerchTile extends StatelessWidget {
  final Actfig actfig;
  MerchTile({super.key, required this.actfig});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 25), // Add `const` to improve performance.
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
        children: [
          // Merch Pics
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Center(
              child: Image.asset(
                actfig.imagePath,
                width: 250, // Set the desired width
                height: 250, // Set the desired height
              ),
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                "Action figure Description",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14, // Adjusted font size
                ),
              ),
            ),
          ),

          // Merch Name, Price, and Plus Button in a Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Spread the items across the row
              children: [
                // Merch Name and Price (left side)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      actfig.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16, // Adjusted font size
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0), // Space between name and price
                      child: Text(
                        actfig.price + ' ₹',
                        style: const TextStyle(
                          fontSize: 16, // Adjusted font size
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),

                // Plus Button (right side)
                Container(
                  padding: const EdgeInsets.all(12), // Adjusted padding
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
