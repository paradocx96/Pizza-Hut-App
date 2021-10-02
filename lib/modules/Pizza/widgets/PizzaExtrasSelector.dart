import 'package:flutter/material.dart';

class PizzaExtrasSelector extends StatefulWidget {
  const PizzaExtrasSelector({Key? key,required this.onChanged}) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  _PizzaExtrasSelectorState createState() => _PizzaExtrasSelectorState();
}

class _PizzaExtrasSelectorState extends State<PizzaExtrasSelector> {

  String activeItem = "cheese";

  void changeExtra(String extra){
    widget.onChanged(extra);
  }


  @override
  Widget build(BuildContext context) {

    double containerHeight = 90.0;

    return Container(child: Center(
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              changeExtra("cheese");
              activeItem = 'cheese';
            },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeItem == 'cheese'? Theme.of(context).accentColor: Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeItem == "cheese"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Cheese", style: TextStyle(
                        fontSize: 18,
                        color: activeItem == "cheese"? Colors.white: Colors.black
                    ),),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(onTap:(){
            changeExtra("olives");
            activeItem ='olives';
          },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeItem == "olives"? Theme.of(context).accentColor : Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeItem == "olives"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Olives", style: TextStyle(
                        fontSize: 18,
                        color: activeItem == "olives"? Colors.white: Colors.black
                    ),),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),

          Spacer(),
          GestureDetector(
            onTap: (){
              changeExtra("onions");
              activeItem = "onions";
            },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeItem == "onions"? Theme.of(context).accentColor: Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeItem== "onions"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Onions", style: TextStyle(
                        fontSize: 18,
                        color: activeItem == "onions"? Colors.white: Colors.black),),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),

          Spacer(),

          GestureDetector(
            onTap: (){
              changeExtra("capsicum");
              activeItem = "capsicum";
            },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeItem == "capsicum"? Theme.of(context).accentColor: Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeItem== "capsicum"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Capsicum", style: TextStyle(
                        fontSize: 18,
                        color: activeItem == "capsicum"? Colors.white: Colors.black),),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    ),);
  }
}