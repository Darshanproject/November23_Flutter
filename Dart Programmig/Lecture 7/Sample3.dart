import 'dart:io';

class Students{
  var name;
  var rollno;
  Students({required this.name ,required this.rollno}){
      print("Name = $name");
      print("Roll No = $rollno");
  }
}


void main(){
  var name,rollno;
  print("Enter your name here : ");
  name=stdin.readLineSync()!;
  print("Enter your roll no here : ");
  rollno =int.parse(stdin.readLineSync()!);
  // ignore: unused_local_variable
  var obj = Students(name: name, rollno: rollno);
}