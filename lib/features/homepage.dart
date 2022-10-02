import 'package:smart_tools/routes/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: AppButton(
              onPressed: controller.logOut,
              padding: const EdgeInsets.all(20),
              color: AppColors.primaryColor,
              radius: 10,
              child: const AppText(
                'LogOut',
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
