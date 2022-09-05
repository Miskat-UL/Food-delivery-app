import 'package:flutter/material.dart';
import 'package:flutter_ui_food_delivery/screens/home.dart';
import 'package:flutter_ui_food_delivery/screens/login.dart';
import 'package:flutter_ui_food_delivery/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}
