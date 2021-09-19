import 'package:flutter/material.dart';
import 'package:pizzahut/modules/homepage/models/deals.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Deals> deals = [
    Deals(
        name: 'Triple Treat Box',
        price: 'Starting From Rs.2800.00',
        ingredient:
            '2 Medium Pan Pizzas\n2 Appetizers\n2 Portions of Cinnamon Rolls',
        flag: 'dealimage1.png'),
    Deals(
        name: 'My Box Lite',
        price: 'Starting From Rs.780.00',
        ingredient:
            '1 Personal Pan Pizza(Classic)\n1/2 portion of an Appetizer\n1 Sweet Treat\n1 Pet Coke(400ml)',
        flag: 'dealimage2.png'),
    Deals(
        name: 'My Box Pro',
        price: 'Starting From Rs.900.00',
        ingredient:
            '1 Personal Pan Pizza(Classic Signature)\n1/2 portion of an Appetizer\n1 Sweet Treat or Lava Cake\n1 Pet Coke (400ml)',
        flag: 'dealimage3.png'),
    Deals(
        name: 'Party Combo - Signature Pizza',
        price: 'Rs.5700.00',
        ingredient:
            '2 Signature Large Pan Pizzas\n3 Appetizers\n4 portions of Sweet Treats\n2 Cokes (1.5L)',
        flag: 'dealimage4.jpg')
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
                height: 225,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage('assets/images/home/PizzaHutLogoHome.png'),
                ),
              ),
              Container(
                height: 25,
                color: Colors.black12,
                width: MediaQuery.of(context).size.width,
                child: Text('MOST POPULAR DEALS'),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 275,
                child: ListView.builder(
                    itemCount: deals.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(
                                '${deals[index].name}\n${deals[index].price}'),
                            subtitle: Text(deals[index].ingredient),
                            leading: Image(
                              image: AssetImage(
                                  'assets/images/home/${deals[index].flag}'),
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
