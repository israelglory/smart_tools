import 'package:smart_tools/routes/exports.dart';

class HomeController extends GetxController {
  final authService = AuthServices();

  void logOut() {
    authService.logOut();
    Get.offNamed(RoutesClass.getLoginRoute());
  }
}
