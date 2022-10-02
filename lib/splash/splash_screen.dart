import 'dart:async';

import 'package:im_animations/im_animations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smart_tools/components/app_text.dart';
import 'package:smart_tools/routes/routes.dart';

import '../routes/exports.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      init: SplashScreenController(),
      initState: (state) async {
        await Future.delayed(const Duration(seconds: 3));

        Get.toNamed(RoutesClass.getLoginRoute());

        /*Timer(const Duration(seconds: 15), () {
          // 5 seconds over, navigate to Page2.
          
        });*/
      },
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeartBeat(
                  beatsPerMinute: 60,
                  child: Image.asset(
                    'assets/images/appIcon.png',
                    height: 300,
                    width: 300,
                  ),
                ),
                const AppText(
                  'Smart Tools',
                  size: 25,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
