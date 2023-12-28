import 'dart:math';
void main(){
  List name = ["Anjali","Anpanman","Matri","Kavya","Devang","Badal","Smit"];
  Random _random =Random();
  int _randomnumber =_random.nextInt(name.length);
  print(name[_randomnumber]);
}