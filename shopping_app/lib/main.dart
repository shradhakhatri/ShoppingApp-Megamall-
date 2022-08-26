import 'package:flutter/material.dart';
import 'package:shopping_app/views/homescreen.dart';
import 'package:shopping_app/views/items_cart.dart';
import 'package:shopping_app/views/itemscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Homescreen',
      routes: {
       'Itemscreen':(context) => Itemscreen(),
       'Itemscart':(context) => Itemscart()
      },
      title: 'Mega Mall',
      theme: ThemeData(
      primaryColor: Colors.white,
      ),
      home: Homescreen(),
    );
  }
}
