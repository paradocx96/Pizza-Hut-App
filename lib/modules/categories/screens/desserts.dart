import 'package:flutter/material.dart';

class Desserts extends StatefulWidget {
  const Desserts({Key? key}) : super(key: key);

  @override
  _DessertsState createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Desserts UI'),
    );
  }
}
