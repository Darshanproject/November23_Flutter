import 'dart:async';

import 'package:firbase/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Screen())));
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            child: Lottie.asset("assets/splash.json"),
          ),
          Lottie.network("https://lottie.host/a96acc28-ead3-4bed-bc31-c4e95b9c8b75/RTw3WAkAKX.json")
        ],
      ),
    );
  }
}