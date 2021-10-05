import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut/modules/Cart/models/CartModel.dart';
import 'package:provider/provider.dart';

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
        child: Column(
          children: [
            Text("Cart"),
            Consumer<CartModel>(
                builder: (context, cart, child){
                  if(cart.items.isEmpty){
                    return Text("Cart is empty");
                  }
                  else{
                    return ListView.builder(
                      itemCount: cart.items.length,
                      scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                      return Padding(padding:  EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(10))),
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(top:12.0),
                            child: ListTile(
                              title: Text(cart.items[index].name),
                              trailing: IconButton(onPressed: (){
                                cart.removeItem(cart.items[index]);
                              },
                                  icon: const Icon(Icons.delete)),
                            ),
                          ),
                        ),
                      );
                    });
                  }

                }
            ),
            Consumer<CartModel>(builder: (context, cart, child){
              return Column(
                children: [
                  Text("Rs." + cart.totPrice.toString() +"/="),
                  ElevatedButton(onPressed: (){
                    cart.removeAll();
                  },
                      child: Text("Clear cart"))
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
