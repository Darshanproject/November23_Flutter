import 'package:myapp/Const/export.dart';
 Widget Our_Button ({String? title,Color? color,onpress}){
  return ElevatedButton(onPressed: onpress, child: title!.text.make(),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color),textStyle: MaterialStatePropertyAll(TextStyle(color: grey,fontSize: 18))),);
 }