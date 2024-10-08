import 'package:get/get.dart';
import 'package:my_bottom_navbar/Controller/bottom_nav_ctr.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavCtr());
}
}