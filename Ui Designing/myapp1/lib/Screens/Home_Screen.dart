import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp1/Screens/Second_Screen.dart';

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
        title: Text("My Task"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 1250,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.blue
            )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height / 1.40,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        width: 2,
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Image.network("https://images.unsplash.com/photo-1532009877282-3340270e0529?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3RhY2t8ZW58MHx8MHx8fDA%3D",fit: BoxFit.fill,),
                  ),
                  Container(
                    child: Column(
                      children: [
                            Container(
                              margin: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1532009877282-3340270e0529?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c3RhY2t8ZW58MHx8MHx8fDA%3D",),fit: BoxFit.cover),
                      border: Border.all(
                        width: 2,
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Keval",style: GoogleFonts.rubikBubbles(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
                  ),
                   Container(
                    margin: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width / 2.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        width: 2,
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Text("1"),
                  ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                 margin: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height / 5.9,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(
                        width: 2,
                        color: Colors.blue
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Image.asset("asstes/first.png"),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Second_Screen()));
              }, child: Text("Go to Next Page"))
            ],
          ),
        ),
      ),
    );
  }
}