import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/theme.dart';
import '../const_widget.dart';
import './texts.dart';


////////////////////////////////////////////////////////
///  ~ITEM LIST TABLE HEADER COMMON WIDGET~
////////////////////////////////////////////////////////
class ItemTableHeader extends StatelessWidget {
  const ItemTableHeader({
    super.key,
    this.title = '',
    this.bgColor,
    this.textColor = midGrey,
  });
  final String? title;
  final Color? bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: bgColor ?? const Color.fromARGB(255, 199, 224, 245),
      child: TextTile(
        text: title?.capitalizeFirst ?? '',
        color: textColor,
        textAlign: TextAlign.start,
      ),
    );
  }
}

////////////////////////////////////////////////////////
///  ~ITEM LIST TABLE CONTENT COMMON WIDGET~
////////////////////////////////////////////////////////
class ItemTableContent extends StatelessWidget {
  const ItemTableContent(
      {super.key,
      this.title = '',
      this.subTitle = '',
      this.alignment,
      this.maxLines = 10,
      this.isActive = true,
      this.color});
  final String? title;
  final String? subTitle;
  final AlignmentGeometry? alignment;
  final Color? color;
  final bool isActive;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: HorizontalPadding.paddingHorizontal10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color ?? bgColorTAB,
      ),
      constraints: const BoxConstraints(minHeight: 40),
      // height: 45,
      child: Align(
          alignment: alignment ??
              ('01_rtl'.tr == 'left'
                  ? Alignment.centerLeft
                  : Alignment.centerRight),
          child: Column(
            crossAxisAlignment: subTitle == ''
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextTile(
                text: title ?? '',
                maxLines: maxLines,
                color: isActive ? textColorBlack : midGrey,
              ),
              subTitle == ''
                  ? empty
                  : TextTile(
                      text: subTitle ?? '',
                      color: textColorGrey,
                      fontSize: 11,
                      maxLines: 1,
                    ),
            ],
          )),
    );
  }
}

class ItemTableContentWithLeading extends StatelessWidget {
  const ItemTableContentWithLeading(
      {super.key,
      this.title = '',
      this.subTitle = '',
      this.alignment,
      this.leadingTile,
      this.color});
  final String? title;
  final String? subTitle;
  final AlignmentGeometry? alignment;
  final Color? color;
  final Widget? leadingTile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: HorizontalPadding.paddingHorizontal10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color ?? bgColorTAB,
      ),
      constraints: const BoxConstraints(minHeight: 40),
      height: 45,
      child: Align(
          alignment: alignment ??
              ('01_rtl'.tr == 'left'
                  ? Alignment.centerLeft
                  : Alignment.centerRight),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: subTitle == ''
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextTile(
                    text: title ?? '',
                    maxLines: 2,
                  ),
                  subTitle == ''
                      ? empty
                      : TextTile(
                          text: subTitle ?? '',
                          color: textColorGrey,
                          fontSize: 11,
                          maxLines: 1,
                        ),
                ],
              ),
              leadingTile ?? empty
            ],
          )),
    );
  }
}

////////////////////////////////////////////////////////
///  ~ITEM LIST TABLE CONTENT WITH DELETE BUTTON COMMON WIDGET~
////////////////////////////////////////////////////////
class ItemTableContentWithDelete extends StatelessWidget {
  const ItemTableContentWithDelete(
      {super.key, this.title = '', this.subTitle = '', this.child});
  final String? title;
  final String? subTitle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: HorizontalPadding.paddingHorizontal10,
      constraints: const BoxConstraints(minHeight: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextTile(text: title!.toUpperCase()),
          HorizontalSpace.horizontalSpaceW5,
          SizedBox(
            child: child,
          )
        ],
      ),
    );
  }
}
