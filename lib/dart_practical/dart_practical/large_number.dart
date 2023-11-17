



void main(){

  var list = [1,2,3,4,5];
      var largest = list[0];

      for(var list in list){
       if(list > largest) {
         largest = list;
       }
      }
      print(largest);


}