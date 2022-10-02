import 'package:smart_tools/routes/exports.dart';

class SignUpController extends GetxController {
  final authService = AuthServices();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastController = TextEditingController();

  var show = true;
  var inProgress = false;

  void onObscure() {
    show = false;
    update();
  }

  onhide() {
    show = true;
    update();
  }

  void signUp() async {
    try {
      inProgress = true;
      update();
      await authService.registerWithEmailandPass(
        emailController.text.trim(),
        passwordController.text.trim(),
        firstnameController.text.trim(),
        lastController.text.trim(),
      );
      Get.offNamed(RoutesClass.getLoginRoute());
      inProgress = false;
      update();
    } on FirebaseAuthException catch (e) {
      inProgress = false;
      update();
      Get.snackbar(
        "Error",
        e.message!,
        dismissDirection: DismissDirection.horizontal,
        colorText: Colors.white,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
