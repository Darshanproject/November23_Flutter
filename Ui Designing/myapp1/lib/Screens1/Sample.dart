import 'package:flutter/material.dart';

class MyView extends StatefulWidget {
  const MyView({super.key});

  @override
  State<MyView> createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  double num=18;
  void adddata(){
    setState(() {
      num += 2;
    });
  }
  void deletedata(){
    setState(() {
      num -=2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("This is your count",style: TextStyle(
            fontSize: num,fontWeight: FontWeight.bold
          ),),
          ElevatedButton(onPressed: (){
            adddata();
          }, child: Text("Add")),
          ElevatedButton(onPressed: (){
            deletedata();
          }, child: Text("Sub"))
        ],
      ),
    );
  }
}