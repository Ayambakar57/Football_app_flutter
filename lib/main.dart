import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bottom_navbar/pages/home_page.dart';
import 'package:my_bottom_navbar/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/loginpage', 
      getPages: [
      
        GetPage(name: '/loginpage', page: () => LoginPage()),
        GetPage(name: '/homepage', page: () => HomePage()), 
      ],
    );
  }
}
