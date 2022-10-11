import '../../../routes/exports.dart';

class DiaryItem extends StatelessWidget {
  const DiaryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      padding: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26, //New
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(5)),
            child: const AppText(
              '''Jan.
25
2022''',
              color: Colors.white,
              size: 16,
              alignment: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  'I ran into this cool dude',
                  size: 20,
                  fontWeight: FontWeight.w600,
                ),
                AppText(
                  'It was back in December when a insta message got pop up, that is when something unexpected happened. Basically we were college classmates who barely talked two-three times in whole year course. After which our streams got seperated.Didn’t knew each others contact no but destiny had some plans back then.',
                  size: 16,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
