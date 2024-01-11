import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Home_Screen.dart';

class Home_Page_1 extends StatelessWidget {
  const Home_Page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.network("https://images.unsplash.com/photo-1520954052043-8527729d0817?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHN0YWNrfGVufDB8fDB8fHww")),
          Positioned(
            top: 280,
            // right: 50,
            left: 175,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Screen()));
              },
              child: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1509490927285-34bd4d057c88?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHN0YWNrfGVufDB8fDB8fHww"),
                        ),
            ))
        ],
      ),
    );
  }
}