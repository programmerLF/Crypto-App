import 'package:crypto_app/core/customized_text_style.dart';
import 'package:crypto_app/home_view/data/models/menu_item_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/widgets/base/text.dart';

import 'menu_bar_item.dart';

class HomePageTop extends StatefulWidget {
  final Function onTapClicked;

  const HomePageTop({super.key, required this.onTapClicked});

  @override
  State<HomePageTop> createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop> {
  int selectedIndex = 0;
  List<MenuItemModel> items = MenuItemModel.menuItemsList;

  void changeSelected(int index) {
    widget.onTapClicked(index);
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 15, 8, 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        context.locale.toString() == 'en'
                            ? context.setLocale(Locale('ar'))
                            : context.setLocale(Locale('en'));
                        print(context.locale.toString());
                        setState(() {
                        });
                      },
                      child: Text( 'language'.tr(context: context) ?? "",style: $bodyText,)
                    ),
                  ),
                ),
                AppText.headline('app_title'.tr(context: context) ?? ""),
                // Text(
                //   'app_title'.tr(context: context) ?? "",
                //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                // ),
                Container(
                  height: 60,
                  child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => MenuBarItem(
                            title: items[index].title,
                            borderColor: selectedIndex == index
                                ? items[index].selectedBorderColor
                                : items[index].borderColor,
                            onTapFunction: () {
                              changeSelected(index);
                            },
                          )),
                ),
              ],
            ),
          ),
        ));
  }
}
