import 'package:kib_design_system/kib_design_system.dart';


// if the title and content are constant text, you don't need to pass from outside
//you can write it here directly to avoid writing too much code in the main page

class ConsentAlertWidget extends StatelessWidget {
  final String title;
  final String content;
  const ConsentAlertWidget({
    super.key, required this.title, required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AppAlert.information(
      padding: const AppEdgeInsets.s(),
      title: title,
      content: content,
      sticky: true,
      onCloseSticky: () {},
    );
  }
}
