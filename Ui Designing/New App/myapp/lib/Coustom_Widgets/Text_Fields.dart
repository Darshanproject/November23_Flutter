import 'package:myapp/Const/export.dart';

Widget Text_F({String? hint,String?lable,IconButton? icons,String? title,pass,vale}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(red).size(19).make(),
      5.heightBox,
      TextFormField(
        obscureText: pass,
        validator: vale,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          hintText: hint,
          labelText: lable,
          suffixIcon: icons,
        ),
      ),
    ],
  );
}
