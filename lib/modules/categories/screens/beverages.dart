import 'package:flutter/material.dart';
import 'package:pizzahut/modules/atc/screens/normal_food.dart';
import 'package:pizzahut/modules/categories/models/beverage.dart';

class Beverages extends StatefulWidget {
  const Beverages({Key? key}) : super(key: key);

  @override
  _BeveragesState createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  List<Beverage> beverages = [
    Beverage(
        name: 'Strawberry Milk Shake (300ml)',
        price: 'Rs.480.00',
        description:
            'Go red with the delicious flavour of strawberry, mixed and blended into a creamy shake.',
        flag: 'assets/images/beverages/Image1.jpg'),
    Beverage(
        name: 'Double Chocolate Milk Shake (300ml)',
        price: 'Rs.480.00',
        description:
            'Take a sip of a creamy concoction of double chocolate and lose yourself in a chocolate coma.',
        flag: 'assets/images/beverages/Image2.jpg'),
    Beverage(
        name: 'Thick Mango Magic (300ml)',
        price: 'Rs.400.00',
        description:
            'A tropical blend of the juiciest mango flavour creating the perfect beverage to soothe your taste-buds.',
        flag: 'assets/images/beverages/Image3.jpg'),
    Beverage(
        name: 'Vanilla Milk Shake (300ml)',
        price: 'Rs.400.00',
        description:
            'Go classic on a hot day, sit back and relax with a cold vanilla shake made to quench more than the thirst in you.',
        flag: 'assets/images/beverages/Image4.jpg'),
    Beverage(
        name: 'Pet Coca-Cola',
        price: 'Rs.120.00',
        description: '400ml',
        flag: 'assets/images/beverages/Image5.jpg'),
    Beverage(
        name: 'Coca-Cola',
        price: 'Rs.300.00',
        description: '1.5l',
        flag: 'assets/images/beverages/Image6.jpg'),
    Beverage(
        name: 'Coke Zero',
        price: 'Rs.100.00',
        description: '400ml',
        flag: 'assets/images/beverages/Image7.jpg'),
    Beverage(
        name: 'Sprite',
        price: 'Rs.300.00',
        description: '1.5l',
        flag: 'assets/images/beverages/Image8.jpg'),
    Beverage(
        name: 'Pet Sprite',
        price: 'Rs.120.00',
        description: '400ml',
        flag: 'assets/images/beverages/Image9.jpg'),
    Beverage(
        name: 'Fanta',
        price: 'Rs.300.00',
        description: '1.5l',
        flag: 'assets/images/beverages/Image10.jpg'),
    Beverage(
        name: 'Pet Fanta Orange',
        price: 'Rs.120.00',
        description: '400ml',
        flag: 'assets/images/beverages/Image11.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFF4EFEF)),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              /*Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
              ),*/
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text(
                  'BEVERAGES ----------------------------------------------------',
                  style: TextStyle(height: 1.5, fontSize: 20),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 210,
                child: ListView.builder(
                    itemCount: beverages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => NormalFood(
                                          name: beverages[index].name,
                                          price: beverages[index].price,
                                          description:
                                              beverages[index].description,
                                          flag: beverages[index].flag)));
                            },
                            title: Text(beverages[index].name),
                            subtitle: Text(beverages[index].price),
                            leading: Image(
                              image: AssetImage(beverages[index].flag),
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
