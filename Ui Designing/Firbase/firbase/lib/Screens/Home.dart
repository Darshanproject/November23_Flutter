import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firbase/Screens/AddStudents.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final Stream<QuerySnapshot> studentsstream = FirebaseFirestore.instance.collection('students').snapshots();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Students List"),
      ),
      body: StreamBuilder(stream: studentsstream, builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
        if (snapshot.hasError) {
          return Center(
            child: Text("Something went wrong $snapshot"),
          );
        }else if(snapshot.connectionState == ConnectionState.waiting){
          Center(
            child: CircularProgressIndicator(),
          );
        }
        final List stordoc = [];
        snapshot.data!.docs.map((DocumentSnapshot document){
          Map a = document.data () as Map<String,dynamic>;
          stordoc.add(a);
          a['id'] = document.id;
        }).toList();
        return ListView.builder(
          itemCount: stordoc.length,
          itemBuilder: (context,int index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(stordoc[index]['name'] + ' ' + stordoc[index]['surname'],style: TextStyle(
                            fontSize: 22
                          ),),
                          Text(stordoc[index]['email'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w200),)
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>AddStudents()));
      } ,child: Icon(Icons.add),),
    );
  }
}