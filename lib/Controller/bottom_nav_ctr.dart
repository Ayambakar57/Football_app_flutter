import 'package:get/get.dart';

class BottomNavCtr extends GetxController{
  
  var selectedIndex = 0.obs;
  void chageIndexMenu(int index) {
    selectedIndex.value = index;
  } 

}