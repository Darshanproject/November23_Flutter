import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapi/Crud/view.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
class AddData extends StatefulWidget {
   AddData({super.key });
 
  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  final _fromkey = GlobalKey<FormState>();
  TextEditingController  namec =TextEditingController();
  TextEditingController emialc =TextEditingController();
  TextEditingController passwordc =TextEditingController();
  TextEditingController surnamec =TextEditingController();
  void insertdata(){
    var url ="https://database20810.000webhostapp.com/FlutterCrude/insert.php";
    http.post(Uri.parse(url),body: {
      "name":namec.text.toString(),
      "surname":surnamec.text.toString(),
      "email":emialc.text.toString(),
      "password":passwordc.text.toString()
    }
    );
   
  }
   
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namec.clear();
    surnamec.clear();
    emialc.clear();
    passwordc.clear();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Container(
          height: context.screenHeight,
          child: Form(child: Column(
            children: [
              TextFormField(
                controller: namec,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name"
                ),
              ),
              10.heightBox,
              TextFormField(
                controller: surnamec,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Surname"
                ),
              ),
              10.heightBox,
              TextFormField(
                controller: emialc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Email"
                ),
              ),
              10.heightBox,
              TextFormField(
                controller: passwordc,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Password"
                ),
              ),
              Spacer(),
              MaterialButton(onPressed: ()  {
                 insertdata();
                 namec.clear();
                 emialc.clear();
                 passwordc.clear();
                 surnamec.clear();
                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>View_Screen()));
              },child: Text("Add Data"),)
            ],
          ).box.height(context.screenHeight / 1.9).width(context.screenWidth - 80).padding(EdgeInsets.symmetric(horizontal: 30,vertical: 40)).clip(Clip.antiAlias).rounded.makeCentered()
          ),
        )),
      ),
    );
  }
}