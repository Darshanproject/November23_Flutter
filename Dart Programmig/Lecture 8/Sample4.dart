class AnpanMan {
  void Display (){
    print("This is your Brade Man class .");
  }
}
class Anjali extends AnpanMan{
  void Display1(){
    print("This is your Anjali Class .");
  }
}

class Tops extends AnpanMan{
    void Display2(){
      print("This is your tops class .");
    }
}

void main(){
  var obj=Anjali();
  var obj1=Tops();
  obj.Display();
  obj.Display1();
  obj1.Display();
  obj1.Display2();
}