import 'package:flutter/material.dart';
import 'package:myapp1/Advance/Number_Guessing_game.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}