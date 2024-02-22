

import 'package:flutter/material.dart';
import 'package:myapp/Screens/Splash%20Screen/TabbarAdvance.dart';
import 'package:myapp/Splash%20Screen/Saplsha_Screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: TabBarExample(),
    );
  }
}