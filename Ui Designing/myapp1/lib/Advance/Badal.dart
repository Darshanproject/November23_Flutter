import 'dart:math';
import 'package:flutter/material.dart';

class gridview_1 extends StatefulWidget {
  const gridview_1({super.key});

  @override
  State<gridview_1> createState() => _gridview_1State();
}

class _gridview_1State extends State<gridview_1> {
List images=[
  "https://media.istockphoto.com/id/1449620907/photo/large-stack-of-junk-mail-or-paperwork-on-a-desk.webp?b=1&s=170667a&w=0&k=20&c=nSHGtbtcTVa9bj2luW0MiXzRVuU2V-u_pcVWCzjHQDM=",
  "https://media.istockphoto.com/id/1432604833/photo/ballpoint-pen-resting-on-top-of-stack-of-documents.webp?b=1&s=170667a&w=0&k=20&c=SdamPQ-_NsQbNZUaK-BskZFz4CG6AMlAG9ur26wS9kI=",
  "https://images.unsplash.com/photo-1531956759688-e71cc2586e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  "https://plus.unsplash.com/premium_photo-1664392104299-cb8ace591863?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1563192504-36ac622196dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  "https://images.unsplash.com/photo-1458501534264-7d326fa0ca04?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
];
  Image? images1;
  Image? images2;
  Random random = Random();
  void chnageimages(){
    setState(() {
       images1 =  images[random.nextInt(2)];
        images2 = images[random.nextInt(2)];  
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade200,
        title: Text("Task"),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5), itemBuilder: (context ,int index){
        return Card(
          elevation: 10,
          child: Container(
            child: Column(
              children: [
              Container(
                height: 150,
                width: 150,
                child:   Image.network(images[random.nextInt(6)],fit: BoxFit.cover,),
              )
              ],
            ),
          ),
        );
      },
      itemCount: images.length,
      )

    );
  }
}