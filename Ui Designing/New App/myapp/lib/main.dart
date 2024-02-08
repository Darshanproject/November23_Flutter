import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Bottom_navigation.dart';
import 'package:myapp/List.dart';
import 'package:myapp/Screen.dart';
import 'package:myapp/Screens/Splash%20Screen/Splash_Screen.dart';
import 'package:myapp/View/Auth/Login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom_Screen(),
    );
  }
}