import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget fields ({String? title,String? hint,String? lable,validator}){
  return Column(
    // mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.red).fontWeight(FontWeight.bold).make(),
      10.heightBox,
      TextFormField(
        validator: validator,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      hintText: hint,
                      labelText: lable
                    ),
                  ),
    ],
  );
}