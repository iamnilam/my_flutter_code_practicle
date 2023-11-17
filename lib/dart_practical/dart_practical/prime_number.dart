

import 'dart:io';

void main(){
  print("Enter any no to check if it is a Prime No:");

  int iNo = int.parse(stdin.readByteSync().toString());

  bool isPrime = true;

  int upperRange = iNo~/2;
  for(int n=2; n<=upperRange; n++){
    if(iNo % n == 0){
      isPrime = false;
      break;
    }
  }

  if(isPrime){
    print("this is prime number");
  }else{
    print("this is not a prime number");
  }
}