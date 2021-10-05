import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:pizzahut/modules/Cart/models/CartItem.dart';

class CartModel extends ChangeNotifier{

  //internal private state of the cart
  final List<CartItem> _items = [];

  //an unmodifiable view of the items in cart
  UnmodifiableListView<CartItem> get items => UnmodifiableListView(_items);

  //getter for total price
  int get totalPrice{
    return totalPrice;
  }

  //setter for total price
  set totalPrice (int price){
    totalPrice = price;
  }

  //method to add an item to the cart
  void add(CartItem item){
    _items.add(item);
    totalPrice += item.price;

    notifyListeners();
  }

  //delete an item from the cart.
  void removeItem(CartItem item){
    _items.remove(item);
    totalPrice -= item.price;

    notifyListeners();
  }

  //method to remove all items from a class
  void removeAll(){
    _items.clear();
    totalPrice = 0;

    notifyListeners();
  }



}