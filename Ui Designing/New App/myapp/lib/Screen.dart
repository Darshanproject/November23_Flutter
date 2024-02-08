import 'package:flutter/material.dart';
import 'package:myapp/Const/export.dart';

class Screen_home extends StatelessWidget {
  const Screen_home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          children: [
            Positioned(child: Container(
              color: Colors.amber,
            )),
            Positioned(
              bottom: 1,
              child: Expanded(
                child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.only(topRight: Radius.circular(34),topLeft: Radius.circular(34)) 
                ),
                height: context.screenHeight/1.4,
                width: context.screenWidth,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Hello"),
                  ),
                ),
                            ),
              )),
            Positioned(
              top: 180,
              left: 120,
              child: CircleAvatar(       
                maxRadius: 82,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1563192504-36ac622196dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3RhY2t8ZW58MHx8MHx8fDA%3D"),
              ))
          ],
      ),
    );
  }
}