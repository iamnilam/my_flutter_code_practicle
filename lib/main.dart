import 'package:flutter/material.dart';
import 'package:ws_code_practicle/appBar/appBar.dart';
import 'package:ws_code_practicle/appBar/bottomnav/bottomNav.dart';
import 'package:ws_code_practicle/appBar/sliverAppbar.dart';
import 'package:ws_code_practicle/appBar/tabs_example.dart';
import 'package:ws_code_practicle/custome_btn/custome_btn.dart';
import 'package:ws_code_practicle/listviewbuilder/listview.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main()=> runApp(const ClipperDemo());

class ClipperDemo extends StatelessWidget {
  const ClipperDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: CustomButton(),
     // home:  MySliverAppBar(),
      //home: TabExample(),
      home: BottomNavigationBarScreen(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clipper Demo'),),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        children: [
          ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: Container(
              height: 100,
              color: Colors.cyan,
              child: const Text('Number 1'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 100,
              color: Colors.deepOrange,
              child: const Text('Type 2'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.green,
              child: const Text('Type 3'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: OvalRightBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.purpleAccent,
              child: const Text('Type 4'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: ArcClipper(),
            child: Container(
              height: 100,
              color: Colors.yellowAccent,
              child: const Text('Type 5'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: MovieTicketClipper(),
            child: Container(
              height: 100,
              color: Colors.red,
              child: const Text('Type 6'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Container(
              color: Colors.lightBlueAccent,
              height: 100,
              child: const Text('Type 7'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: MultiplePointedEdgeClipper(),
            child: Container(
              height: 100,
              color: Colors.greenAccent,
              child: const Text('TYpe 8'),
            ),
          ),
          const SizedBox(height: 10,),
          ClipPath(
            clipper: OvalTopBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.pink,
              child: const Text('Type 9'),
            ),
          ),
        ],

      ),
    );
  }
}
















