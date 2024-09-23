import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login"),),
      body: Center(child: Container(
        child: Column(
          children: [
            Text("this is login page"),
            ElevatedButton(onPressed: () {
              Get.toNamed('/homepage');
            }, child: Text("login"))
          ],
        ),
      ),),
    );
  }
}