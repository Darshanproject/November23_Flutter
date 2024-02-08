import 'package:flutter/material.dart';
import 'package:myapp/List.dart';
import 'package:myapp/Listditels.dart';
import 'package:myapp/Screen.dart';
import 'package:myapp/View/Auth/Login.dart';

class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({super.key});

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  var _Selectedindex = 0;
  void changeindex(int index){
    setState(() {
      _Selectedindex = index;
    });
  }
 static const  List screen = <Widget>[
    MyList_Screen(),
    Screen_home(),
    Login_Screen()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: screen.elementAt(_Selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _Selectedindex,
        onTap: changeindex,
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home")
      ]),
    );
  }
}