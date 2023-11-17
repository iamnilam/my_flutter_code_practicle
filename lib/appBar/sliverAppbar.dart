import 'package:flutter/material.dart';


class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            flexibleSpace: Container(
              color: Colors.blue,
            ),
            expandedHeight: 200,
            title: Text("Home"),
            leading: Icon(Icons.home,),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            shadowColor: Colors.green,
            elevation: 5,
            bottom: PreferredSize(child: FlutterLogo(),

              preferredSize: Size(double.infinity,50),
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
            ],
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => ListTile(title: Text('${index+1}'),)))
        ],
      ),
    );
  }
}

