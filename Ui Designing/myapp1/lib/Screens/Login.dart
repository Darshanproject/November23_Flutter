import 'package:flutter/material.dart';
import 'package:myapp1/Screens/Showing.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  bool choice = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Padding(
              padding:EdgeInsets.all(12) ,
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "name",
                  labelText: "name"
                ),
              ),
              ),
              Padding(
              padding:EdgeInsets.all(12) ,
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Email",
                  labelText: "Email"
                ),
              ),
              ),
              Padding(
              padding:EdgeInsets.all(12) ,
              child: TextField(
                controller: mobilecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Mobile Number",
                  labelText: "Mobile Number"
                ),
              ),
              ),
              Padding(
              padding:EdgeInsets.all(12) ,
              child: TextField(
                controller: passcontroller,
                obscureText: choice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "PassWord",
                  labelText: "PassWord",
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      choice = true;
                    });
                  }, icon:Icon(Icons.visibility))
                ),
                
              ),
              ),
              SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Second_Screen1(name: namecontroller.text, number: mobilecontroller.text, email: emailcontroller.text)));
              },child:Text("Sgin"),style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)
              ), ),
              )
          ],
        ),
      ),
    );
  }
}