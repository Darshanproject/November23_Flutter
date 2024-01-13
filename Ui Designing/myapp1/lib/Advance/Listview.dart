import 'package:flutter/material.dart';

class List_View_Builder extends StatefulWidget {
  const List_View_Builder({super.key});

  @override
  State<List_View_Builder> createState() => _List_View_BuilderState();
}

class _List_View_BuilderState extends State<List_View_Builder> {
  List name = <String>["Mihir","Badal","Keval","Maitir","Anpanman"];
  List images = [
    "https://plus.unsplash.com/premium_photo-1664392104299-cb8ace591863?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1531956759688-e71cc2586e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1541692641319-981cc79ee10a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3RhY2t8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1532009877282-3340270e0529?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1458501534264-7d326fa0ca04?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
  ];
  List email = ["mihir@gmail.com","badal@gamil.com","keval@gamil.com","maitri@gmail.com","anpanman@gmail.com"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context ,index){
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Upadte_screen(name: name[index], email: email[index], images: images[index])));
              },
              child: ListTile(
                title: Text(name[index]),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(images[index]),
                ),
                subtitle: Text(email[index]),
              ),
            );
      }),
    );
  }
}


class Upadte_screen extends StatelessWidget {
  const Upadte_screen({super.key,required this.name,required this.email,required this.images});
  final String name;
  final String email;
  final String images;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Upadate Screen"),
        centerTitle: true,
      ),
      body:  Container(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.network(images),
            ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, ),),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(email,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, ),),
              ),
          ],
        ),
      ),
    );
  }
}