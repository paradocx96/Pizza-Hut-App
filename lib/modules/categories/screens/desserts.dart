import 'package:flutter/material.dart';
import 'package:pizzahut/modules/categories/models/dessert.dart';

class Desserts extends StatefulWidget {
  const Desserts({Key? key}) : super(key: key);

  @override
  _DessertsState createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  List<Dessert> desserts = [
    Dessert(
        name: 'Cinnamon Rolls (2 pcs per portion)',
        price: 'Rs.220.00',
        flag: 'Image1.jpg'),
    Dessert(
        name: 'Chocolate Delights (2 pcs per portion)',
        price: 'Rs.300.00',
        flag: 'Image2.jpg'),
    Dessert(
        name: 'Chocolate Melt Lava Cake',
        price: 'Rs.310.00',
        flag: 'Image3.jpg'),
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
                child: Text('DESSERTS'),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(
                    itemCount: desserts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(desserts[index].name),
                            subtitle: Text(desserts[index].price),
                            leading: Image(
                              image: AssetImage(
                                  'assets/images/desserts/${desserts[index].flag}'),
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
