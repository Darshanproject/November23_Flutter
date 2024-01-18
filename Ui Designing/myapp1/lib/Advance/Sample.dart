import 'package:flutter/material.dart';
import 'package:myapp1/Const/Backscreen.dart';
// ignore: unused_import
import 'package:myapp1/Const/TextFiled.dart';
import 'package:myapp1/Const/ourbutton.dart';
import 'package:myapp1/Screens1/List.dart';
import 'package:velocity_x/velocity_x.dart';


class Grident_screen extends StatefulWidget {
  const Grident_screen({super.key});

  @override
  State<Grident_screen> createState() => _Grident_screenState();
}

class _Grident_screenState extends State<Grident_screen> {
  final _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Back_Screen(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _fromkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "Please enter the fileds";
                        }
                        return null;
                      },
                    ),
        //            fields(
        //             hint: "name",
        //             lable: "name",
        //             title: "name",
        //             validator: (value) {
        //   if(value!.isEmpty){
        //     return "This filed is required";
        //   }else{
        //     return null;
        //   }
        // },
        //            ),
        //            fields(
        //             hint: "Password",
        //             lable: "Password",
        //             title: "Password",
        //             validator: (value) {
        //   if(value!.isEmpty || value == null){
        //     return "This filed is required";
        //   }
        //     return null;
          
        // },
        //            ),
                   10.heightBox,
                   SizedBox(
                    width: context.screenWidth - 40,
                    child: Mybutton(
                      title: "Login",
                      onpress: (){
                        if (_fromkey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>List_View_Screen()));  
                        }else{
                          return  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Failed".text.make(),backgroundColor: Colors.red,));
                        }
                        
                      }),
                   )
                  ],
                ),
              )
            ),
          ),
        ),
      ).box.rounded.clip(Clip.antiAlias).makeCentered()
    );
  }
}