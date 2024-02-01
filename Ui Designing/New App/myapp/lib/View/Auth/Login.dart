import 'package:flutter/material.dart';
import 'package:myapp/Const/export.dart';
import 'package:myapp/Coustom_Widgets/Our_Button.dart';
import 'package:myapp/Coustom_Widgets/Text_Fields.dart';
import 'package:myapp/Coustom_Widgets/back_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool ispass = true;
  final _fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Bg_Widget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              login.text.size(24).color(red).fontWeight(FontWeight.bold).makeCentered(),
              10.heightBox,
              Text_F(
                pass: false,
                vale: (value){
                  if(value != null && value.isnull) {
                    return 'Please enter your email address';
                    
                  }else{
                    return null;
                  }
                },
                hint: emailhint,
                lable: email,
                title: email,
                icons: IconButton(onPressed: (){}, icon: Icon(Icons.email))
              ),
              Text_F(
                pass: ispass,
                vale: (value){
                  if (value != null && value.Empty) {
                    return 'Please enter your password';
                  }else{
                    return null;
                  }
                },
                hint: passwordhint,
                lable: password,
                title: password,
                icons: ispass == true?IconButton(onPressed: (){
                  setState(() {
                    ispass = false;
                  });
                }, icon: Icon(Icons.visibility_off)): IconButton(onPressed:() {
                  setState(() {
                    ispass = true;
                  });
                }, icon: Icon(Icons.visibility))
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){}, child: "Forgot password?".text.make()),
              ),
              SizedBox(
                width: context.screenWidth - 40,
                child: Our_Button(onpress: (){
                  if (_fromkey.currentState!.validate()) {
                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Login Successfully".text.make(),backgroundColor: green,),);
                  }else{
                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Login failed".text.make(),backgroundColor: red,));
                  }
                },title: login,color: red),
              ),
              
              TextButton(onPressed: (){}, child: "Already Have An account ? ".text.size(18).make()),
              5.heightBox,
             SizedBox(
              width: context.screenWidth - 40,
              child: Our_Button(
                onpress: (){},
                title: singup,
                color: grey
              ),
             )
            ],
          ),
        )),
      ).box.height(context.screenHeight / 1.9).width(context.screenWidth - 40).clip(Clip.antiAlias).rounded.makeCentered()
    );
  }
}