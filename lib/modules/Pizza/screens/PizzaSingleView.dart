import 'package:flutter/material.dart';
import 'package:pizzahut/modules/Pizza/models/PizzaSingleViewArguments.dart';
import 'package:pizzahut/modules/Pizza/widgets/PizzaSizeSelector.dart';

class PizzaSingleView extends StatefulWidget {
  const PizzaSingleView({Key? key}) : super(key: key);

  static const routeName = "/menus/pizza/singleView";

  @override
  _PizzaSingleViewState createState() => _PizzaSingleViewState();
}

class _PizzaSingleViewState extends State<PizzaSingleView> {

  int currentIndex = 0;

  String size = "personal";

  void _handleSizeChange(String newSize){
    setState(() {
      size = newSize;
    });

    print(size);
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
                        Text('${args.pizza.name}'),
                        Text('${args.pizza.description}')
                      ],
                    ),
                  ),
                ),
              ),


              BottomNavigationBar(
                  selectedItemColor: Theme.of(context).accentColor,
                  backgroundColor: Theme.of(context).primaryColor,
                  unselectedItemColor: Colors.black,
                  type: BottomNavigationBarType.fixed,
                  iconSize: 40,
                  selectedFontSize: 15,
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
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: currentIndex == 0? PizzaSizeSelector(
                    onChanged: _handleSizeChange, selectedSize: size,

                  ) :
                  currentIndex == 1? Text("Topping"):
                  currentIndex == 2? Text("Crust"):
                  currentIndex == 3? Text("Extras"):
                  currentIndex == 4? Text("Other"):
                  Text("data"),
                ),
              )





            ],
          ),
        ),
      ),
    );
  }
}
