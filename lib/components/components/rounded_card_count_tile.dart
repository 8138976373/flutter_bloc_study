import '/components/const_widget.dart';
import 'package:flutter/material.dart';

class RoundCardCountView extends StatelessWidget {
  const RoundCardCountView({
    super.key,
    this.height,
    this.text,
  });
  final double? height;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 23,
        // width: calculateStringWidth(text.toString()) ,
        constraints: const BoxConstraints(minWidth: 25),
        padding: CustomPadding.padding5,
        decoration: const BoxDecoration(
            color: Color(0xffFCEB53),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Center(
            child: Text(
          (text.toString()),
        )));
  }
}
