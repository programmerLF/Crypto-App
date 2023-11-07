
import 'package:crypto_app/home_view/data/models/menu_item_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';



class HomePageTop extends StatefulWidget {
  final Function onTapClicked;

  const HomePageTop({super.key, required this.onTapClicked});

  @override
  State<HomePageTop> createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop>
    with TickerProviderStateMixin {

  int selectedIndex = 0;
  List<MenuItemModel> items = MenuItemModel.menuItemsList;

  void changeSelected(int index) {
    widget.onTapClicked(index);
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return AppContainer(
        decoration:  BoxDecoration(
            color: theme.colors.surface,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 15),
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
                              ? context.setLocale(const Locale('ar'))
                              : context.setLocale(const Locale('en'));
                          // print(context.locale.toString());
                          setState(() {});
                        },
                        child: AppText.bodyBold(
                          'language'.tr(context: context) ?? "",
                          color: theme.colors.textBodySecondary,
                        )),
                  ),
                ),
                AppText.displayH2Heavy('app_title'.tr(context: context) ?? "", color: theme.colors.textBodyPrimary,),
                const SizedBox(height: 30,),

                AppPillList(
                  selectedIndex: 0,
                  onTabChanged: (index) {
                    changeSelected(index);
                  },
                  pillsLabel: const [
                    "Coins List",
                    "Beneficiary",
                    "Top Gainers",
                    "Top Losers",
                    "Most Visited",
                    "Newly Listed"
                  ],
                ),

                // "Int)

                // Container(
                //   height: 60,
                //   child: ListView.builder(
                //       itemCount: items.length,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (context, index) => MenuBarItem(
                //             title: items[index].title,
                //             borderColor: selectedIndex == index
                //                 ? items[index].selectedBorderColor
                //                 : items[index].borderColor,
                //             onTapFunction: () {
                //               changeSelected(index);
                //             },
                //           )),
                // ),
              ],
            ),
          ),
        ));
  }
}
