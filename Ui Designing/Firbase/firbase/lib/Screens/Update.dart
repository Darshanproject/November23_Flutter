import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Update_Screen extends StatefulWidget {
  final String id;
  final String email;
  final String surname;
  final String password;
  final String name;
   Update_Screen({super.key,required this.id,required this.email,required this.name,required this.surname,required this.password});

  @override
  State<Update_Screen> createState() => _Update_ScreenState();
}

class _Update_ScreenState extends State<Update_Screen> {
  final _fromkey = GlobalKey<FormState>();
  var namec = TextEditingController();
  var surnamec = TextEditingController();
  var emailc = TextEditingController();
  var passwordc = TextEditingController();
  bool _isdispose = false;
  CollectionReference students = FirebaseFirestore.instance.collection('students');
  Future<void> updatestudnets(id,name,surname,email,password) async{
    final docRef = students.doc(id);
    final docsnpshot = await docRef.get();
    if (docsnpshot.exists) {
      await docRef.update({'name':name,'surname':surname,'password':password,'email':email});
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data updated")));
      students.doc(widget.id).update({'name':namec,'surname':surnamec,'email':emailc,'password':passwordc}).then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data update thi gyo bhura"),backgroundColor: Colors.pink,))).catchError((error)=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Kik Bhul thi gai cha bhura $error"),backgroundColor: Colors.amber,)));
    }else{
      Center(
        child: Text("Id not found $id"),
      );
    }
  }
  @override
  void initState() {
    super.initState();
    namec.text = widget.name;
    surnamec.text = widget.surname;
    emailc.text = widget.email;
    passwordc.text = widget.password;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Screen"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Form(
        key: _fromkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller:  namec,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller:  surnamec,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller:  emailc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller:  passwordc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 80,
              child: ElevatedButton(onPressed: (){
                if (_fromkey.currentState!.validate()) {
                  try {
                    updatestudnets(widget.id,namec.text,surnamec.text,emailc.text,passwordc.text);
                  } catch (e) {
                    Center(
                      child: Text("Something Went Wrong $e")
                    );
                  }
                }
              }, child: Text("Update")),
            )
        ],
      )),
    );
  }
}