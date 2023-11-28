import 'dart:io';

/// + - * / %
void main(){
  var num,num1,ans;
  print("Enter your First number : ");
  num=int.parse(stdin.readLineSync()!);
  print("Enter your Second Number : ");
  num1=int.parse(stdin.readLineSync()!);
  // ans=num+num1;
  num+=num1;
  print("Toatl $num");
}