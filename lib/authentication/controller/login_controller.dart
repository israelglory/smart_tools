import 'package:get/get.dart';
import 'package:smart_tools/routes/exports.dart';

class LoginController extends GetxController {
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

  var show = true;

  void onObscure() {
    if (show = true) {
      show = false;
      update();
    }
    if (show = false) {
      show = true;
      update();
    }
  }
}
