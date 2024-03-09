import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
String? stringresponse;
Map? mapresponse;
// Map? dataresponse;
List? listresponse;

class List_Fetching_Api extends StatefulWidget {
  const List_Fetching_Api({super.key});

  @override
  State<List_Fetching_Api> createState() => _List_Fetching_ApiState();
}

class _List_Fetching_ApiState extends State<List_Fetching_Api> {
  Future _fetchList() async{
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if (response.statusCode == 200) {
      stringresponse = response.body;
      mapresponse = json.decode(stringresponse.toString());
      setState(() {
        listresponse =mapresponse!['data'];
      });
    }
    else{
      return CircularProgressIndicator();
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchList();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: listresponse!.length,
          itemBuilder: (cxt,int ind){
            return Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text(listresponse![ind]['id'].toString()),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: CircleAvatar(
                            minRadius: 35,
                            backgroundImage: NetworkImage(listresponse![ind]['avatar']),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Text(listresponse![ind]['first_name'] + ' ' + listresponse![ind]['last_name'],style: TextStyle(
                                  fontSize: 24,fontWeight: FontWeight.bold
                                ),),
                              ),
                              Divider(
                                thickness: 10,
                                color: Colors.black,
                              ),
                              Container(
                                child: Text(listresponse![ind]['email']),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
        }),
      ),
    );
  }
}