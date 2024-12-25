import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../const_widget.dart';
import 'common_card/common_card.dart';
import 'texts.dart';

class DropDownTileStringList extends StatelessWidget {
  const DropDownTileStringList({
    required this.selectedValueText,
    required this.onChanged,
    required this.items,
    this.margin,
    this.height = 35,
    super.key,
  });
  final String selectedValueText;
  final EdgeInsetsGeometry? margin;
  final List<String> items;
  final double height;
  final void Function(String?) onChanged;
  @override
  Widget build(BuildContext context) {
    return ExpandedCardView(
      height: height,
      radius: 8,
      constraints: const BoxConstraints(
          minWidth: 50, maxWidth: 380, maxHeight: 50, minHeight: 30),
      margin: margin ?? const EdgeInsets.only(bottom: 10),
      padding: CustomPadding.padding5,
      child: DropdownButton<String>(
        elevation: 0,
        isExpanded: true,
        iconEnabledColor: midGrey,
        hint: BodyTextWithPadding(
          title: selectedValueText,
          padding:  HorizontalPadding.paddingHorizontal10,
        ),
        underline: empty,
        enableFeedback: true,
        dropdownColor: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(6),
        items: items.map((String value) {
          return DropdownMenuItem<String>(
              value: value,
              child: Center(
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                ),
              ));
        }).toList(),
        onChanged: (v) {
          onChanged(v);
        },
      ),
    );
  }
}
