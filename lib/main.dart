import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bottom_navbar/bindings/app_bindings.dart';
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
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()), 
        GetPage(
          name: '/homepage', 
          page: () => HomePage(), 
          bindings: [AppBindings()],
        ), 
      ],
    );
  }
}
