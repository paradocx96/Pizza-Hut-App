import 'package:flutter/material.dart';
import 'package:pizzahut/modules/categories/models/pasta.dart';

class Pastas extends StatefulWidget {
  const Pastas({Key? key}) : super(key: key);

  @override
  _PastasState createState() => _PastasState();
}

class _PastasState extends State<Pastas> {

  List<Pasta> pastas = [
    Pasta(
        name: 'Spaghetti Bolognaise - Chicken',
        price: 'Rs.770.00',
        flag: 'Image1.jpg'),
    Pasta(
        name: 'Spaghetti with Chicken & Sausage Meat',
        price: 'Rs.770.00',
        flag: 'Image2.jpg'),
    Pasta(
        name: 'Macaroni & Cheese',
        price: 'Rs.880.00',
        flag: 'Image3.jpg'),
    Pasta(
        name: 'Chicken Lasagna',
        price: 'Rs.880.00',
        flag: 'Image4.jpg'),
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
                child: Text('PASTAS'),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(
                    itemCount: pastas.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {},
                            title: Text(pastas[index].name),
                            subtitle: Text(pastas[index].price),
                            leading: Image(
                              image: AssetImage(
                                  'assets/images/pastas/${pastas[index].flag}'),
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
