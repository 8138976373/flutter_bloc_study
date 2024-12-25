import 'package:flutter/material.dart';
import '../../theme/theme.dart';

import '../const_widget.dart';
import 'common_card/common_card.dart';
import 'texts.dart';

class RadioGroupTile extends StatelessWidget {
  const RadioGroupTile(
      {super.key,
      this.title,
      required this.optionList,
      required this.onSelected,
      this.textColor = textColorGrey,
      this.optionDirection = Axis.horizontal,
      this.onTapText});
  final String? title;
  final Function()? onTapText;
  final void Function(int) onSelected;
  final Color textColor;
  final List<OptionModel> optionList;
  final Axis optionDirection;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == null
            ? empty
            : Padding(
                padding: VerticalPadding.paddingVertical5,
                child: TextTile(
                  text: title!,
                  color: textColor,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                ),
              ),
        Wrap(
            direction: optionDirection,
            runAlignment: WrapAlignment.spaceBetween,
            spacing: 10,
            children: List.generate(optionList.length, (index) {
              final item = optionList[index];
              return InkWell(
                  onTap: () {
                    onSelected(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpandedCardView(
                          radius: 50,
                          padding: CustomPadding.padding5,
                          color: item.isSelected ? midGrey : null,
                          border: Border.all(
                              width: item.isSelected ? 2 : 1,
                              color: item.isSelected ? midGrey : borderColor),
                          child: ExpandedCardView(
                            padding: CustomPadding.padding5,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 12,
                                color: Color.fromRGBO(0, 0, 0, 0.16),
                              )
                            ],
                            border: item.isSelected
                                ? null
                                : Border.all(width: 1, color: borderColor),
                            // color: item.isSelected ? midGrey : white,
                          ),
                        ),
                        HorizontalSpace.horizontalSpaceW10,
                        InkWell(
                          onTap: onTapText,
                          child: TextTile(
                            text: item.title,
                            color: textColor,
                            textAlign: TextAlign.start,
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                  ));
            })),
        // ListView.builder(
        //     shrinkWrap: true,
        //     scrollDirection: optionDirection,
        //     physics: const NeverScrollableScrollPhysics(),
        //     itemCount: optionList.length,
        //     itemBuilder: (BuildContext context, int index) {
        //       final item = optionList[index];
        //       return InkWell(
        //           onTap: () {
        //             onSelected(index);
        //           },
        //           child: Padding(
        // padding: const EdgeInsets.only(bottom: 8),
        // child: Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     ExpandedCardView(
        //       radius: 50,
        //       padding: CustomPadding.padding5,
        //       color: item.isSelected ? midGrey : null,
        //       border: Border.all(
        //           width: item.isSelected ? 2 : 1,
        //           color: item.isSelected ? midGrey : borderColor),
        //       child: ExpandedCardView(
        //         padding: CustomPadding.padding5,
        //         boxShadow: const [
        //           BoxShadow(
        //             offset: Offset(2, 2),
        //             blurRadius: 12,
        //             color: Color.fromRGBO(0, 0, 0, 0.16),
        //           )
        //         ],
        //         border: item.isSelected
        //             ? null
        //             : Border.all(width: 1, color: borderColor),
        //         // color: item.isSelected ? midGrey : white,
        //       ),
        //     ),
        //     HorizontalSpace.horizontalSpaceW10,
        //     InkWell(
        //       onTap: onTapText,
        //       child: TextTile(
        //         text: item.title,
        //         color: textColor,
        //         textAlign: TextAlign.start,
        //         maxLines: 3,
        //       ),
        //     )
        //   ],
        // ),
        // ));
        // }),
      ],
    );
  }
}

class OptionModel {
  String id;
  String title;
  bool isSelected;
  OptionModel({this.id = '', required this.isSelected, required this.title});
}
