import 'package:commercial_app/models/actfig.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of Merch for sale
  List<Actfig> merchShop = [
    Actfig(
        name: 'Naruto',
        price: '2500',
        imagePath: 'assets/images/naruto.png',
        description: 'Cool Looking Naruto Action '),
    Actfig(
        name: 'Sasuke',
        price: '2500',
        imagePath: 'assets/images/sasuke.png',
        description: 'Cool Looking Sasuke Action '),
    Actfig(
        name: 'Girl',
        price: '1500',
        imagePath: 'assets/images/girl.png',
        description: 'Cool Looking Girl Action '),
    Actfig(
        name: 'Zaraki',
        price: '3500',
        imagePath: 'assets/images/zaraki.png',
        description: 'Cool Looking zaraki Action '),
    Actfig(
        name: 'Luffy',
        price: '2000',
        imagePath: 'assets/images/luffy.png',
        description: 'Cool Looking Luffy Action '),
  ];
  // List of items in user cart

  List<Actfig> userCart = [];

  // get list of shoes for sale
  List<Actfig> getActFig() {
    return merchShop;
  }

  //get cart
  List<Actfig> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCard(Actfig actfig) {
    userCart.add(actfig);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Actfig actfig) {
    userCart.remove(actfig);
    notifyListeners();
  }
}
