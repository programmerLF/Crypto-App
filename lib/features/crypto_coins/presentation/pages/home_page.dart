import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 50, 8, 8),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Cryptocurrency Market",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800),
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
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class MenuBarItem extends StatelessWidget {
  final Function? onTapFunction;
  final Color borderColor;
  final String title;

  const MenuBarItem({
    required this.borderColor,
    required this.title,
    super.key,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTapFunction!(),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                color: borderColor,
                width: 1,
              ),
            )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
