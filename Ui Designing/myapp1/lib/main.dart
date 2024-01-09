import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Home_Screen.dart';
import 'package:myapp1/Screens/Login.dart';
import 'package:myapp1/Screens/Second_Screen.dart';
import 'package:myapp1/Screens1/Sample.dart';
import 'package:myapp1/Screens1/Sample2.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sample2(),
    );
  }
}