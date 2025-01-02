import 'package:commercial_app/components/merch_tile.dart';
import 'package:commercial_app/models/actfig.dart';
import 'package:commercial_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search bar container
          Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.fromLTRB(25, 15, 25, 0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text(
                  'Search',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Spacer(),
                const Icon(Icons.search, color: Colors.grey),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // "Hot Picks" row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // List of merchandise
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // Create an Actfig instance
                Actfig actfig = value.getActFig()[index];
                return MerchTile(actfig: actfig);
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(color: Color(0xFFD6D6D6)),
          ),
        ],
      ),
    );
  }
}
