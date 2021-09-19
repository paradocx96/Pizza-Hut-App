import 'package:flutter/material.dart';
import 'package:pizzahut/modules/categories/models/beverage.dart';

class Beverages extends StatefulWidget {
  const Beverages({Key? key}) : super(key: key);

  @override
  _BeveragesState createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {

  List<Beverage> beverages = [
    Beverage(
        name: 'Milk Shake (300ml)',
        size: 'Vanilla / Strawberry / Chocolate',
        price: 'Starting from Rs.400.00',
        flag: 'Image1.jpg'),
    Beverage(
        name: 'Thick Mango Magic',
        size: '300ml',
        price: 'Rs.400.00',
        flag: 'Image2.jpg'),
    Beverage(
        name: 'Coca-Cola',
        size: 'Zero-400ml / 400ml / 1.5l',
        price: 'Starting from Rs.100.00',
        flag: 'Image3.jpg'),
    Beverage(
        name: 'Sprite',
        size: '400ml / 1.5l',
        price: 'Starting from Rs.120.00',
        flag: 'Image4.jpg'),
    Beverage(
        name: 'Fanta',
        size: '400ml / 1.5l',
        price: 'Starting from Rs.120.00',
        flag: 'Image5.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                height: 25,
                color: Colors.black12,
                width: MediaQuery.of(context).size.width,
                child: Text('BEVERAGES'),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(
                    itemCount: beverages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(beverages[index].name),
                            subtitle: Text('${beverages[index].size}\n${beverages[index].price}'),
                            leading: Image(
                              image: AssetImage(
                                  'assets/images/beverages/${beverages[index].flag}'),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
