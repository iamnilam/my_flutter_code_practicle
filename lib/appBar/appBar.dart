import 'package:flutter/material.dart';
import 'package:ws_code_practicle/custome_btn/custome_btn.dart';


class MyAppBar extends StatefulWidget {
  MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  List<Map<String, dynamic>> listPopupMenuItems = [
    {
      "icon": Icons.settings,
      "title": "Setting"
    },
    {
      "icon": Icons.info_outline,
      "title": "About Us"
    },
    {
      "icon": Icons.call,
      "title": "Contact us"
    },
    {
      "icon": Icons.logout,
      "title": "Logout"
    },
  ];

  String mInitialValue = "Contact us";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(Icons.home,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        shadowColor: Colors.green,
        elevation: 5,
        bottom: PreferredSize(child: Container(),
          preferredSize: Size(double.infinity,50),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
          PopupMenuButton(
            initialValue: mInitialValue,
              onSelected: (value){
                mInitialValue = value.toString();
                setState(() {

                });
              },
              color: Colors.yellow,
              elevation: 11,
              shadowColor: Colors.yellow,
              tooltip:  "Settings",
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21)
              ),
              itemBuilder: (_){
                return listPopupMenuItems.map((eachData) =>
                    PopupMenuItem(
                        onTap: (){
                          if(eachData["title"] == 'Setting'){
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context) => CustomButton()));
                          }
                        },
                        child: Row(
                      children: [
                        Icon(eachData["icon"]),
                        SizedBox(width: 20,),
                        Text(eachData["title"])
                      ],
                    )),
                ).toList();
              })
        ],
      ),
    );
  }
}

