import 'package:flutter/material.dart';
import 'package:myapp/Const/export.dart';
import 'package:myapp/Listditels.dart';


class MyList_Screen extends StatefulWidget {
  const MyList_Screen({super.key});

  @override
  State<MyList_Screen> createState() => _MyList_ScreenState();
}

class _MyList_ScreenState extends State<MyList_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context,int index){
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Detailes(images: images[index],)));
          },
          child: Card(
            child: Image.network(images[index]),
          ),
        );
      }),
    );
  }
}