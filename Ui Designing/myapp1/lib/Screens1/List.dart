import 'package:flutter/material.dart';

class List_View_Screen extends StatelessWidget {
  const List_View_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[50],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[100],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[200],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[300],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[400],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[500],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[600],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[700],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[800],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber[900],
            child: Text("2"),
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.amber,
          ),

          Container(
            height: 80,
            width: 80,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}