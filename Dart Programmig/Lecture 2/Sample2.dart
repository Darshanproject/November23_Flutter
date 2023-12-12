/*
simple if
Syntax:
if(condtion){
  true statement;
}
if else
if(){

}else{

}
else if leadder
if(condtion){

}else if(condtion){

}else{

}
nested if
if(main condtion){
if(condtion){

}else{

}
}else{
  
}
switch
*/
import 'dart:io';
void main(){
  var num1;
  print("Enter your values : ");
  num1=int.parse(stdin.readLineSync()!);
  if(num1>18){
    print("You can go in");
  }else{
    print("You can't go in");
  }
}