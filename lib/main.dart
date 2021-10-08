import 'package:flutter/material.dart';
//import 'package:pizzahut/modules/homepage/screens/gets_started/gets_started_screen.dart';
import 'package:pizzahut/modules/homepage/screens/splash/splash_screen.dart';
import 'package:pizzahut/modules/homepage/screens/trace_order/view_trace_orders.dart';
import 'package:provider/provider.dart';

import 'modules/homepage/models/authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Authentication(),
          )
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ViewTraceOrders(),
      ),
    );
  }
}

