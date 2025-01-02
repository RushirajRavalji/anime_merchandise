import 'package:commercial_app/models/actfig.dart';
import 'package:commercial_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MerchTile extends StatefulWidget {
  final Actfig actfig;
  final void Function()? onTap;

  const MerchTile({
    super.key,
    required this.actfig,
    this.onTap,
  });

  @override
  State<MerchTile> createState() => _MerchTileState();
}

class _MerchTileState extends State<MerchTile> {
  void addActFigToCart() {
    Provider.of<Cart>(context, listen: false).addItemToCard(widget.actfig);

    // Alert to the user
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Added to Cart"),
        content: const Text("Check your cart."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Merch Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Center(
              child: Image.asset(
                widget.actfig.imagePath,
                width: 250,
                height: 250,
              ),
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Center(
              child: Text(
                "Action Figure Description",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
            ),
          ),

          // Merch Name, Price, and Plus Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Merch Name and Price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.actfig.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "${widget.actfig.price} ₹",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                // Add Button
                GestureDetector(
                  onTap: addActFigToCart,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.amber,
                    ),
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
