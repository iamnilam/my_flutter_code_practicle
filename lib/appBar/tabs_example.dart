import 'package:flutter/material.dart';
import 'package:ws_code_practicle/appBar/tabs/callTab.dart';
import 'package:ws_code_practicle/appBar/tabs/chatTab.dart';
import 'package:ws_code_practicle/appBar/tabs/statusTab.dart';

class TabExample extends StatefulWidget {
  const TabExample({super.key});

  @override
  State<TabExample> createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample> with SingleTickerProviderStateMixin {
late TabController mTabController;
String mTitle = "Chat";

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    mTabController = TabController(length: 3, vsync: this);
    mTabController.addListener(() {
      print(mTabController.index);
      if(mTabController.index==0){
        mTitle = "Chat";
      }else if(mTabController.index==1){
        mTitle = "Status";
      }else{
        mTitle = "Call";
      }
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:  Text(mTitle),
          bottom:  TabBar(
            controller: mTabController,
           // isScrollable: true,
            tabs: [
             Tab(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.chat),
                   SizedBox(width: 11,),
                   Text("Chat")
                 ],
               ),
             ),
             Tab(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.update),
                   SizedBox(width: 11,),
                   Text("Status")
                 ],
               ),
             ),
             Tab(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.call),
                   SizedBox(width: 11,),
                   Text("Call")
                 ],
               ),
             ),
            ],
          ),
        ),
        body: TabBarView(
          controller: mTabController,
          children: [
            StatusTabsScreen(),
            ChatTabScreen(),
            CallTabScreen(),
          ],
        ),

      ),
    );
  }
}
