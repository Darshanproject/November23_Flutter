import 'dart:math';

import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final _random = Random();
  late int _targetNumber = _random.nextInt(100);
  late int userguess;
  String message = '';
  int attempt = 0;
 
  void restgame(){
    _targetNumber = _random.nextInt(100) +1 ;
    userguess = 0;
    message = '';
    attempt = 0;
  }
  void checkresult(){
    setState(() {
      attempt++;
      if (userguess == _targetNumber) {
        message = 'Congratulation you got the number Correct in $attempt attempt';
      }else if(userguess < _targetNumber){
        message = ' try higher number';
      }else if(userguess > _targetNumber){
        message = 'try smaller number';
      }
    });
  }
  void intState(){
    super.initState();
  checkresult();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  userguess = int.tryParse(value)!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              // ignore: unnecessary_null_comparison
              if (userguess != null) {
                checkresult();
              }
            }, child: Text("Submit")),
                        SizedBox(
              height: 20,
            ),
            Text("This $message",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                        SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                restgame();
              });
            }, child: Text("Reset"))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Games"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}