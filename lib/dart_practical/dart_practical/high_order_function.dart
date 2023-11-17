

void main(){
  myFunc((a,b) => a*b);
}

void newFunc(){}

int add(int a, int b){
  return a+b;
}

void myFunc(Function(int, int) mFunk){
  print(mFunk(5,6));
}