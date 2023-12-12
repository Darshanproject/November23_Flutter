import 'dart:io';
void main(){
  var marks;
  marks=int.parse(stdin.readLineSync()!);
  if(marks > 0 && marks < 100){
    if(marks > 90 && marks < 100){
    print("A Grade!!!");
  }else if(marks > 70 && marks <= 90){
    print("B Grade!!");
  }else if(marks > 50 && marks <= 70){
    print("C Grade !");
  }else if(marks > 40 && marks <= 50){
    print("Pass");
  }else if(marks > 35 && marks <=40){
    print("Just pass");
  }else if(marks < 35 && marks > 0){
    print("Fail");
  }
  }else{
    print("Invalid Input");
  }
}