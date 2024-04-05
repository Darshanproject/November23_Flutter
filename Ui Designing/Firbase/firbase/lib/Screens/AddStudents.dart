
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firbase/Screens/Home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({super.key});

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  var name = '';
  var email = '';
  var password = '';
  var surname = '';
  final _fromkey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final surnamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  void dispose(){
    namecontroller.dispose();
    surnamecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }
  void clean(){
    namecontroller.clear();
    surnamecontroller.clear();
    emailcontroller.clear();
    passwordcontroller.clear();
  }
  CollectionReference students = FirebaseFirestore.instance.collection('students');
  Future <void> adduser(){
    return students.add({'name':name,'surname':surname,'email':email,'password':password}).then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Added successfully")))).catchError((e)=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something Gone wrong $e"))));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Add Students"),
      ),
      body: Form(
        key: _fromkey,
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "Name"
              ),
            ),
             SizedBox(
              height: 20,
            ),
            TextFormField(

              controller: surnamecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "Surname"
              ),
            ),
             SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "email"
              ),
            ),
             SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "password"
              ),
            ),
            Spacer(),
             SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(onPressed: (){
                if (_fromkey.currentState!.validate()) {
                  setState(() {
                    name = namecontroller.text;
                    surname = surnamecontroller.text;
                    email = emailcontroller.text;
                    password = passwordcontroller.text;
                    adduser();
                    clean();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext contxt)=>Home_Screen()));
                  });
                }
              }, child: Text("Add data")),
            ),

          ],
        ),
      )),
    );
  }
}