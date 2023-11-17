import 'package:flutter/material.dart';

class DialoBox extends StatelessWidget {
  const DialoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.cyan.withOpacity(0.2),
                  builder: (ctx){
                    return AlertDialog(
                      title: const Text("Important Data"),
                      icon: const Icon(Icons.delete),
                      content: const Text("Are you sure delete every thing"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("Yes!!")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("No!!")),
                      ],
                    );
                  });
            }, child: const Text("Check Your Dialog Box"),)
          ],
        ),
      )
    );
  }
}
