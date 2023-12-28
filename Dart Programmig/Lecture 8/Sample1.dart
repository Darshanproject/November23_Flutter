/*
there 5 types of inher
1 single
class class_name{
  member function
}
class class_name2 extends class_name{

}
2 mulitlevel
3 multipel
4 hybrid
5 hirchal
*/

class Display{
   Display1(){
    print("This is your parent class");
  }
}

class Human extends Display{
 void  Display2(){
  print("This is your child class ");
  }
}

void main(){
  var obj = Human();
  obj.Display1();
  obj.Display2();
}