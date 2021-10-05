import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  static const routeName = "/cart/cartView";

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {

    //image for the pizza hut logo
    Widget pizzaHutLogo_image = Container(
      height: 50,
      child: Image.asset("images/pizza_hut_logo.png"),
    );

    return Scaffold(
      appBar: AppBar(
        title: pizzaHutLogo_image,
        leading: IconButton(
        icon: Icon(Icons.navigate_before_sharp),
    onPressed: (){
          Navigator.pop(context);
    },
    ),
    actions: [
    IconButton(
    icon: Icon(Icons.delivery_dining),
    onPressed: (){},
    ),
    IconButton(
    icon: Icon(Icons.shopping_cart),
    onPressed: (){},
    ),
    ],
    ),
      body: Container(
        child: Text('Cart'),
      ),
    );
  }
}
