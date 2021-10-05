import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizzahut/modules/Cart/models/CartItem.dart';
import 'package:pizzahut/modules/Cart/models/CartModel.dart';
import 'package:pizzahut/modules/Pizza/models/PizzaSingleViewArguments.dart';
import 'package:pizzahut/modules/Pizza/models/PizzaToppingModel.dart';
import 'package:pizzahut/modules/Pizza/widgets/PizzaSizeSelector.dart';
import 'package:pizzahut/modules/Pizza/widgets/PizzaCrustSelector.dart';
import 'package:pizzahut/modules/Pizza/widgets/PizzaExtrasSelector.dart';
import 'package:pizzahut/modules/Pizza/widgets/PizzaToppingSelector.dart';
import 'package:pizzahut/modules/Pizza/widgets/PizzaSpecialInstructions.dart';
import 'package:provider/provider.dart';

class PizzaSingleView extends StatefulWidget {
  const PizzaSingleView({Key? key}) : super(key: key);

  static const routeName = "/menus/pizza/singleView";

  @override
  _PizzaSingleViewState createState() => _PizzaSingleViewState();
}

class _PizzaSingleViewState extends State<PizzaSingleView> {

  int currentIndex = 0;

  String size = "Personal";
  String crust = "Pan";
  String extras = "none";
  String toppingHalf = "none";
  String specialInstructions = "none";
  bool mayo = false;
  int quantity = 1;

  void _handleSizeChange(String newSize){
    setState(() {
      size = newSize;
    });

    print(size);
  }
  
  void _handleCrustChange(String newCrust){
    setState(() {
      crust = newCrust;
    });

    print(crust);
  }

  void _handleExtrasChange(String newExtra){
    setState(() {
      extras = newExtra;
    });

    print(extras);
  }

  void _handleToppingChange(PizzaToppingModel toppingModel){
    setState(() {
      toppingHalf = toppingModel.toppingHalf;
      mayo = toppingModel.mayo;
    });
  }

  void _handleSpecialInstructionChange(String instruction){
    setState(() {
      specialInstructions = instruction;
    });
  }

  void _incrementQuantity(){
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity(){

    if(quantity > 1){
      setState(() {
        quantity--;
      });
    }

  }

  void _addToCart(String name){
    Provider.of<CartModel>(context, listen: false).add(
        CartItem("Pizza", "pizza chicken", 1200, "Classic", size, crust, "single", extras, "none")
    );
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PizzaSingleViewArguments;

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
          onPressed: (){},
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Card(
                    child: Column(
                      children: [
                        Image(
                            image:
                            AssetImage('images/pizza/${args.pizza.flag}')),
                        Text('${args.pizza.name}',style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold),),
                        Text('${args.pizza.description}', style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ),
                ),
              ),

              Center(
                child: Text("Selected Options",style: TextStyle(fontSize: 15 ,
                    fontWeight: FontWeight.bold, color: Theme.of(context).accentColor ), ),
              ),

              Center(
                child: Text("Size : "+ size, style: TextStyle(fontSize: 15),),
              ),

              mayo? Center(child: Text("Mayo Applied", style: TextStyle(fontSize: 15),),) : Center(),

              toppingHalf != "none"? Center(
                child: Text("Other half : " + toppingHalf, style: TextStyle(fontSize: 15),),
              ) : Center(),

              Center(
                child: Text("Crust: " + crust, style: TextStyle(fontSize: 15),),
              ),

              extras!="none" ? Center(
                child: Text("Extras: " + extras, style: TextStyle(fontSize: 15),),
              ): Center(),

              specialInstructions != "none" ? Center(
                child: Text("Special Instructions: " +specialInstructions, style: TextStyle(fontSize: 15),),
              ):Center(),

              //Spacer(),


              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: BottomNavigationBar(
                    selectedItemColor: Theme.of(context).accentColor,
                    backgroundColor: Theme.of(context).primaryColor,
                    unselectedItemColor: Colors.black,
                    type: BottomNavigationBarType.fixed,
                    iconSize: 40,
                    selectedFontSize: 20,
                    unselectedFontSize: 15,
                    currentIndex: currentIndex,
                    //currentIndex: args.navbarIndex,
                    onTap: (index) => setState(() => currentIndex = index) ,

                    items: [
                      BottomNavigationBarItem(
                        icon: Text(''),
                        label: 'Size',
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      BottomNavigationBarItem(
                        icon: Text(''),
                        label: 'Topping',
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      BottomNavigationBarItem(
                        icon: Text(''),
                        label: 'Crust',
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      BottomNavigationBarItem(
                        icon: Text(''),
                        label: 'Extras',
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      BottomNavigationBarItem(
                        icon: Text(''),
                        label: 'Others',
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ]),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: currentIndex == 0? PizzaSizeSelector(
                    onChanged: _handleSizeChange, selectedSize: size,

                  ) :
                  currentIndex == 1? PizzaToppingSelector(onChanged: _handleToppingChange,):
                  currentIndex == 2? PizzaCrustSelector(onChanged: _handleCrustChange):
                  currentIndex == 3? PizzaExtrasSelector(onChanged: _handleExtrasChange,):
                  currentIndex == 4? SpecialInstructions(onChanged: _handleSpecialInstructionChange):
                  Text("data"),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text("Rs.1437.00", style: TextStyle(fontSize: 20),),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Container(
                      width: 105,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            _decrementQuantity();
                          },
                          child: Text("-", style: TextStyle(fontSize: 30),),
                          style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Theme.of(context).accentColor),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(quantity.toString(), style: TextStyle(fontSize: 20),) ),
                      ),
                    ),
                    Container(
                      width: 105,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: (){
                            _incrementQuantity();
                          },
                          child: Text("+", style: TextStyle(fontSize: 30),),

                          style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Theme.of(context).accentColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 380,
                child: ElevatedButton(
                  onPressed: (){
                    _addToCart(args.pizza.name);
                    showDialog(context: context, builder: (BuildContext context){
                      return CupertinoAlertDialog(
                        title: const Text("Added to cart"),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const <Widget> [
                              Text("Added to cart")
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(onPressed: (){
                            Navigator.of(context).pop();
                          },
                              child: const Text("OK"))
                        ],
                      );
                    }

                    );
                  },
                  child: Text("Add to Cart",style: TextStyle(fontSize: 20),),

                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.green),
                    minimumSize: MaterialStateProperty.all(Size(180, 40)),
                  ),
                ),
              )





            ],
          ),
        ),
      ),
    );
  }
}
