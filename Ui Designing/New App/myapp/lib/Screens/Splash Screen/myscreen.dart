import 'package:flutter/material.dart';

class my_view extends StatefulWidget {
  const my_view({super.key});

  @override
  State<my_view> createState() => _my_viewState();
}

class _my_viewState extends State<my_view> {
  TextEditingController name = TextEditingController();
   TextEditingController contact = TextEditingController();
    TextEditingController age = TextEditingController();
     TextEditingController gender = TextEditingController();
      TextEditingController blood = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
color: Color.fromARGB(255, 250, 183, 199),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Container(
              height: MediaQuery.of(context).size.height/6,
              width:MediaQuery.of(context).size.width/1 ,
              decoration: BoxDecoration(
            shape: BoxShape.rectangle,
              color:Color.fromARGB(255, 160, 19, 8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Container(
height:150,
width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0),
                    borderRadius: BorderRadius.circular(1),
                    image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1454448091/photo/man-planting-flag-on-piles-of-cash.webp?b=1&s=170667a&w=0&k=20&c=O4_hGE0XZ5JuIYUVDblKYOTJM7gkb9eSLp86PqgWLj0="),fit: BoxFit.cover)
                  ),
              ),
                SizedBox(width: 5,),
                Text("Save humans",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)],
              ),
            ),
            

              
             TextField(
              
                controller: name,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                
                  hintText: "Pataient name",
                  labelText: "pataient name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
                ),
              ),
            
            
               TextField(
                controller: name,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Contact",
                  labelText: "Contact",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
                ),
              ),
            
            TextField(
              controller: name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Patient age",
                labelText: "Patient age",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/1,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 160, 19, 8)),
              child: Column(
                children: [Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.male),
                    Text("Gender*")
                  ],
                ),
                TextField(
                  controller:gender ,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "gender",
                    labelText: "gender",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.bloodtype),
                    Text("Blood Group*")
                  ],
                ),
                TextField(
                  controller:gender ,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "gender",
                    labelText: "gender",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                ),
                
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1,
              child: ElevatedButton(
                style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 123, 13, 5))) ,
                onPressed: (){}, child: Text("Submit",style:TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
                ),)))
            ],
          ),
        ),
      ) ,
    );
  }
}