import 'package:flutter/material.dart';
import 'package:myapi/Screens/Home_Screen.dart';
import 'package:myapi/Screens/ListApiFetching.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: List_Fetching_Api(),
    );
  }
}