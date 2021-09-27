import 'package:flutter/material.dart';

class PizzaCrustSelector extends StatefulWidget {
  const PizzaCrustSelector({Key? key, required this.onChanged}) : super(key: key);

  final ValueChanged<String> onChanged;

  @override
  _PizzaCrustSelectorState createState() => _PizzaCrustSelectorState();
}

class _PizzaCrustSelectorState extends State<PizzaCrustSelector> {

  String activeCrust = "pan";

  void changeCrust(String crust){
    widget.onChanged(crust);
  }


  @override
  Widget build(BuildContext context) {

    double containerHeight = 90.0;

    return Container(child: Center(
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              changeCrust("pan");
              activeCrust = 'pan';
            },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeCrust == 'pan'? Theme.of(context).accentColor: Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeCrust == "pan"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Pan", style: TextStyle(
                        fontSize: 20,
                        color: activeCrust == "pan"? Colors.white: Colors.black
                    ),),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          GestureDetector(onTap:(){
            changeCrust("stuffed");
            activeCrust ='stuffed';
          },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeCrust == "stuffed"? Theme.of(context).accentColor : Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeCrust == "stuffed"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Stuffed", style: TextStyle(
                        fontSize: 20,
                        color: activeCrust == "stuffed"? Colors.white: Colors.black
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
              changeCrust("sausage");
              activeCrust = "sausage";
            },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeCrust == "sausage"? Theme.of(context).accentColor: Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeCrust== "sausage"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Sausage", style: TextStyle(
                        fontSize: 20,
                        color: activeCrust == "sausage"? Colors.white: Colors.black),),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),

          Spacer(),

          GestureDetector(
            onTap: (){
              changeCrust("thin");
              activeCrust = "thin";
            },
            child: Container(
              height: containerHeight,
              width: containerHeight,
              child: Card(
                elevation: 5,
                color: activeCrust == "thin"? Theme.of(context).accentColor: Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Icon(Icons.local_pizza,
                      color: activeCrust== "thin"? Colors.white: Colors.black,
                    ),
                    Spacer(),
                    Text("Thin", style: TextStyle(
                        fontSize: 20,
                        color: activeCrust == "thin"? Colors.white: Colors.black),),
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
