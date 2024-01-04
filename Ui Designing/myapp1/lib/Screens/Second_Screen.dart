import 'package:flutter/material.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({super.key});

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("This is your second Screen "),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: MediaQuery.of(context).size.height/2,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height:350,
                    color: Colors.blue,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  // margin: EdgeInsets.all(5),
                                  height: 85,
                                  width: 60,
                                  color: Colors.green,
                                ),
                                Container(
                                  height: 85,
                                  width: 60,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                            Container(
                              height: 178,
                              width: MediaQuery.of(context).size.width/2.2,
                              color: Colors.brown,
                            )
                          ],
                        ),
                        Container(
                          height: 170,
                          width: MediaQuery.of(context).size.width /2,
                          color: Colors.purple,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ) ),
    );
  }
}