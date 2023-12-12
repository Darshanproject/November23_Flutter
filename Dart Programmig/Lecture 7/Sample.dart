/*
Syntax:
class Class_name{
  memeber function
}

void main(){
  var obj   classname;
}

*/

class Food{    ///Class delclartion
  void Bevrages(){     ///member function
    print("Moito");   ///body of memeber function
  }
}

void main(){
   var obj = Food();      ///obejct creation
  obj.Bevrages();    ///calling methode
}