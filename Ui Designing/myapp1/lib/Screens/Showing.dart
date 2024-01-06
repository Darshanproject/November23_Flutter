import 'package:flutter/material.dart';

class Second_Screen1 extends StatelessWidget {
  final String name;
  final String email;
  final String number;
  const Second_Screen1({super.key,required this.name,required this.number, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(alignment: Alignment.topRight,
            child: Icon(Icons.edit),),
           Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20)
            ),
            height: MediaQuery.of(context).size.height / 4,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Container(
                  child: Row(
                    children: [
                         Container(
                      margin: EdgeInsets.only(top: 40),
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        minRadius: 24,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("$name",style: TextStyle(color: Colors.white),),
                          Text("$email",style: TextStyle(color: Colors.white),),
                          ],
                  ),
                 )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(onPressed: (){}, child: Text("Logout")),
                    )
                  ],
                )
              ],
            ),
           )
          ],
        ),
      ),
    );
  }
}