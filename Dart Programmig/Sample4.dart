/*
(condtion)?exp1:exp2;
logical

&&
||
!=
relo

>
< 
>=
<=
==
*/

import 'dart:io';

void main(){
var num;
print("Enter your values here : ");
num=int.parse(stdin.readLineSync()!);
(num>18 || num<0 )?print("You can go inside"):print("You can't go in");
}