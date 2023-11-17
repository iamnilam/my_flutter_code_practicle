import 'package:flutter/material.dart';
import 'package:ws_code_practicle/custome_btn/btn.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AppRoundedBtn(onTap: () {  }, btnName: 'Online',mWidth: 100),
            const SizedBox(height: 20,),
            AppRoundedBtn(onTap: () {  }, btnName: 'Offline',mWidth: 150),
            const SizedBox(height: 20,),
            AppRoundedBtn(onTap: () {  }, btnName: 'Case',mWidth: 200),

          ],
        ),
      ),
    );
  }
}
