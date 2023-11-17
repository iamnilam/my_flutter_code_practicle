import 'dart:io';

void main(){

stdout.write("Enter no1");
//stdin.readLineSync().toString();

int no1 = int.parse(stdin.readLineSync().toString());

stdout.write("Enter no2: ");

int no2 = int.parse(stdin.readLineSync().toString());

int no = add(no1, no2);

stdout.write("Enter no2 : $no");

  //example 1 null variable
  // int a;
  // a = 5;
  //
  // int b = a + 11;
  //
  // print(b.toString());


  //example 1 null variable
  // int? a;
  // if(a != null){
  //   int b = a + 11;
  //   pri
  //   nt(b.toString());
  // }


  //LIST
  // List<dynamic> listNames = [
  //   56,
  //   "hhh",
  //   23.23
  // ];
  // listNames.add("nilam");
  // print(listNames[1]);

  // Map<int, String> studentmap = {
  //   1: "nilam",
  //   2: "yadav"
  // };
  // print(studentmap[1]);
}

int add(int no1, int no2){
  int sum = no1 + no2;
  return sum;
}