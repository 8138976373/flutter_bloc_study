import 'package:flutter/material.dart';

import 'common_card/common_card.dart';

class ExpandedView extends StatelessWidget {
  const ExpandedView(
      {super.key,
      this.isExpanded = false,
      this.selectedText = '',
      required this.expandedWidget,
      required this.onTap});
  final bool isExpanded;
  final String selectedText;
  final Widget expandedWidget;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? InkWell(
            onTap: onTap,
            child: CardView(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(selectedText),
                    Icon(isExpanded ? Icons.expand_more : Icons.expand_less)
                  ],
                )),
          )
        : InkWell(onTap: onTap, child: expandedWidget);
  }
}
