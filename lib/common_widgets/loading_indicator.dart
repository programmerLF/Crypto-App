import 'package:flutter/material.dart';


class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height / 2,
        child: Center(child: Container(
            height: 40,
            width: 40,
            child: CircularProgressIndicator(color: Colors.grey,))),

      ),
    );
  }

}