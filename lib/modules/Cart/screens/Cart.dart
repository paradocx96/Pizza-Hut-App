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
    icon: Icon(Icons.shopping_cart,color: Theme.of(context).accentColor,),
    onPressed: (){},
    ),
    ],
    ),
      body: Container(
        child: Column(
          children: [
            //Text("Cart"),
            Consumer<CartModel>(
                builder: (context, cart, child){
                  if(cart.items.isEmpty){
                    return Center(child: Text("Cart is empty", style: TextStyle(fontSize: 40),),);
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
                              title: cart.items[index].itemType == 'Pizza'?
                              Text(cart.items[index].name +" " +
                                  cart.items[index].topping+ " topping " +
                                  cart.items[index].pizzaSize + " " +
                                  cart.items[index].crust + " "
                                  //cart.items[index].extras == 'none'? "": ""
                              )   :
                              Text(cart.items[index].name),
                              subtitle: Text("Rs."+cart.items[index].price.toString() + "/="),
                              trailing: IconButton(onPressed: (){

                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (BuildContext context){
                                  return CupertinoAlertDialog(
                                    title: const Text("Remove item"),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const <Widget>[
                                          Text("Do you want to remove this item from the cart?")
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.of(context).pop();
                                      },
                                          child: const Text("No")
                                      ),
                                      TextButton(onPressed: (){
                                        //remove the selected item
                                        cart.removeItem(cart.items[index]);
                                        Navigator.of(context).pop();
                                      },
                                          child: const Text("Yes")
                                      )
                                    ],
                                  );
                                });

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
                  Text("Total Price",
                    style: TextStyle(fontSize: 25,color: Theme.of(context).accentColor),),
                  Text("Rs." + cart.totPrice.toString() +"/=",style: TextStyle(fontSize: 20),),
                  ElevatedButton(onPressed: (){

                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context){
                      return CupertinoAlertDialog(
                        title: const Text("Remove all items from the cart?"),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const <Widget>[
                              Text("This cannot be undone")
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          },
                              child: const Text("No")
                          ),
                          TextButton(onPressed: (){
                            cart.removeAll();
                            Navigator.of(context).pop();
                          },
                              child: const Text("Yes")
                          )
                        ],
                      );
                    }
                    );

                  },
                      child: Text("Clear cart"),

                    style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Theme.of(context).accentColor),
                      minimumSize: MaterialStateProperty.all(Size(180, 40)),
                    ),
                  )
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
