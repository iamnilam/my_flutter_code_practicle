

import 'dart:io';

void main(){


  print("Enter the  no of terms of fabonacci series you want to print:");
  int temp = int.parse(stdin.readLineSync().toString());

  int n1 = 0;
  int n2 = 1;
  List<int> listFab = [n1, n2];

  for(int i = 2; i<temp; i++){
    int n3 = n1 + n2;
    listFab.add(n3);
    n1 = n2;
    n2 = n3;
  }
}