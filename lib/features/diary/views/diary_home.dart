import 'package:smart_tools/features/diary/widgets/dairy_item.dart';
import 'package:smart_tools/routes/exports.dart';

class DiaryHomePage extends StatelessWidget {
  const DiaryHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DiaryHomeController>(
      init: DiaryHomeController(),
      builder: (controller) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            elevation: 5,
            onPressed: () {
              Get.toNamed(RoutesClass.getCreateDiaryRoute());
            },
            child: const Icon(Icons.add),
          ),
          body: Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const DiaryItem();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16.0,
                );
              },
              itemCount: 20,
            ),
          ),
        );
      },
    );
  }
}
