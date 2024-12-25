import '/components/const_widget.dart';
import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import 'texts.dart';


class CheckBoxTile extends StatelessWidget {
  const CheckBoxTile(
      {super.key,
      required this.title,
      this.isChecked = false,
      required this.onChanged,
      this.textColor = red,
      this.onTapText,
      this.maxLines = 3});
  final bool isChecked;
  final String title;
  final Function()? onTapText;
  final void Function(bool?)? onChanged;
  final Color textColor;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          activeColor: midGrey,
          checkColor: white,
          side: const BorderSide(color: midGrey, width: 1.5),
          // hoverColor: green,
        ),
        HorizontalSpace.horizontalSpaceW5,
        Flexible(
          child: InkWell(
            onTap: onTapText,
            child: BodyText(
              title: title,
              color: textColor,
              textAlign: TextAlign.start,
              maxLines: maxLines,
            ),
          ),
        )
      ],
    );
  }
}
