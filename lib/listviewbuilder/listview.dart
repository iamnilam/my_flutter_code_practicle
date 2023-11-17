import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {

  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<Map<String, dynamic>> listData = [
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.blue,
      "img": "assets/images/google.jpg",
      "time": "11:11 am",
      "unReadCount": 0
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.red,
      "img": "assets/images/sundarpichai.jpg",
      "time": "11:11 am",
      "unReadCount": 4
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.yellow,
      "img": "assets/images/1.jpg",
      "time": "11:11 am",
      "unReadCount": 5
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
      "unReadCount": 10
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.pink,
      "img": "assets/images/4.jpg",
      "time": "11:11 am",
      "unReadCount": 2
    },
    {
      "name": "nilam",
      "subTitle": "hey nilam",
      "color": Colors.orange,
      "img": "assets/images/5.jpg",
      "time": "11:11 am",
      "unReadCount": 9
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Views List"),
      ),
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              maxRadius: 30,
              backgroundColor: listData[index]["color"],
              backgroundImage: AssetImage(listData[index]["img"]),
            ),
            title: Text("${listData[index]["name"]}"),
            subtitle: Text("${listData[index]["subTitle"]}"),
            trailing: Column(
              children: [
                Text("${listData[index]["time"]}", style: const TextStyle(color: Colors.black)),
                listData[index]["unReadCount"] == 0 ? Container(width: 0,) : Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text("${listData[index]["unReadCount"]}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
