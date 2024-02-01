import 'package:flutter/material.dart';

class CheckBox_Screen extends StatefulWidget {
  const CheckBox_Screen({super.key});

  @override
  State<CheckBox_Screen> createState() => _CheckBox_ScreenState();
}

class _CheckBox_ScreenState extends State<CheckBox_Screen> {
  bool  fvalue = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          children: [
            Text("This has been completed"),
            Checkbox(value: this.fvalue, onChanged: (bool? newvalue){
              setState(() {
              this.fvalue = newvalue!;
              });
            })
          ],
        ),
      ),
    );
  }
}