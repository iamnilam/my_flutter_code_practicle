
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  List<Map<String, dynamic>> listData = [
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.blue,
      "img": "assets/images/google.jpg",
      "time": "11:11 am",
      "unReadCount": 2,
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.red,
      "img": "assets/images/sundarpichai.jpg",
      "time": "11:11 am",
      "unReadCount": 2,
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.yellow,
      "img": "assets/images/1.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.grey,
      "img": "assets/images/2.png",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.green,
      "img": "assets/images/3.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.pink,
      "img": "assets/images/4.jpg",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.indigo,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.black,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.green,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.pink,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.yellow,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.cyan,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.deepPurple,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
  ];

  GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Screen"),
      ),
      body: GridView.builder(
        itemCount: listData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
                mainAxisSpacing: 11,
            crossAxisSpacing: 11
          ),
          itemBuilder: (_, index){
            return Container(
              color: listData[index]["color"],
            );

          })
      // Column(
      //   children: [
      //     Expanded(
      //       child: GridView.extent(
      //         crossAxisSpacing: 11,
      //            mainAxisSpacing: 11,
      //            maxCrossAxisExtent: 200,
      //          // crossAxisCount: 2,
      //          children: listData.map((e) => Container(
      //             color: e["color"]
      //          )).toList()
      //       ),
      //     ),
      //     Expanded(child: GridView.count(
      //         crossAxisCount: 2,
      //         mainAxisSpacing: 11,crossAxisSpacing: 11,
      //         //maxCrossAxisExtent: 200,
      //         // crossAxisCount: 2,
      //         children: listData.map((e) => Container(
      //             color: e["color"]
      //         )).toList()
      //     ),)
      //   ],
      // ),
    );
  }
}
