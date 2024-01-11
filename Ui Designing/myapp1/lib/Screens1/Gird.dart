import 'package:flutter/material.dart';

class Gird_View_Screen extends StatefulWidget {
  const Gird_View_Screen({super.key});

  @override
  State<Gird_View_Screen> createState() => _Gird_View_ScreenState();
}

class _Gird_View_ScreenState extends State<Gird_View_Screen> {
  List images = [
    "https://images.unsplash.com/photo-1520352823777-923f7151a680?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHN0YWNrfGVufDB8fDB8fHww",
    "https://plus.unsplash.com/premium_photo-1672846027109-e2c91500afef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHN0YWNrfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1509490927285-34bd4d057c88?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHN0YWNrfGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1533162507191-d90c625b2640?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHN0YWNrfGVufDB8fDB8fHww"
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        centerTitle: true,
      ),
      body: GridView(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 10),
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Update(image: images[0])));
          },
          child: Container(
              height: 80,
              width: 80,
              // color: Colors.amber[50],
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(images[0]),fit:BoxFit.cover)
              ),
              
              ),
            ),
        
          Container(
             decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(images[1],),fit:BoxFit.cover)
            ),
            height: 80,
            width: 80,
            // color: Colors.amber[100],
          ),
          Container(
             decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(images[2],),fit:BoxFit.cover)
            ),
            height: 80,
            width: 80,
            // color: Colors.amber[200],
          ),
          Container(
             decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(images[3],),fit:BoxFit.cover)
            ),
            height: 80,
            width: 80,
            // color: Colors.amber[300],
          ),
      ],
      ),
    );
  }
}



class Update extends StatelessWidget {
   Update({super.key,required this.image});
  final String? image;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Image.network("$image",fit: BoxFit.cover,),
      ),
    );
  }
}