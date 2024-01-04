import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Home_Screen.dart';
import 'package:myapp1/Screens/Second_Screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Second_Screen(),
    );
  }
}