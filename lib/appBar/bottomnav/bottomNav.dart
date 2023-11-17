import 'package:flutter/material.dart';
import 'package:ws_code_practicle/appBar/tabs/callTab.dart';
import 'package:ws_code_practicle/appBar/tabs/statusTab.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  List<Widget> listNavPages = [
    CallTabScreen(),
    StatusTabsScreen(),
    StatusTabsScreen(),
    StatusTabsScreen(),
  ];

  int mSelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Nav"),
      ),
      body: listNavPages[mSelectIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: mSelectIndex,
        onDestinationSelected: (index){
        mSelectIndex = index;
        setState(() {

        });
        },
        destinations: const[
          NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person_off), label: "User"),
          NavigationDestination(icon: Icon(Icons.notification_add), label: "Notification"),
          NavigationDestination(icon: Icon(Icons.local_fire_department), label: "Welcome"),
        ],
      ),
    );
  }
}
