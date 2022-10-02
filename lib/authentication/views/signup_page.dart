import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smart_tools/authentication/controller/signup_controller.dart';
import 'package:smart_tools/components/app_button.dart';
import 'package:smart_tools/components/app_text.dart';
import 'package:smart_tools/constants/app_colors.dart';
import 'package:smart_tools/routes/routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      init: SignUpController(),
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
                        "Register",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Join thousands of users",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
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
                                      blurRadius: 5,
                                      offset: const Offset(0, 5),
                                    ),
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      controller:
                                          controller.firstnameController,
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person,
                                        ),
                                        hintText: "First Name",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      controller: controller.lastController,
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.person,
                                        ),
                                        hintText: "Last Name",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      controller: controller.emailController,
                                      decoration: const InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.email,
                                        ),
                                        hintText: "Email address",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.shade200,
                                        ),
                                      ),
                                    ),
                                    child: TextField(
                                      controller: controller.passwordController,
                                      obscureText: controller.show,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                        ),
                                        suffixIcon: controller.show == true
                                            ? InkWell(
                                                onTap: () {
                                                  controller.onObscure();
                                                },
                                                child: const Icon(
                                                  CupertinoIcons.eye_fill,
                                                ))
                                            : InkWell(
                                                onTap: () {
                                                  controller.onhide();
                                                },
                                                child: const Icon(
                                                  CupertinoIcons.eye_slash_fill,
                                                ),
                                              ),
                                        hintText: "Password",
                                        hintStyle: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            AppButton(
                              onPressed: () {
                                controller.signUp();
                              },
                              color: AppColors.primaryColor,
                              radius: 50,
                              width: 100.w,
                              padding: const EdgeInsets.all(15.0),
                              child: Visibility(
                                visible: !controller.inProgress,
                                replacement: const CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    AppText("Register",
                                        size: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const AppText(
                                  "Already have account?",
                                  alignment: TextAlign.end,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesClass.getLoginRoute());
                                  },
                                  child: const AppText(
                                    "Login to your account",
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
