import 'package:flutter/material.dart';
import 'package:pizzahut/modules/promos/models/promo.dart';
import 'package:pizzahut/modules/promos/screens/promo_single.dart';

class Promos extends StatefulWidget {
  const Promos({Key? key}) : super(key: key);

  @override
  _PromosState createState() => _PromosState();
}

class _PromosState extends State<Promos> {
  List<Promo> promos = [
    Promo(
      name: 'Triple Treat Box',
      price: 'Rs.3200.00',
      description:
          '2 Medium Pan Pizzas\n2 Appetizers\n2 Portions of Cinnamon Rolls',
      flag: 'assets/images/promos/Image1.jpg',
      type: '1',
    ),
    Promo(
      name: 'My Box Lite',
      price: 'Rs.920.00',
      description:
          '1 Personal Pan Pizza(Classic)\n1/2 portion of an Appetizer\n1 Sweet Treat\n1 Pet Coke (400ml)',
      flag: 'assets/images/promos/Image2.jpg',
      type: '2',
    ),
    Promo(
      name: 'My Box Pro',
      price: 'Rs.1030.00',
      description:
          '1 Personal Pan Pizza(Classic Signature)\n1/2 portion of an Appetizer\n1 Sweet Treat or Lava Cake\n1 Pet Coke (400ml)',
      flag: 'assets/images/promos/Image3.jpg',
      type: '3',
    ),
    Promo(
      name: 'Exclusive Cyber Saving Offer 1',
      price: 'Rs.3500.00',
      description: '1 Signature Large Pan Pizza\n1 Classic Large Pan Pizza',
      flag: 'assets/images/promos/Image5.jpg',
      type: '4',
    ),
    Promo(
      name: 'Exclusive Cyber Saving Offer 2',
      price: 'Rs.1780.00',
      description: '2 Class Medium Pan Pizza',
      flag: 'assets/images/promos/Image4.jpg',
      type: '5',
    ),
    Promo(
      name: 'My Pasta Treat',
      price: 'Rs.1180.00',
      description:
          '1 Pasta served with\n2 slices of Garlic Bread\n1 Sweet Treat\n1 Pet Coke (400ml)',
      flag: 'assets/images/promos/Image6.jpg',
      type: '6',
    ),
    Promo(
      name: 'Party Combo - Signature Pizza',
      price: 'Rs.6300.00',
      description:
          '2 Signature Large Pan Pizzas\n3 Appetizers\n4 portions of Sweet Treats\n2 Cokes (1.5L)',
      flag: 'assets/images/promos/Image7.jpg',
      type: '7',
    ),
    Promo(
      name: 'Party Combo - Classic Pizza',
      price: 'Rs.5400.00',
      description:
          '2 Classic Large Pan Pizzas\n3 portions of Garlic Bread\n4 portions of Sweet Treats\n2 Cokes (1.5L)',
      flag: 'assets/images/promos/Image8.jpg',
      type: '8',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFF4EFEF)),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text(
                  'PROMOS ---------------------------------------------------------',
                  style: TextStyle(height: 1.5, fontSize: 20),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 110,
                child: ListView.builder(
                    itemCount: promos.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          margin: const EdgeInsets.all(5.0),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => PromoSingle(
                                            name: promos[index].name,
                                            price: promos[index].price,
                                            description:
                                                promos[index].description,
                                            flag: promos[index].flag,
                                            type: promos[index].type,
                                          )));
                            },
                            title: Text(promos[index].name),
                            subtitle: Text(
                                '${promos[index].price}\n${promos[index].description}'),
                            leading: Image(
                              image: AssetImage(promos[index].flag),
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
