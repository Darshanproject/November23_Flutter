/*
with with
without without
with without
without with
datatpe function_name(){
  function body
}
void main(){
  function_name();  calling function
}
*/
import 'dart:io';

void sum(){
  var number,number2,ans;
  print("Enter your numbers here : ");
  number=int.parse(stdin.readLineSync()!);
  print("Enter your numbers here : ");
  number2=int.parse(stdin.readLineSync()!);
  ans=number+number2;
  print("This is your total $ans");
}
void main(){
  sum();
}


