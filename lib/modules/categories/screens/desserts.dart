import 'package:flutter/material.dart';
import 'package:pizzahut/modules/atc/screens/normal_food.dart';
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
        description:
        'Swirls made of authentic cinnamon powder topped with a tantalizing icing sugar glaze.',
        flag: 'assets/images/desserts/Image1.jpg'),
    Dessert(
        name: 'Chocolate Delights (2 pcs per portion)',
        price: 'Rs.300.00',
        description:
        'A tempting delicacy made with chocolate chips and topped with rich chocolate sauce.',
        flag: 'assets/images/desserts/Image2.jpg'),
    Dessert(
        name: 'Chocolate Melt Lava Cake',
        price: 'Rs.310.00',
        description:
        'Soft, moist chocolate cake with a burst of thick, hot liquid chocolate inside.',
        flag: 'assets/images/desserts/Image3.jpg'),
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
                height: 30,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text('DESSERTS -------------------------------------------------------',
                  style: TextStyle(height: 1.5, fontSize: 20),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 154,
                child: ListView.builder(
                    itemCount: desserts.length,
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
                                          name: desserts[index].name,
                                          price: desserts[index].price,
                                          description: desserts[index].description,
                                          flag: desserts[index].flag)));
                            },
                            title: Text(desserts[index].name),
                            subtitle: Text(desserts[index].price),
                            leading: Image(
                              image: AssetImage(desserts[index].flag),
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
