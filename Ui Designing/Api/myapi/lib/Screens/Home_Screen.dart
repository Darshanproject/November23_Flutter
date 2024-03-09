import 'package:flutter/material.dart';
import 'package:myapi/Screens/Add.dart';
import 'package:http/http.dart' as http;
class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Future _fetchdata() async {
    await http.get(Uri());
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,int index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("$index"),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>AddData()));
      },child: Icon(Icons.add),),
    );
  }
}