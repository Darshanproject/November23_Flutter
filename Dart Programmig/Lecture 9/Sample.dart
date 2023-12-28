class Anpanman{
  void display(){
    print("This is your anpanman class");
  }
}
class Anjali extends Anpanman{
  void display(){
    print("This is anjali class ");
  }
}
void main(){
  var obj = Anjali();
  obj.display();
}