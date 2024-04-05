import 'package:flutter/material.dart';
import 'package:myapi/Crud/edit.dart';
import 'package:myapi/Crud/view.dart';
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
    //  home: Edit(index: 1,data: ["gadadarshan@gamil.com","asdfghj"],),
     home: View_Screen(),
    );
  }
}