import 'package:flutter/material.dart';

Widget Back_Screen({Widget? child}){
  return Container(
    decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue,Colors.red,Colors.green,Colors.yellow],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          )
        ),
        child: child,
  );
}