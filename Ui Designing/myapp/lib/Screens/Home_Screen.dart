import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        // color: Colors.pink,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              // margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              // margin: EdgeInsets.all(25),
              margin: EdgeInsets.only(top: 50,left: 25),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2
                ),
                borderRadius: BorderRadius.circular(12)
              ),
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width / 2.8,
              child: Row(
                children: [
                  Container(
                                 decoration: BoxDecoration(
                                  color: Colors.amber,
                border: Border.all(
                  width: 2
                ),
                borderRadius: BorderRadius.circular(12)
              ),
                    width: 250,
                    
                    child: Center(
                      child: Text("1"),
                    ),
                  ),
                  Container(
                                 decoration: BoxDecoration(
                border: Border.all(
                  width: 2
                ),
                borderRadius: BorderRadius.circular(12)
              ),
                    width: 250,
                    
                    child: Center(
                      child: Text("2"),
                    ),
                  ),
                  
                ],
              ),
            ),
            Container(
              height: 150,
              width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amberAccent
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("3")),
                  )
          ],
        ),
      ),
    );
  }
}