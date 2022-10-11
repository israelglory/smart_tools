import 'package:smart_tools/routes/exports.dart';

class HomeController extends GetxController {
  final authService = AuthServices();

  void logOut() {
    authService.logOut();
    Get.offNamed(RoutesClass.getLoginRoute());
  }

  int selectedIndex = 0;
  final List children = [const DiaryHomePage()];
  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
