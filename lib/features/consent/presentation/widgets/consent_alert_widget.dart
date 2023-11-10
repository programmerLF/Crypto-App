import 'package:kib_design_system/kib_design_system.dart';



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
