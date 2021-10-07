import 'package:flutter/material.dart';
import 'package:pizzahut/modules/Landing/routes/LandingPageArguments.dart';
import 'package:pizzahut/modules/MainMenu/screens/MainMenu.dart';
import 'package:pizzahut/modules/homepage/screens/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  /*final int index;
  LandingPage(this.index);*/

  static const routeName = "/menus/landing";

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int currentIndex = 0;

  final screens = [
    Home(),
    MainMenu(),
    Center(child: Text("Track Order"),),
    Center(child: Text("More"),),
  ];


  @override
  Widget build(BuildContext context) {

    //final args = ModalRoute.of(context)!.settings.arguments as LandingPageArguments;
    //int currentIndex = args.navbarIndex;
    //setState(() => {currentIndex = args.navbarIndex} );

    //image asset for logog
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
        body: screens[currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          tooltip: 'Increment',
          child: Icon(Icons.search),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: 'Menu',
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining),
                label: 'Order Tracking',
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'More',
                backgroundColor: Theme.of(context).primaryColor,
              )
            ])
    );
  }
}
