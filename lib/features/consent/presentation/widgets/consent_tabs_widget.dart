import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/widgets/tabs/tab_item.dart';



class ConsentTabsWidget extends StatefulWidget {
  const ConsentTabsWidget({
    super.key,
    required this.pageIndex,
    required this.controller,
  });

  final int pageIndex;
  final PageController controller;

  @override
  State<ConsentTabsWidget> createState() => _ConsentTabsWidgetState();
}

class _ConsentTabsWidgetState extends State<ConsentTabsWidget> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return AppTabs(
      tabs: [
        TabItem(title: "Active sessions"),
        TabItem(title: "History"),
      ],
      controller: TabController(
          length: 2, vsync: this, initialIndex: widget.pageIndex),
      onTap: (index) {
        widget.controller.animateToPage(index,
            duration: const Duration(microseconds: 200),
            curve: Curves.linear);
      },
    );
  }
}
