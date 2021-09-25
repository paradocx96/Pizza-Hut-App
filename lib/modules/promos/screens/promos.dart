import 'package:flutter/material.dart';
import 'package:pizzahut/modules/promos/models/promo.dart';

class Promos extends StatefulWidget {
  const Promos({Key? key}) : super(key: key);

  @override
  _PromosState createState() => _PromosState();
}

class _PromosState extends State<Promos> {

  List<Promo> promos = [
    Promo(
        name: 'Triple Treat Box',
        price: 'Starting From Rs.2800.00',
        description: '2 Medium Pan Pizzas\n2 Appetizers\n2 Portions of Cinnamon Rolls',
        flag: 'Image1.jpg'),
    Promo(
        name: 'My Box Lite',
        price: 'Starting From Rs.780.00',
        description: '1 Personal Pan Pizza(Classic)\n1/2 portion of an Appetizer\n1 Sweet Treat\n1 Pet Coke (400ml)',
        flag: 'Image2.jpg'),
    Promo(
        name: 'My Box Pro',
        price: 'Starting From Rs.900.00',
        description: '1 Personal Pan Pizza(Classic Signature)\n1/2 portion of an Appetizer\n1 Sweet Treat or Lava Cake\n1 Pet Coke (400ml)',
        flag: 'Image3.jpg'),
    Promo(
        name: 'Exclusive Cyber Saving Offer',
        price: 'Rs.500.00',
        description: '1 Large Pan Pizza\n1 Class Medium Pan Pizza',
        flag: 'Image4.jpg'),
    Promo(
        name: 'Exclusive Cyber Saving Offer',
        price: 'Rs.1200.00',
        description: '1 Large Pan Pizza\n1 Class Large Pan Pizza',
        flag: 'Image5.jpg'),
    Promo(
        name: 'My Pasta Treat',
        price: 'Rs.1120.00',
        description: '1 Pasta served with\n2 slices of Garlic Bread\n1 Sweet Treat\n1 Pet Coke (400ml)',
        flag: 'Image6.jpg'),
    Promo(
        name: 'Party Combo - Signature Pizza',
        price: 'Rs.5700.00',
        description: '2 Signature Large Pan Pizzas\n3 Appetizers\n4 portions of Sweet Treats\n2 Cokes (1.5L)',
        flag: 'Image7.jpg'),
    Promo(
        name: 'Party Combo - Classic Pizza',
        price: 'Rs.4900.00',
        description: '2 Classic Large Pan Pizzas\n3 portions of Garlic Bread\n4 portions of Sweet Treats\n2 Cokes (1.5L)',
        flag: 'Image8.jpg'),
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
                child: Text('PROMOS'),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(
                    itemCount: promos.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          margin: const EdgeInsets.all(5.0),
                          child: ListTile(
                            onTap: () {},
                            title: Text(promos[index].name),
                            subtitle: Text('${promos[index].price}\n${promos[index].description}'),
                            leading: Image(
                              image: AssetImage(
                                  'assets/images/promos/${promos[index].flag}'),
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