import 'package:flutter/material.dart';

import '../core/customized_text_style.dart';


class ReturnedErrorMsg extends StatelessWidget {
  final String msg;
  const ReturnedErrorMsg({
    super.key, required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:  Text( msg, style: $bodyText,),
      ),
    );
  }
}