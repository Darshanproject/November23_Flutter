import 'dart:io';

int  sum(int a,int b){
  return a*b;
}

void main(){
   var a,b;
  print("Enter your values here : ");
  a=int.parse(stdin.readLineSync()!);
  print("Enter your values here : ");
  b=int.parse(stdin.readLineSync()!);
  var answer=sum(a,b);
  print("This is your mul $answer");
}