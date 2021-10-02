import 'package:flutter/material.dart';
import 'package:pizzahut/modules/Pizza/models/PizzaModel.dart';
import 'package:pizzahut/modules/Pizza/models/PizzaToppingModel.dart';

class PizzaToppingSelector extends StatefulWidget {
  const PizzaToppingSelector({Key? key, required this.onChanged}) : super(key: key);

  final ValueChanged<PizzaToppingModel> onChanged;

  @override
  _PizzaToppingSelectorState createState() => _PizzaToppingSelectorState();
}

class _PizzaToppingSelectorState extends State<PizzaToppingSelector> {

  List<PizzaModel> pizzas = [
    PizzaModel(
        name: "BBQ Chicken", range: "Classic", flag: "bbq_chicken_pizza.jpg",
        description: "This a description of the pizza. This a description of the pizza."
    ),
    PizzaModel(
        name: "Black Chicken",
        range: "Classic",
        flag: "black_chicken_pizza.jpg",
        description: "This a description of the pizza. This a description of the pizza."
    ),
    PizzaModel(
        name: "Hot and Spicy Chicken",
        range: "Classic",
        flag: "hotspicy_chicken.jpg",
        description: "This a description of the pizza. This a description of the pizza."),
  ];

  PizzaToppingModel toppingModel = PizzaToppingModel(false, "none");
  bool isMayo = false;
  bool isHalf = false;

  changeMayo(bool value){
    setState(() {
      //change the mayo state in topping model
      toppingModel.mayo = !isMayo;
      //flip the local isMayo
      isMayo = !isMayo;

      print("Mayo local: "+isMayo.toString());
      print("Mayo topping model: "+toppingModel.mayo.toString());

    });
  }

  flipIsHalf(bool value){

    setState(() {
      //flip isHalf
      isHalf = !isHalf;
      //is half is false flip it to true
      if(isHalf == false){

      }
      else{
        toppingModel.toppingHalf = "none";
      }
    });

  }

  changeHalf(String half){
    setState(() {
      toppingModel.toppingHalf = half;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text("Mayo Base "),
                    Switch(
                      value: isMayo,
                      onChanged: changeMayo,
                      activeColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Half and half "),
                    Switch(
                      value: isHalf,
                      onChanged: flipIsHalf,
                      activeColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
                Container(
                  child: isHalf?Text("Here is other halves") : Text("No other halves"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
