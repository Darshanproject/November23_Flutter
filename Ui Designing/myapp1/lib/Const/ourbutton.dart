import 'package:myapp1/Const/exports.dart';

Widget Mybutton({String? title,onpress}){
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Colors.amber),
    ),
    onPressed: ()=>onpress, child: title!.text.make());
}