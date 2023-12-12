/*
Function with arugments and without return type
datatype function_name(arugment){
  function body
}
void main(){
  function_name(argument);
}
*/
import 'dart:io';

void sum(int number,int number2){
  int ans=number+number2;
  print("This is your ans : $ans");
}
void main(){
  var number,number2;
  print("Enter your numbers here : ");
  number =int.parse(stdin.readLineSync()!);
  print("Enter your numbers here : ");
  number2 =int.parse(stdin.readLineSync()!);
  sum(number, number2);
}