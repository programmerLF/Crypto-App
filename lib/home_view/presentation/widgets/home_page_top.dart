import 'package:flutter/material.dart';

import 'menu_bar_item.dart';


class HomePageTop extends StatelessWidget {
  const HomePageTop({
    super.key,
  });

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
          padding: const EdgeInsets.fromLTRB(8.0, 70, 8, 8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Cryptocurrency Market",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MenuBarItem(
                        title: "Coins List",
                        borderColor: Colors.white60,
                        onTapFunction: () {},
                      ),
                      MenuBarItem(
                          title: "Trending",
                          borderColor: Colors.white60,
                          onTapFunction: () {}),
                      MenuBarItem(
                          title: "Top Gainers",
                          borderColor: Colors.white60,
                          onTapFunction: () {}),
                      MenuBarItem(
                          title: "Top Losers",
                          borderColor: Colors.white60,
                          onTapFunction: () {}),
                      MenuBarItem(
                          title: "Most Visited",
                          borderColor: Colors.white60,
                          onTapFunction: () {}),
                      MenuBarItem(
                          title: "Newly Listed",
                          borderColor: Colors.white60,
                          onTapFunction: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}