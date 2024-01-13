import 'dart:math';

import 'package:flutter/material.dart';

class ColorChanging extends StatefulWidget {
  const ColorChanging({super.key});

  @override
  State<ColorChanging> createState() => _ColorChangingState();
}

class _ColorChangingState extends State<ColorChanging> {
  Random random = Random();
  Color? newcolor;
  void onChange(){
  setState(() {
      newcolor =  Color.fromARGB(random.nextInt(255), random.nextInt(255), random.nextInt(255), random.nextInt(255));
  });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Color Changing Events"),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: onChange,
        child: Container(
          color: newcolor,
        ),
      ),
    );
  }
}