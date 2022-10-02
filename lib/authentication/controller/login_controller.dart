import 'package:smart_tools/routes/exports.dart';

class LoginController extends GetxController {
  final authService = AuthServices();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  var inProgress = false;

  var show = true;

  void onObscure() {
    show = false;
    update();
  }

  onhide() {
    show = true;
    update();
  }

  void login() async {
    try {
      inProgress = true;
      update();
      await authService.loginWithEmailAndPass(
          emailCtrl.text.trim(), passwordCtrl.text.trim());

      Get.offNamed(RoutesClass.getHomeRoute());
      inProgress = false;
      update();
    } on FirebaseAuthException catch (e) {
      inProgress = false;
      update();
      Get.snackbar(
        "Error",
        e.message!,
        colorText: Colors.white,
        dismissDirection: DismissDirection.horizontal,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
