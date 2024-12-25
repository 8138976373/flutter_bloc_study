import 'package:flutter/material.dart';
import '../const_widget.dart';

class ExpandedTile extends StatelessWidget {
  const ExpandedTile({
    super.key,
    this.selected = false,
    this.height,
    this.width,
    this.title = empty,
    this.children,
    this.margin = const EdgeInsets.only(bottom: 10),
    this.childrenPadding,
    this.iconColor,
    this.iconSize = 20,
    this.tilePadding = const EdgeInsets.only(bottom: 10, top: 10),
    required this.onDropDownTap,
  });
  final double? height;
  final double? width;

  final bool selected;
  // final bool initially;
  final void Function() onDropDownTap;
  final Widget title;
  final Color? iconColor;
  final double iconSize;
  final List<Widget>? children;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry? childrenPadding;
  final EdgeInsetsGeometry tilePadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Column(
        children: [
          InkWell(
            onTap: onDropDownTap,
            child: Padding(
              padding: tilePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  title,
                  selected
                      ? Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: iconSize,
                          color: iconColor,
                        )
                      : Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: iconSize,
                          color: iconColor,
                        )
                ],
              ),
            ),
          ),
          selected
              ? Padding(
                  padding: childrenPadding ?? EdgeInsets.zero,
                  child: Column(
                    children: children ?? [],
                  ),
                )
              : empty
        ],
      ),
    );
  }
}
