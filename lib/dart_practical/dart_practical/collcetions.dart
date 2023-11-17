
import 'dart:io';

void main(){
  List<Map<String, dynamic>> listStud = [
    {
      "name": "nilam",
      "class": "x",
      "sec": "A",
      "rollNo": "nilam",
      "Address": [
        "Home Address",
        "dfdsfdsfdsf"
      ],
      "marks": {
        "eng": 75,
        "maths": 80,
        "hindi": 80,
        "gujarati": 80,
        "gujarati": 80,
      }
    },
    {
      "name": "nilam",
      "class": "x",
      "sec": "A",
      "rollNo": "nilam",
      "Address": [
        "Home Address",
        "dfdsfdsfdsf"
      ],
      "marks": {
        "eng": 75,
        "maths": 90,
        "hindi": 80,
        "gujarati": 80,
        "gujarati": 80,
      }
    },
    {
      "name": "nilam",
      "class": "x",
      "sec": "A",
      "rollNo": "nilam",
      "Address": [
        "Home Address",
        "dfdsfdsfdsf"
      ],
      "marks": {
        "eng": 75,
        "maths": 100,
        "hindi": 80,
        "gujarati": 80,
        "gujarati": 80,
      }
    },
  ];

  List<String> ListName = [
"nilam",
    "nilu",
    "nikki"
  ];

  // for(int i=0; i<listStud.length; i++){
  //   String name = listStud[i]["name"];
  //   //Map<String, int> marks = listStud[i]["marks"];
  //   int mathMarks = listStud[i]["marks"]["maths"];
  //   //print("Name: $name\nMarks: $marks");
  //   print(mathMarks);
  // }

  // for(Map<String,dynamic> element in listStud){
  //    String name = element["name"];
  //   Map<String, int> marks = element["marks"];
  //   int mathMarks = element["marks"]["maths"];
  //   //print("Name: $name\nMarks: $marks");
  //   print(element);
  // }

  // for(String element in listStud){
  //
  //   print(element);
  // }
  
  print(ListName);

  ListName.add("Yadav");
  print(ListName);
}