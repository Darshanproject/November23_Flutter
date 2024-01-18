import 'package:flutter/material.dart';
import 'package:myapp1/Const/exports.dart';
import 'package:myapp1/Screens1/Gird.dart';

class Reg_Screen extends StatefulWidget {
  const Reg_Screen({super.key});

  @override
  State<Reg_Screen> createState() => _Reg_ScreenState();
}

class _Reg_ScreenState extends State<Reg_Screen> {
  final _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _fromkey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Text("Name"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return 'Please enter your name here ';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Name",
                    labelText: "Name"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Text("Surname"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return 'Please enter your Surname here ';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Surname",
                    labelText: "Surname"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Text("Email"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return 'Please enter your Email here ';
                    }if (value != '@' && value == '.com' ) {
                      return 'this is not an email address';
                    }
                    
                    else{
                      return null;
                    }
                  },
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
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Text("Phone Number"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if(value!.length != 10 && value!.length == 11){
                        return 'Numbers seems to be long or incorrect';
                    }
                   else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Phone Number",
                    labelText: "Phone Number"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Text("Password"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if(value != null && value.isEmpty){
                      return 'Please enter your Password here ';
                    }
                    if (value!.length < 8  && value.length > 16) {
                        return 'your password seems to be short or to long';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Password",
                    labelText: "Password"
                  ),
                ),
              ),
              SizedBox(
                width: context.screenWidth - 40,
                child: ElevatedButton(onPressed: (){
                  if (_fromkey.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Gird_View_Screen()));
                  }
                }, child: Text("Reg")),
              )
            ],
          )),
      ),
    );
  }
}