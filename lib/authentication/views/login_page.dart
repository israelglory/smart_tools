import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smart_tools/authentication/controller/login_controller.dart';
import 'package:smart_tools/components/app_button.dart';
import 'package:smart_tools/components/app_text.dart';
import 'package:smart_tools/constants/app_colors.dart';
import 'package:smart_tools/routes/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: AppColors.primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Welcome Back, Kindly login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 60,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primaryColor,
                                    //Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 5,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      controller: controller.emailCtrl,
                                      decoration: const InputDecoration(
                                          prefixIcon: Icon(Icons.person),
                                          hintText: "Email address",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      controller: controller.passwordCtrl,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.lock,
                                          ),
                                          suffixIcon: InkWell(
                                            onTap: () {
                                              //controller.onObscure();
                                              if (controller.show = true) {
                                                controller.onObscure();
                                              }
                                              if (controller.show = false) {
                                                controller.onObscure();
                                              }
                                            },
                                            child: const Icon(
                                              Icons.remove_red_eye,
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print('Taped');
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: AppText(
                                      "Forgot Password?",
                                      alignment: TextAlign.end,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            AppButton(
                              onPressed: () {},
                              color: AppColors.primaryColor,
                              radius: 50,
                              width: 100.w,
                              padding: const EdgeInsets.all(15.0),
                              child: const AppText("Login",
                                  size: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const AppText(
                                  "Doesn't have account?",
                                  alignment: TextAlign.end,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesClass.getRegisterRoute());
                                  },
                                  child: const AppText(
                                    "Create Account",
                                    alignment: TextAlign.end,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
