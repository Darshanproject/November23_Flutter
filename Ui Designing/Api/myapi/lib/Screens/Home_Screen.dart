import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapi/Screens/Add.dart';
import 'package:http/http.dart' as http;


String? stringresponse;
Map? mapresponse;
Map? dataresponse;

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Future _fetchdata() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if (response.statusCode == 200) {
        stringresponse = response.body;
        mapresponse = json.decode(stringresponse.toString());
        dataresponse = mapresponse!["data"];
    }else{
      return 'No Data found'; 
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchdata();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                        child: CircleAvatar(
                          minRadius: 45,
                          backgroundImage: NetworkImage(dataresponse!['avatar']),
                        ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dataresponse!['first_name'].toString() + ' ' + dataresponse!['last_name'].toString(),style: TextStyle(
                                        fontSize: 24,fontWeight: FontWeight.bold
                                      ),),
                                      Text(dataresponse!['email'].toString(),style: TextStyle(
                fontSize: 24,fontWeight: FontWeight.bold
                            ),),
                        ],
                      ),
                            
                    )
                  ],
                ),
              ),
            )
        ],)
    ));
  }
}