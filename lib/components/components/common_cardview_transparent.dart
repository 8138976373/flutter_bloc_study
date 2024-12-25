import 'package:flutter/material.dart';

class CardViewTransparent extends StatelessWidget {
  const CardViewTransparent(
      {super.key,
      this.shadowColor,
      this.blurRadius,
      this.cardColor,
      required this.child,
      this.radius,
      this.padding,
      this.spreadRadius});
  final Color? shadowColor;
  final Color? cardColor;
  final double? radius;
  final double? blurRadius;
  final double? spreadRadius;
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 5)),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 5),
            boxShadow: [
              BoxShadow(
                color: shadowColor ?? const Color.fromARGB(177, 75, 74, 74),
              ),
              BoxShadow(
                color: cardColor ?? Theme.of(context).cardColor,
                spreadRadius: spreadRadius ?? 1,
                blurRadius: blurRadius ?? 8,
              ),
            ],
          ),
          padding: EdgeInsets.all(padding ?? 10.0),
          child: child),
    );
  }
}
