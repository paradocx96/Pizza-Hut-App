import 'package:flutter/material.dart';

class Appetizers extends StatefulWidget {
  const Appetizers({Key? key}) : super(key: key);

  @override
  _AppetizersState createState() => _AppetizersState();
}

class _AppetizersState extends State<Appetizers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Appetizers UI'),
    );
  }
}
