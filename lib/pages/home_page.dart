import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bottom_navbar/Controller/bottom_nav_ctr.dart';
import 'package:my_bottom_navbar/pages/menus/ranking.dart';
import 'package:my_bottom_navbar/pages/menus/home.dart';
import 'package:my_bottom_navbar/pages/menus/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavCtr bottomNavCtr = Get.put(BottomNavCtr());

    final List<Widget> menus = [Home(), Ranking(), Profile()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavCtr.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavCtr.selectedIndex.value,
          onTap: bottomNavCtr.chageIndexMenu,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0), 
          selectedItemColor: Colors.white, 
          unselectedItemColor: Colors.grey[500], 
          showSelectedLabels: true, 
          showUnselectedLabels: false, 
          type: BottomNavigationBarType.fixed, 
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
          ), 
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
