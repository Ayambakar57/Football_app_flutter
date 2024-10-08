import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/assets/uclbackground.jpg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.6), 
            colorBlendMode: BlendMode.darken,
          ),
     
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    'lib/assets/ucl.png',
                    height: 100,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to UCL",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 40),
               
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/homepage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Start",
                    style: TextStyle(
                      color: Color(0xFF1A2F50), 
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
