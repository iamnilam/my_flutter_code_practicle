import 'package:flutter/material.dart';

class AppRoundedBtn extends StatelessWidget {
  String btnName;
  VoidCallback onTap;
  double mWidth;
  Color bgColor;
  Color fgColor;
   AppRoundedBtn({super.key,
    required this.btnName,
     required this.onTap,
     this.mWidth = 200,
     this.bgColor = Colors.blue,
     this.fgColor = Colors.white
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(mWidth, 50),
        backgroundColor: bgColor,
        foregroundColor: fgColor


    ), child: Text(
      btnName));
  }
}
