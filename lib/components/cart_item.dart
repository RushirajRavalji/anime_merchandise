import 'package:commercial_app/models/actfig.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final Actfig actfig;
  CartItem({super.key, required this.actfig});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(widget.actfig.imagePath),
      title: Text(widget.actfig.name),
    );
  }
}
