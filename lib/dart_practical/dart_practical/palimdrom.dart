

import 'dart:io';

void main(){

  print("Enter any number to check for palimdrome");

  String name = stdin.readLineSync().toString();

  String reversName = "";
  for(int i = name.length-1; i>=0; i--){
     reversName = "$reversName${name[i]}";
  }

  if(name==reversName) {
    print(reversName);
  }else{
    print("Its not palimdrom");
  }
}