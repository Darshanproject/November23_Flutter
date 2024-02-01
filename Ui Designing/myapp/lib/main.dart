import 'package:flutter/material.dart';
import 'package:myapp/Screens/CheckBox.dart';

import 'package:myapp/Screens/numbergessinggames.dart';
import 'package:myapp/Screens/radio.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:CheckBox_Screen() ,
    );
  }
}