class AnpanMan{
  void Display(){
    print("This is AnpanMan Class .");
  }
}

class Anjali extends AnpanMan{
  void Display1(){
    print("This is anjali class .");
  }
}

class Tops extends Anjali{
  void Display2(){
    print("This is child class .");
  }
}

void main(){
  var obj=Tops();
  obj.Display();
  obj.Display1();
  obj.Display2();
}