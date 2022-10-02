import 'package:smart_tools/routes/exports.dart';

class SignUpController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastController = TextEditingController();

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
