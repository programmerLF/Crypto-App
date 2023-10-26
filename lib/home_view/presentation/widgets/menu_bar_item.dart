import 'package:flutter/material.dart';


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