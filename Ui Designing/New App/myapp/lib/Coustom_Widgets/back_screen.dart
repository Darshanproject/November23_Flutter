import 'package:flutter/material.dart';
import 'package:myapp/Const/export.dart';

Widget Bg_Widget({Widget? child}){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(login_img),fit: BoxFit.cover)
    ),
    child: child,
  );
}