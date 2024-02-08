import 'package:flutter/material.dart';

class Detailes extends StatelessWidget {
  final  images;

  const Detailes({super.key,required this.images});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Image.network(images ),
      ),
    );
  }
}