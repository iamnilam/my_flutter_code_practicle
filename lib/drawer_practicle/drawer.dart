import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  List<Map<String, dynamic>> drawerItem = [
    {
      "icon" : Icons.settings,
      "title": "Setting"
    },
    {
      "icon" : Icons.info_outline,
      "title": "About US"
    },
    {
      "icon" : Icons.call,
      "title": "Contact Us"
    },
    {
      "icon" : Icons.account_circle,
      "title": "My profile"
    },
    {
      "icon" : Icons.logout,
      "title": "Logout"
    },
  ];

  DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dgfdgfg"),
      ),
      body: Container(),
      drawer: Drawer(
        width: 300,
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.lightBlue
              ),
              child: const Column(
                children: [
                  Image(
                      width: 300,
                      height: 200,
                      image: AssetImage("assets/images/google.jpg")),
                  Text("Nilam@gmail.com",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
,
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(child: Icon(Icons.account_circle),),
                        SizedBox(width: 10,),
                        Text("Nilam Yadav",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                      ],
                    ),

                  ),

                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: drawerItem.length,
                  itemBuilder: (context, index){
                return ListTile(
                  leading: Icon(drawerItem[index]["icon"]),
                  title: Text(drawerItem[index]["title"]),

                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
