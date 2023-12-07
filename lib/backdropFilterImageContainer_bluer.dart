import 'dart:ui';

import 'package:flutter/material.dart';

class Bakc_Ground_Image extends StatelessWidget {
  const Bakc_Ground_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
              clipper: MyClipper(),
              child: Image.asset( "assets/images/sundarpichai.jpg")),
        )
        //image bluer practicle
      // Stack(
      //   children: [
      //     Image.asset(
      //         height: 600,
      //         width: 500,
      //         "assets/images/1.jpg"),
      //     BackdropFilter(filter: ImageFilter.blur(
      //      sigmaX: 10,
      //       sigmaY: 10
      //     ),
      //       child: Text(""),
      //     )
      //   ],
      // ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var mPath = Path();
    mPath.lineTo(size.width, 0);
    mPath.lineTo(size.width, size.height);
    mPath.close();
    return mPath;
    
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
