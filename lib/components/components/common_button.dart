import '/components/const_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../services/device_info.dart';
import '../../theme/theme.dart';
import 'texts.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      this.height = 55,
      this.width,
      this.color,
      this.textColor,
      this.text = '',
      this.radius = 10,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w500,
      this.boxShadow,
      this.child,
      this.maxWidth,
      this.onClick,
      this.notSave = false,
      this.loading = false});
  final double height;
  final double radius;
  final double fontSize;
  final FontWeight fontWeight;
  final double? width;
  final String text;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  final double? maxWidth;
  final bool? notSave;
  final bool? loading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading == true ? null : onClick,
      child: Container(
        height: height,
        width: width ?? Get.width,
        constraints: BoxConstraints(minWidth: 100, maxWidth: maxWidth ?? 450),
        decoration: BoxDecoration(
            color: color ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(radius),
            boxShadow: boxShadow ?? []),
        child: Center(
            child: loading == true
                ? const Center(
                    child: CupertinoActivityIndicator(
                    color: white,
                    // animating: true,
                  ))
                : Text(
                    text,
                    style: textColor != null
                        ? lightTheme.textTheme.titleMedium!.copyWith(
                            fontFamily: 'Poppins',
                            color: textColor ?? white,
                            fontSize: fontSize,
                            fontWeight: fontWeight)
                        : darkTheme.textTheme.titleMedium!.copyWith(
                            fontFamily: 'Poppins',
                            color: textColor ?? white,
                            fontSize: fontSize,
                            fontWeight: fontWeight),
                  )),
      ),
    );
  }
}

//For Add Item
class AddButton extends StatelessWidget {
  const AddButton(
      {super.key,
      this.height = 55,
      this.width,
      this.color = black,
      this.textColor = black,
      this.text,
      this.radius = 10,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w500,
      this.boxShadow,
      this.child,
      this.maxWidth,
      this.alignment,
      this.onClick});
  final double height;
  final double radius;
  final double fontSize;
  final FontWeight fontWeight;
  final double? width;
  final String? text;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  final double? maxWidth;
  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onClick,
      child: Container(
        alignment: alignment,
        height: height,
        width: width ?? 150,
        constraints:
            BoxConstraints(minWidth: 100, maxWidth: isTab(context) ? 380 : 120),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(radius),
            boxShadow: boxShadow ?? []),
        child: Center(
            child: Text(
          text ?? 'add_label',
          style: textColor != null
              ? lightTheme.textTheme.titleMedium!.copyWith(
                  color: textColor ?? white,
                  fontSize: fontSize,
                  fontWeight: fontWeight)
              : darkTheme.textTheme.titleMedium!.copyWith(
                  color: textColor ?? white,
                  fontSize: fontSize,
                  fontWeight: fontWeight),
        )),
      ),
    );
  }
}

//For Reset Button Widget
class ResetButtonBns extends StatelessWidget {
  const ResetButtonBns(
      {super.key,
      this.height = 55,
      this.width,
      this.color,
      this.textColor,
      this.text,
      this.radius = 10,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w500,
      this.boxShadow,
      this.child,
      this.maxWidth,
      this.padding,
      this.onClick});
  final double? height;
  final double? radius;
  final double fontSize;
  final FontWeight fontWeight;
  final double? width;
  final String? text;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  final double? maxWidth;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        margin: padding ?? const EdgeInsets.only(left: 15, right: 15),
        height: height ?? 55,
        width: width ?? 120,
        constraints: BoxConstraints(minWidth: 100, maxWidth: maxWidth ?? 120),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(radius ?? 10),
            boxShadow: boxShadow ?? []),
        child: Center(
            child: TextTile(
          text: text ?? 'reset_label'.tr,
          // style: textColor != null
          //     ?
          //     lightTheme.textTheme.bodyText1!.copyWith(
          //         color: textColor ?? textColorBlack,
          //         fontSize: fontSize,
          //         fontWeight: fontWeight)
          //     : darkTheme.textTheme.subtitle1!.copyWith(
          //         color: textColor ?? textColorBlack,
          //         fontSize: fontSize,
          //         fontWeight: fontWeight),
        )),
      ),
    );
  }
}

class BackButtonComponent extends StatelessWidget {
  const BackButtonComponent(
      {super.key,
      this.height = 55,
      this.width,
      this.color,
      this.textColor,
      this.text = '',
      this.radius = 10,
      this.fontSize = 16,
      this.fontWeight = FontWeight.w500,
      this.boxShadow,
      this.child,
      this.maxWidth,
      this.onClick});
  final double? height;
  final double? radius;
  final double fontSize;
  final FontWeight fontWeight;
  final double? width;
  final String? text;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  final double? maxWidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: InkWell(
        radius: 10,
        onTap: onClick,
        child: Container(
          // padding: const EdgeInsets.only(left: 20, right: 20),
          height: height ?? 55,
          width: width ?? 120,
          constraints: BoxConstraints(minWidth: 100, maxWidth: maxWidth ?? 120),
          decoration: BoxDecoration(
              color: white,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(radius ?? 10),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: TextTile(
            text: text == '' ? 'reset_label'.tr : text ?? '',
            // style: textColor != null
            //     ?
            //     lightTheme.textTheme.bodyText1!.copyWith(
            //         color: textColor ?? textColorBlack,
            //         fontSize: fontSize,
            //         fontWeight: fontWeight)
            //     : darkTheme.textTheme.subtitle1!.copyWith(
            //         color: textColor ?? textColorBlack,
            //         fontSize: fontSize,
            //         fontWeight: fontWeight),
          )),
        ),
      ),
    );
  }
}

//For Save Button widget
class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    this.height = 40,
    this.width,
    this.color,
    this.textColor,
    this.text = '',
    this.radius = 20,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.boxShadow,
    this.child,
    this.maxWidth,
    this.onClick,
    this.loading = false,
    this.notSave = false,
    this.padding,
  });
  final double? height;
  final double? radius;
  final double fontSize;
  final FontWeight fontWeight;
  final double? width;
  final String? text;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  final double? maxWidth;
  final bool? loading;
  final bool notSave;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isTab(context) ? MainAxisAlignment.end : MainAxisAlignment.center,
      children: [
        Padding(
          padding: padding ?? CustomPadding.padding0,
          // (('01_rtl'.tr == 'left')
          //     ? const EdgeInsets.only(left: 30)
          //     : const EdgeInsets.only(right: 30)),
          child: InkWell(
            onTap: loading == true ? null : onClick,
            child: Container(
              // margin: (isTab(context))
              //     ? (('01_rtl'.tr == 'left')
              //         ? const EdgeInsets.only(left: 100)
              //         : const EdgeInsets.only(left: 30))
              //     : const EdgeInsets.only(left: 0),
              height: height ?? 55,
              width: width,
              padding: padding ??
                  (('01_rtl'.tr == 'left')
                      ? const EdgeInsets.only(left: 10)
                      : const EdgeInsets.only(right: 10)),
              constraints: BoxConstraints(
                  minWidth: 100,
                  maxWidth: notSave == false
                      ? ((isTab(context)) ? 170 : 380)
                      : width!),
              decoration: BoxDecoration(
                  color: color ?? Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(radius ?? 20),
                  boxShadow: boxShadow ?? []),
              child: Center(
                  child: loading == true
                      ? const Center(
                          child: CupertinoActivityIndicator(
                          color: white,
                          // animating: true,
                        ))
                      : Text(
                          text == '' ? 'save_label'.tr : text!,
                          textAlign: TextAlign.center,
                          style: textColor != null
                              ? lightTheme.textTheme.titleMedium!.copyWith(
                                  color: textColor ?? white,
                                  fontSize: fontSize,
                                  fontWeight: fontWeight)
                              : darkTheme.textTheme.titleMedium!.copyWith(
                                  color: textColor ?? white,
                                  fontSize: fontSize,
                                  fontWeight: fontWeight),
                        )),
            ),
          ),
        ),
      ],
    );
  }
}

class PrimaryLoadingButton extends StatelessWidget {
  const PrimaryLoadingButton(
      {super.key,
      this.height = 55,
      this.width,
      this.color,
      this.radius = 25,
      this.boxShadow,
      this.child,
      this.maxWidth,
      this.notSave = false});
  final double height;
  final double radius;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final double? maxWidth;
  final bool? notSave;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? Get.width,
      constraints: BoxConstraints(
          minWidth: 100,
          maxWidth: notSave == false ? (isTab(context) ? 120 : 380) : 380),
      // maxWidth: isTab(context) ? 120 : 380),
      decoration: BoxDecoration(
          color: color ?? blueLight,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: const Center(
          child: CupertinoActivityIndicator(
        color: white,
        // animating: true,
      )),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {super.key,
      this.height = 35,
      this.width,
      this.color,
      this.textColor,
      this.text = '',
      this.radius = 8,
      this.boxShadow,
      this.child,
      this.padding = const EdgeInsets.only(left: 20, right: 20),
      this.margin = EdgeInsets.zero,
      this.maxLines = 1,
      this.loading = false,
      this.onClick});
  final double height;
  final double radius;
  final double? width;
  final String text;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  final int maxLines;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          margin: margin,
          padding: padding,
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color ?? Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: boxShadow ?? []),
          child: Center(
            child: loading
                ? const CupertinoActivityIndicator(
                    color: white,
                    // animating: true,
                  )
                : BodyText(
                    title: text,
                    maxLines: maxLines,
                    textAlign: TextAlign.center,
                    color: textColor,
                  ),
          ),
        ));
  }
}

class SecondaryLoadingButton extends StatelessWidget {
  const SecondaryLoadingButton({
    super.key,
    this.height = 35,
    this.width,
    this.color,
    this.margin = EdgeInsets.zero,
    this.radius = 8,
    this.boxShadow,
    this.child,
  });
  final double height;
  final double radius;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      width: width ?? Get.width,
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: const Center(child: CupertinoActivityIndicator()),
    );
  }
}

class SecondaryColoredButton extends StatelessWidget {
  const SecondaryColoredButton({
    super.key,
    this.height = 40,
    this.color,
    this.textColor,
    this.text = '',
    this.fontSize,
    this.maxLines,
    this.radius = 20,
    this.boxShadow,
    this.child,
    this.padding = const EdgeInsets.only(left: 20, right: 20),
    this.margin = EdgeInsets.zero,
    this.onClick,
    this.width,
  });
  final double height;
  final double? width;
  final double radius;
  final double? fontSize;
  final String text;
  final int? maxLines;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          margin: margin,
          padding: padding,
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color ?? white,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: BodyText(
            title: text,
            textAlign: TextAlign.center,
            maxLines: maxLines,
            fontSize: fontSize,
            color: textColor ?? white,
          )),
        ));
  }
}

class IconButtons extends StatelessWidget {
  const IconButtons(
      {super.key,
      this.height = 35,
      this.width = 120,
      this.color = const Color(0xff151A30),
      this.textColor,
      this.text = '',
      this.radius = 8,
      this.boxShadow,
      this.icon,
      this.iconSize = 18,
      this.iconColor,
      this.child,
      this.onClick});
  final double height;
  final double radius;
  final double width;
  final String text;
  final IconData? icon;
  final double iconSize;
  final Color? color;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? iconColor;
  final Color? textColor;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color ?? white,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: iconSize,
                color: iconColor ?? Theme.of(context).iconTheme.color,
              ),
              HorizontalSpace.horizontalSpaceW10,
              BodyText(title: text, color: textColor),
            ],
          )),
        ));
  }
}

class ImageIconButtons extends StatelessWidget {
  const ImageIconButtons(
      {super.key,
      this.height = 35,
      this.width = 120,
      this.color,
      this.textColor,
      this.text = '',
      this.radius = 8,
      this.boxShadow,
      required this.icon,
      this.iconHeight = 25,
      this.iconWidth = 25,
      this.iconColor,
      this.child,
      this.onClick});
  final double height;
  final double radius;
  final double width;
  final String text;
  final String icon;
  final double iconHeight;
  final double iconWidth;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final Color? iconColor;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color ?? Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                height: iconHeight,
                width: iconWidth,
                color: iconColor ?? Theme.of(context).iconTheme.color,
              ),
              HorizontalSpace.horizontalSpaceW10,
              BodyText(
                title: text,
                color: textColor,
              )
            ],
          )),
        ));
  }
}

class ImageIconButtonExpanded extends StatelessWidget {
  const ImageIconButtonExpanded(
      {super.key,
      this.height = 35,
      this.color,
      this.textColor,
      this.text = '',
      this.radius = 8,
      this.fontSize,
      this.boxShadow,
      this.icon,
      this.iconData,
      this.iconSize,
      this.isIcon = false,
      this.padding = CustomPadding.padding5,
      this.iconHeight = 25,
      this.iconWidth = 25,
      this.iconColor,
      this.child,
      this.onClick});
  final EdgeInsetsGeometry padding;
  final double height;
  final double radius;
  final String text;
  final String? icon;
  final double iconHeight;
  final double? iconSize;
  final double? fontSize;
  final double iconWidth;
  final bool isIcon;
  final IconData? iconData;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final Color? iconColor;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          padding: padding,
          height: height,
          decoration: BoxDecoration(
              color: color ?? Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isIcon
                  ? Icon(
                      iconData,
                      size: iconSize,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    )
                  : Image.asset(
                      icon!,
                      height: iconHeight,
                      width: iconWidth,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    ),
              HorizontalSpace.horizontalSpaceW10,
              BodyText(
                title: text,
                fontSize: fontSize,
                overflow: TextOverflow.ellipsis,
                color: textColor,
              )
            ],
          )),
        ));
  }
}

class IconButtonVertical extends StatelessWidget {
  const IconButtonVertical(
      {super.key,
      this.height = 35,
      this.width = 120,
      this.color,
      this.textColor,
      this.text = '',
      this.radius = 8,
      this.boxShadow,
      this.isIcon = true,
      this.iconHeight = 20,
      this.iconWidth = 20,
      this.icon,
      this.imageUrl,
      this.iconSize = 12,
      this.iconColor,
      this.child,
      this.onClick});
  final double height;
  final double radius;
  final double iconHeight;
  final double width;
  final double iconWidth;
  final String text;
  final IconData? icon;
  final String? imageUrl;
  final bool isIcon;
  final double iconSize;
  final Color? iconColor;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color ?? Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isIcon
                  ? Icon(
                      icon,
                      size: iconSize,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    )
                  : Image.asset(
                      imageUrl ?? '',
                      height: iconHeight,
                      width: iconWidth,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    ),
              HorizontalSpace.horizontalSpaceW10,
              BodyDescriptionText(title: text, color: textColor),
            ],
          )),
        ));
  }
}

class ImageIconButtonVertical extends StatelessWidget {
  const ImageIconButtonVertical(
      {super.key,
      this.height = 45,
      this.width = 150,
      this.color,
      this.textColor,
      this.isIcon = false,
      this.text = '',
      this.radius = 8,
      this.boxShadow,
      this.icon,
      this.iconData,
      this.iconSize,
      this.iconHeight = 25,
      this.iconWidth = 25,
      this.iconColor,
      this.child,
      this.onClick});
  final double height;
  final double radius;
  final double width;
  final String text;
  final String? icon;
  final double iconHeight;
  final double? iconSize;
  final double iconWidth;
  final bool isIcon;
  final IconData? iconData;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final Color? iconColor;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color ?? Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isIcon
                  ? Icon(
                      iconData,
                      size: iconSize,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    )
                  : Image.asset(
                      icon!,
                      height: iconHeight,
                      width: iconWidth,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    ),
              VerticalSpace.verticalSpaceH5,
              BodyText(
                title: text,
                color: textColor,
              )
            ],
          )),
        ));
  }
}

class ImageIconButtonWithBorderExpanded extends StatelessWidget {
  const ImageIconButtonWithBorderExpanded(
      {super.key,
      this.height = 35,
      this.color,
      this.textColor,
      this.iconColor,
      this.text = '',
      this.radius = 8,
      this.fontSize,
      this.boxShadow,
      this.icon,
      this.iconData,
      this.iconSize,
      this.isIcon = false,
      this.padding = CustomPadding.padding5,
      this.paddingBeforeText = HorizontalSpace.horizontalSpaceW10,
      this.iconHeight = 25,
      this.iconWidth = 25,
      this.child,
      this.onClick});
  final EdgeInsetsGeometry padding;
  final Widget paddingBeforeText;
  final double height;
  final double radius;
  final String text;
  final String? icon;
  final double iconHeight;
  final double? iconSize;
  final double? fontSize;
  final double iconWidth;
  final bool isIcon;
  final IconData? iconData;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final Color? iconColor;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          padding: padding,
          height: height,
          decoration: BoxDecoration(
              // color: Theme.of(context).canvasColor,
              color: color ?? Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: color ?? midGrey),
              boxShadow: boxShadow ?? []),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isIcon
                  ? Icon(
                      iconData,
                      size: iconSize,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    )
                  : Image.asset(
                      icon!,
                      height: iconHeight,
                      width: iconWidth,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                    ),
              paddingBeforeText,
              Expanded(
                child: BodyText(
                  title: text,
                  fontSize: fontSize,
                  overflow: TextOverflow.ellipsis,
                  color: textColor,
                ),
              )
            ],
          )),
        ));
  }
}
