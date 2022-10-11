import 'package:smart_tools/components/app_textfield.dart';
import 'package:smart_tools/features/diary/controllers/create_diary_controller.dart';
import 'package:smart_tools/routes/exports.dart';

class CreateDiaryPage extends StatelessWidget {
  const CreateDiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateDiaryController>(
      init: CreateDiaryController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: const [
              AppTextField(),
              AppTextField(),
            ],
          ),
        );
      },
    );
  }
}
