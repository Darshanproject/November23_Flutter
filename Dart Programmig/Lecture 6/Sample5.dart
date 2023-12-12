import 'dart:io';

int  sum(){
  var a,b;
  print("Enter your values here : ");
  a=int.parse(stdin.readLineSync()!);
  print("Enter your values here : ");
  b=int.parse(stdin.readLineSync()!);
  return a*b;
}

void main(){
  var answer=sum();
  print("This is your mul $answer");
}