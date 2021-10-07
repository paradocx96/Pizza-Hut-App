import 'package:flutter/material.dart';
import 'package:pizzahut/modules/promos/models/promo_pizza.dart';

class PromoPizzaSelect extends StatefulWidget {
  // final String name;
  // final String size;
  // final String flag;

  // const PromoPizzaSelect(
  //     {Key? key, required this.name, required this.size, required this.flag})
  //     : super(key: key);

  const PromoPizzaSelect({Key? key}) : super(key: key);

  @override
  _PromoPizzaSelectState createState() => _PromoPizzaSelectState();
}

class _PromoPizzaSelectState extends State<PromoPizzaSelect> {
  List<PromoPizza> promoPizzas = [
    PromoPizza(
      name: "BBQ Chicken",
      size: "Pan Medium",
      flag: "bbq_chicken_pizza.jpg",
    ),
    PromoPizza(
      name: "Black Chicken",
      size: "Pan Medium",
      flag: "black_chicken_pizza.jpg",
    ),
    PromoPizza(
      name: "Butter Chicken Masala",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Cheese Lovers",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Chicken Hawaiian",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Chicken Sausage Meat With Nai Miris",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Devilled Beef",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Devilled Chicken",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Double Chicken & Cheese Fiesta",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Hot & Spicy Chicken",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Hot Butter Cuttlefish",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Hot Garlic Prawns",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Meat Lovers - Chicken",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Popcorn Chicken Pizza",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Popcorn Veggie",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Prawn with Chicken Bacon & Jalapeno",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Sausage Delight",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Spicy Seafood",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Spicy Veggie with Paneer",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Sri Lankan Spicy Chicken Pizza",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Super Supreme",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Tandoori Chicken",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "The Ultimate Chicken Treat",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
    PromoPizza(
      name: "Veggie Supreme",
      size: "Pan Medium",
      flag: "hotspicy_chicken.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 440,
      child: ListView.builder(
          itemCount: promoPizzas.length,
          itemExtent: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ListTile(
                    minLeadingWidth: 100,
                    onTap: () {},
                    title: Text(promoPizzas[index].name),
                    subtitle: Text(promoPizzas[index].size),
                    leading: Image(
                        image: AssetImage(
                            'images/pizza/${promoPizzas[index].flag}')),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
