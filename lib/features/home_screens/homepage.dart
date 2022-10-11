import 'package:flutter/cupertino.dart';
import 'package:smart_tools/routes/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: controller.logOut,
              ),
            ],
          ),
          body: const DiaryHomePage(),
        );
      },
    );
  }
}
