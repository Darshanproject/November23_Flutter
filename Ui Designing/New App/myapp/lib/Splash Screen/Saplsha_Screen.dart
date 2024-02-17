import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/List.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  
  
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyList_Screen()));
    });
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1672846027109-e2c91500afef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHN0YWNrfGVufDB8fDB8fHww"),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.home,color: Colors.white,size: 52,),
            Center(child: Text("Badal's Store",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}