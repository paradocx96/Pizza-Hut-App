import 'package:flutter/material.dart';
import 'package:pizzahut/modules/categories/screens/beverages.dart';
import 'package:pizzahut/modules/categories/screens/appetizers.dart';
import 'package:pizzahut/modules/categories/screens/desserts.dart';
import 'package:pizzahut/modules/categories/screens/pastas.dart';
import 'package:pizzahut/modules/contact/screens/contact.dart';
import 'package:pizzahut/modules/homepage/screens/home.dart';
import 'package:pizzahut/modules/promos/screens/promos.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/contact',
  routes: {
    '/home': (context) => Home(),
    '/appetizers': (context) => Appetizers(),
    '/beverages': (context) => Beverages(),
    '/desserts': (context) => Desserts(),
    '/pastas': (context) => Pastas(),
    '/promos': (context) => Promos(),
    '/contact': (context) => Contact(),
  },
));
