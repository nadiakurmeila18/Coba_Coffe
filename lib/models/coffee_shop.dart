import 'package:coffe_coba/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Matcha' ,
      price: "15.000", 
      imagePath: 'assets/images/matcha.png'
    ),
    Coffee(
      name: 'Kopi Hitam' ,
      price: "5.000k", 
      imagePath: 'assets/images/kopihitam.png'
    ),
    Coffee(
      name: 'Espresso' ,
      price: "10.000", 
      imagePath: 'assets/images/espreso.png'
    ),
    Coffee(
      name: 'Latte' ,
      price: "15.000", 
      imagePath: 'assets/images/latte.png'
    ),
  ];
  
  List<Coffee> _userCart = [];


  List<Coffee> get coffeeShop => _shop;


  List<Coffee> get userCart =>  _userCart;


  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }


  void removeItemFormCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}