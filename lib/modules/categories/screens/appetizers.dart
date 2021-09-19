import 'package:flutter/material.dart';
import 'package:pizzahut/modules/categories/models/appetizer.dart';

class Appetizers extends StatefulWidget {
  const Appetizers({Key? key}) : super(key: key);

  @override
  _AppetizersState createState() => _AppetizersState();
}

class _AppetizersState extends State<Appetizers> {

  List<Appetizer> appetizers = [
    Appetizer(
        name: 'Wing It - BBQ',
        price: 'Starting from Rs.490.00',
        flag: 'appetizerImage1.jpg'),
    Appetizer(
        name: 'Wing It - Garlic Parmesan',
        price: 'Starting from Rs.490.00',
        flag: 'appetizerImage2.jpg'),
    Appetizer(
        name: 'Wing It - Peri Peri',
        price: 'Starting from Rs.490.00',
        flag: 'appetizerImage3.jpg'),
    Appetizer(
        name: 'Wing It - Sriracha',
        price: 'Starting from Rs.490.00',
        flag: 'appetizerImage4.jpg'),
    Appetizer(
        name: 'Garlic Bread',
        price: 'Rs.300.00',
        flag: 'appetizerImage5.jpg'),
    Appetizer(
        name: 'Cheesy Garlic Bread Supreme',
        price: 'Rs.480.00',
        flag: 'appetizerImage6.jpg'),
    Appetizer(
        name: 'Potato Wedges',
        price: 'Rs.440.00',
        flag: 'appetizerImage7.jpg'),
    Appetizer(
        name: 'Spicy Chicken & Cheese Balls',
        price: 'Rs.440.00',
        flag: 'appetizerImage8.jpg'),
    Appetizer(
        name: 'Baked Chicken Wings in  BBQ Sauce',
        price: 'Rs.490.00',
        flag: 'appetizerImage9.jpg'),
    Appetizer(
        name: 'Chicken Sausage Roll (1pc)',
        price: 'Rs.190.00',
        flag: 'appetizerImage10.jpg')
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
                child: Text('APPETIZERS'),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(
                    itemCount: appetizers.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(appetizers[index].name),
                            subtitle: Text(appetizers[index].price),
                            leading: Image(
                              image: AssetImage(
                                  'assets/images/appetizers/${appetizers[index].flag}'),
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
