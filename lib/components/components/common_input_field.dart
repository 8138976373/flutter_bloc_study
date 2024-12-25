// ignore_for_file: must_be_immutable

import '/utils/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../common/controllers/common_controller.dart';
import '../../services/device_info.dart';
import '../../theme/theme.dart';
import 'common_form.dart';

//keyboardType: const TextInputType.numberWithOptions(
//     decimal: true),
// inputFormatters: [
//   FilteringTextInputFormatter.allow(
//       RegExp(r'(^-?\d*\.?\d*)')),
// ],
class InputText extends StatelessWidget {
  // final Widget? prefixComponent;
  final dynamic textDirection;
  final EdgeInsetsGeometry? padding;
  final Widget? suffixComponent;
  final IconData? prefixIcon;
  final String textHint;
  final String? textLabel;
  void Function(String)? onChangeFunction;
  void Function(String)? getTextFunction;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final double? fontSize;
  final bool? isPhone;
  final bool? enabled;
  final TextEditingController? controller;
  final int maxLength;
  final int maxLine;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final List<BoxShadow>? boxShadow;
  final void Function(String)? onSubmitted;
  final bool autofocus;
  final bool enabledBorder;
  final double? maxWidth;
  final FocusNode? focusNode;

  InputText(
      {super.key,
      this.boxShadow,
      // this.prefixComponent,
      this.textDirection,
      this.padding,
      this.suffixComponent,
      this.isPhone = false,
      this.autofocus = false,
      this.textHint = '',
      this.textLabel,
      this.inputFormatters,
      this.onChangeFunction,
      this.onSubmitted,
      this.onTap,
      this.getTextFunction,
      this.margin,
      this.maxLine = 1,
      this.width,
      this.fontSize,
      this.height,
      this.enabled,
      this.color,
      this.textColor = black,
      this.controller,
      this.prefixIcon,
      this.keyboardType,
      this.maxLength = 40,
      this.enabledBorder = false,
      this.maxWidth,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: '01_rtl'.tr == 'left'
          ? textDirection ?? TextDirection.ltr
          : textDirection ?? TextDirection.rtl,
      child: Container(
        padding: padding ?? const EdgeInsets.all(0),
        margin: margin ?? const EdgeInsets.all(0),
        height: height ?? (enabled == false ? 35 : 55),
        constraints: BoxConstraints(
            minWidth: 45,
            maxWidth: maxWidth ?? 450,
            maxHeight: 110,
            minHeight: enabled == false ? 30 : 50),
        width: width ?? context.mediaQuerySize.width,
        decoration: BoxDecoration(
          border: enabled == false
              ? null
              // Border.all(width: 1.3, color: transparent)
              : null,
          boxShadow: boxShadow ?? [],
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: '01_rtl'.tr == 'left'
              ? Alignment.centerLeft
              : Alignment.centerRight,
          child: TextField(
            maxLines: maxLine,
            focusNode: focusNode,
            enabled: enabled ?? true,
            maxLength: maxLength,
            // expands: true,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: inputFormatters,
            // textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
            strutStyle: const StrutStyle(height: 1),
            onChanged: onChangeFunction,
            textAlign: TextAlign.start,
            style: textColor == null
                ? Theme.of(context).primaryTextTheme.titleMedium
                : Theme.of(context)
                    .primaryTextTheme
                    .titleMedium!
                    .copyWith(color: textColor, fontSize: fontSize),
            keyboardType: isPhone == true
                ? TextInputType.number
                : keyboardType ?? TextInputType.multiline,
            decoration: InputDecoration(
              // constraints: BoxConstraints(maxHeight: 60, minHeight: 40),
              counterText: '',
              border: InputBorder.none,
              enabledBorder: enabledBorder == true
                  ? const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1, color: borderColor))
                  : null,
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: textColorBlue)),
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              contentPadding: enabled == false
                  ? const EdgeInsets.only(
                      top: 25, bottom: 20, left: 15, right: 15)
                  : const EdgeInsets.only(
                      top: 18, bottom: 18, left: 15, right: 15),
              // contentPadding: const EdgeInsets.only(
              // top: 5,
              // bottom: 5,
              // ),
              hintStyle: Theme.of(context)
                  .primaryTextTheme
                  .titleMedium!
                  .copyWith(color: midGrey),
              hintText: textHint,
              labelStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              // prefixText: textHint,
              // prefix: isPhone == true
              //     ? Padding(
              //         padding: '01_rtl'.tr == 'left'
              //             ? const EdgeInsets.only(
              //                 left: 0,
              //               )
              //             : const EdgeInsets.only(
              //                 right: 0,
              //               ),
              //         child: prefixComponent,
              //       )
              //     : null,
              suffixIcon: suffixComponent,
              // prefixIcon: isPhone == true
              //     ? null
              //     : Padding(
              //         padding: const EdgeInsets.only(left: 10, right: 10),
              //         child: Icon(prefixIcon, size: 20, color: midGrey),
              //       ),
            ),
            controller: controller,
          ),
        ),
      ),
    );
  }
}

class PasswordInputText extends StatelessWidget {
  final EdgeInsets? padding;
  final Widget? suffixComponent;
  final IconData? prefixIcon;
  final String textHint;
  final String? textLabel;
  void Function(String)? onChangeFunction;
  void Function(String?)? onSubmitted;
  void Function(String)? getTextFunction;
  final double? width;
  final double height;
  final bool? isPhone;
  final TextEditingController? controller;
  final int maxLength;
  final Color? color;
  final Color? textColor;
  List<TextInputFormatter>? inputFormatters;
  final EdgeInsetsGeometry? margin;
  final TextInputType? keyboardType;
  final List<BoxShadow>? boxShadow;
  final bool? hidepassword;
  final void Function()? onTapIcon;
  final double? maxWidth;
  final void Function()? onTap;
  PasswordInputText({
    super.key,
    this.padding,
    this.suffixComponent,
    this.boxShadow,
    this.isPhone = false,
    this.hidepassword,
    this.onTapIcon,
    required this.textHint,
    this.textLabel,
    this.inputFormatters,
    this.onChangeFunction,
    this.onSubmitted,
    this.getTextFunction,
    this.onTap,
    this.width,
    this.height = 55,
    this.color,
    this.textColor,
    this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.margin,
    this.maxLength = 40,
    this.maxWidth,
  });
  final c = Get.put(CommonController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        padding: padding ?? const EdgeInsets.all(0),
        margin: margin ?? const EdgeInsets.only(top: 10),
        height: height,
        constraints: BoxConstraints(
            minWidth: 50,
            maxWidth: maxWidth ?? 450,
            maxHeight: 50,
            minHeight: 30),
        width: width ?? context.mediaQuerySize.width,
        decoration: BoxDecoration(
          boxShadow: boxShadow ??
              const [
                BoxShadow(
                    offset: Offset(1, 1), blurRadius: 8, color: Colors.black12)
              ],
          color: color ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: GetBuilder<CommonController>(
              id: 'secure',
              builder: (commonController) {
                return TextField(
                  maxLength: maxLength,
                  inputFormatters: inputFormatters,
                  textInputAction: TextInputAction.next,
                  strutStyle: const StrutStyle(height: 1),
                  onChanged: onChangeFunction,
                  onSubmitted: onSubmitted,
                  obscureText: hidepassword ?? commonController.hidePassword,
                  style: textColor == null
                      ? Theme.of(context).primaryTextTheme.bodyLarge
                      : Theme.of(context)
                          .primaryTextTheme
                          .bodyLarge!
                          .copyWith(color: textColor),
                  keyboardType: isPhone == true
                      ? TextInputType.number
                      : keyboardType ?? TextInputType.multiline,
                  decoration: InputDecoration(
                    counterText: '',
                    border: InputBorder.none,
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: textColorBlue)),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: lightBlueBns)),
                    alignLabelWithHint: false,
                    contentPadding: const EdgeInsets.only(
                        top: 18, bottom: 18, left: 18, right: 18),
                    hintStyle: Theme.of(context)
                        .primaryTextTheme
                        .titleMedium!
                        .copyWith(color: midGrey),
                    hintText: textHint,
                    labelStyle: const TextStyle(
                      fontFamily: 'Poppins',
                    ),
                    suffixIcon: suffixComponent ??
                        InkWell(
                          onTap: onTapIcon ??
                              () {
                                commonController.hidePassword =
                                    !commonController.hidePassword;
                                commonController.update(["secure"]);
                              },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Icon(
                                hidepassword ?? commonController.hidePassword
                                    ? Icons.visibility_off_rounded
                                    : Icons.visibility,
                                size: 22,
                                color: midGrey),
                          ),
                        ),
                  ),
                  onTap: () {
                    if (onTap != null) {
                      onTap!();
                    }
                    if (controller!.selection ==
                        TextSelection.fromPosition(TextPosition(
                            offset: controller!.text.length - 1))) {
                      controller!.selection = TextSelection.fromPosition(
                          TextPosition(offset: controller!.text.length));
                      commonController.update(["secure"]);
                    }
                  },
                  controller: controller,
                );
              }),
        ),
      ),
    );
  }
}

class InputTextNoIcon extends StatelessWidget {
  final Widget? suffixComponent;
  final String textHint;
  final String? textLabel;
  void Function(String)? onChangeFunction;
  void Function(String)? getTextFunction;
  final double? width;
  final double? height;
  final double radius;
  final TextEditingController? controller;
  final int maxLength;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final BoxConstraints? constraints;
  final Decoration? decoration;
  final bool autofocus;

  InputTextNoIcon(
      {super.key,
      this.suffixComponent,
      required this.textHint,
      this.autofocus = false,
      this.textLabel,
      this.inputFormatters,
      this.onChangeFunction,
      this.getTextFunction,
      this.margin = EdgeInsets.zero,
      this.padding = const EdgeInsets.symmetric(horizontal: 10),
      this.width,
      this.height,
      this.radius = 8,
      this.color,
      this.textColor,
      this.controller,
      this.keyboardType,
      this.maxLength = 40,
      this.constraints,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height ?? 40,
      constraints: constraints ??
          const BoxConstraints(
              minWidth: 50, maxWidth: 380, maxHeight: 50, minHeight: 30),
      width: width ?? context.mediaQuerySize.width,
      decoration: decoration ??
          BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(1, 1), blurRadius: 8, color: Colors.black12)
            ],
            color: color ?? white,
            borderRadius: BorderRadius.circular(radius),
          ),
      child: Center(
        child: TextField(
          maxLength: maxLength,
          autofocus: autofocus,
          // expands: true,
          textAlignVertical: TextAlignVertical.center,
          inputFormatters: inputFormatters,
          // textCapitalization: TextCapitalization.sentences,
          textInputAction: TextInputAction.next,
          strutStyle: const StrutStyle(height: 1),
          onChanged: onChangeFunction,
          textAlign: TextAlign.start,
          style: textColor == null
              ? Theme.of(context)
                  .primaryTextTheme
                  .titleMedium!
                  .copyWith(color: textColor ?? black)
              : Theme.of(context)
                  .primaryTextTheme
                  .titleMedium!
                  .copyWith(color: textColor ?? black),
          keyboardType: keyboardType ?? TextInputType.multiline,
          decoration: InputDecoration(
            // constraints: BoxConstraints(maxHeight: 60, minHeight: 40),
            counterText: '',
            border: InputBorder.none,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: lightBlueBns)),
            alignLabelWithHint: false,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            // contentPadding:  EdgeInsets.zero,
            hintStyle: Theme.of(context)
                .primaryTextTheme
                .titleMedium!
                .copyWith(color: midGrey),
            hintText: textHint,
            labelStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
            ),
          ),
          controller: controller,
        ),
      ),
    );
  }
}

//////multiple line textbox

class InputTextMultiLine extends StatelessWidget {
  // final Widget? prefixComponent;
  final dynamic textDirection;
  final EdgeInsetsGeometry? padding;
  final Widget? suffixComponent;
  final IconData? prefixIcon;
  final String textHint;
  final String? textLabel;
  void Function(String)? onChangeFunction;
  void Function(String)? getTextFunction;
  void Function(String)? onSubmitted;
  final double? width;
  final double? height;
  final double? maxHeight;
  final double? fontSize;
  final bool? isPhone;
  final bool? enabled;
  final TextEditingController? controller;
  final int maxLength;
  final int maxLine;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final List<BoxShadow>? boxShadow;
  final FocusNode? focusNode;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final bool noRadiusCurve;
  final bool noBorder;
  final bool optional;
  final bool required;
  final InputType inputType;

  InputTextMultiLine({
    super.key,
    this.boxShadow,
    // this.prefixComponent,
    this.textDirection,
    this.padding,
    this.suffixComponent,
    this.isPhone = false,
    this.textHint = '',
    this.textLabel,
    this.inputFormatters,
    this.focusNode,
    this.onChangeFunction,
    this.getTextFunction,
    this.onSubmitted,
    this.margin,
    this.maxLine = 1,
    this.width,
    this.fontSize,
    this.height,
    this.maxHeight,
    this.enabled,
    this.color,
    this.textColor,
    this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.initialValue,
    this.textInputAction,
    this.maxLength = 300,
    this.noRadiusCurve = false,
    this.noBorder = false,
    this.optional = false,
    this.required = false,
    this.inputType = InputType.DEFAULT,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: (keyboardType ==
                  const TextInputType.numberWithOptions(decimal: true) ||
              (keyboardType == TextInputType.number))
          ? textDirection ?? TextDirection.ltr
          : '01_rtl'.tr == 'left'
              ? textDirection ?? TextDirection.ltr
              : textDirection ?? TextDirection.ltr,
      // ('01_rtl'.tr == 'left'
      //         ? textDirection ?? TextDirection.ltr
      //         : textDirection ?? TextDirection.rtl),
      child: Container(
        padding: padding ?? const EdgeInsets.all(0),
        margin: margin ?? const EdgeInsets.only(top: 15),
        height: height ?? (enabled == false ? 55 : 55),
        constraints: BoxConstraints(
          minWidth: 45,
          maxWidth: 600,
          maxHeight: maxHeight ?? 110,
          // minHeight: enabled == false ? 55 : 55
        ),
        width: width ?? context.mediaQuerySize.width,
        decoration: BoxDecoration(
          border: Border.all(width: 1.3, color: borderColor),
          //  noBorder || isTab(context)
          //     ? null
          //     : enabled == false
          //         ? Border.all(width: 1.3, color: borderColor)
          //         : null,
          boxShadow: boxShadow ?? [],
          color: isTab(context) ? bgColorTAB : color ?? white,
          borderRadius: BorderRadius.circular(isTab(context)
              ? Constant.cardRadius
              : noBorder
                  ? 0
                  : (noRadiusCurve ? 0 : Constant.cardRadius)),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextField(
            maxLines: maxLine,
            enabled: enabled ?? true,
            maxLength:
                inputType == InputType.INFINITMAXLENGTH ? null : maxLength,
            onSubmitted: onSubmitted,
            focusNode: focusNode,
            // expands: true,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: inputFormatters,
            // textCapitalization: TextCapitalization.sentences,
            textInputAction:
                maxLine > 1 ? null : textInputAction ?? TextInputAction.next,
            strutStyle: const StrutStyle(height: 1),
            onChanged: onChangeFunction,
            textAlign: TextAlign.start,
            style: textColor == null
                ? enabled == false
                    ? Theme.of(context)
                        .primaryTextTheme
                        .titleMedium!
                        .copyWith(color: textColorGrey)
                    : Theme.of(context)
                        .primaryTextTheme
                        .titleMedium!
                        .copyWith(color: textColorBlack)
                : Theme.of(context)
                    .primaryTextTheme
                    .titleMedium!
                    .copyWith(color: textColor, fontSize: fontSize),
            keyboardType: isPhone == true
                ? TextInputType.number
                : keyboardType ?? TextInputType.multiline,
            decoration: InputDecoration(
              // constraints: BoxConstraints(maxHeight: 60, minHeight: 40),
              counterText: '',
              border: isTab(context) || enabled == false
                  ? InputBorder.none
                  : InputBorder.none,

              focusedBorder: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius:
                      BorderRadius.all(Radius.circular(Constant.cardRadius)),
                  borderSide: BorderSide(width: 1.3, color: Colors.blue)),
              // enabledBorder: isTab(context)
              //     ? null
              //     : OutlineInputBorder(
              //         gapPadding: 0,
              //         borderRadius: BorderRadius.all(Radius.circular(noBorder
              //             ? 0
              //             : noRadiusCurve
              //                 ? 0
              //                 : 10)),
              //         borderSide: BorderSide(
              //             width: noBorder ? 0 : 1,
              //             color: noBorder ? transparent : borderColor)),
              // focusedBorder: OutlineInputBorder(
              //     gapPadding: 0,
              //     borderRadius: BorderRadius.all(Radius.circular(noBorder
              //         ? 0
              //         : noRadiusCurve
              //             ? 0
              //             : 10)),
              //     borderSide: BorderSide(
              //         width: noBorder ? 0 : 1, color: textColorBlue)),
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              contentPadding: enabled == false
                  ? const EdgeInsets.only(
                      top: 25, bottom: 20, left: 15, right: 15)
                  : const EdgeInsets.only(
                      top: 18, bottom: 18, left: 15, right: 15),
              // contentPadding: const EdgeInsets.only(
              // top: 5,
              // bottom: 5,
              // ),
              hintStyle: Theme.of(context)
                  .primaryTextTheme
                  .titleMedium!
                  .copyWith(color: midGrey),
              hintText: optional
                  ? "$textHint ${"optional_label".tr}"
                  : required
                      ? "$textHint ${"required_label".tr}"
                      : textHint,
              labelStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              // prefixText: textHint,
              // prefix: isPhone == true
              //     ? Padding(
              //         padding: '01_rtl'.tr == 'left'
              //             ? const EdgeInsets.only(
              //                 left: 0,
              //               )
              //             : const EdgeInsets.only(
              //                 right: 0,
              //               ),
              //         child: prefixComponent,
              //       )
              //     : null,
              suffixIcon: suffixComponent,
            ),
            controller: controller.obs.value,
          ),
        ),
      ),
    );
  }
}

class InputTextWithPrifix extends StatelessWidget {
  // final Widget? prefixComponent;
  final dynamic textDirection;
  final EdgeInsetsGeometry? padding;
  final Widget? suffixComponent;
  final String textHint;
  final String? textLabel;
  void Function(String)? onChangeFunction;
  void Function(String)? getTextFunction;
  final double? width;
  final double? height;
  final double? fontSize;
  final bool? isPhone;
  final bool? enabled;
  final TextEditingController? controller;
  final int maxLength;
  final int maxLine;
  final Color? color;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final List<BoxShadow>? boxShadow;
  final void Function(String)? onSubmitted;
  final Widget? prefixComponent;
  final bool autofocus;
  InputTextWithPrifix(
      {super.key,
      this.boxShadow,
      this.prefixComponent,
      this.textDirection,
      this.padding,
      this.suffixComponent,
      this.isPhone = false,
      this.autofocus = false,
      required this.textHint,
      this.textLabel,
      this.inputFormatters,
      this.onChangeFunction,
      this.onSubmitted,
      this.getTextFunction,
      this.margin,
      this.maxLine = 1,
      this.width,
      this.fontSize,
      this.height,
      this.enabled,
      this.color,
      this.textColor,
      this.controller,
      this.keyboardType,
      this.maxLength = 40});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: '01_rtl'.tr == 'left'
          ? textDirection ?? TextDirection.ltr
          : textDirection ?? TextDirection.ltr,
      child: Container(
        padding: padding ?? const EdgeInsets.all(0),
        margin: margin ?? const EdgeInsets.only(top: 10),
        height: height ?? 55,
        constraints: const BoxConstraints(
            minWidth: 50, maxWidth: 380, maxHeight: 50, minHeight: 30),
        width: width ?? context.mediaQuerySize.width,
        decoration: BoxDecoration(
          boxShadow: boxShadow ??
              const [
                BoxShadow(
                    offset: Offset(1, 1), blurRadius: 8, color: Colors.black12)
              ],
          color: color ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(width: 0)
        ),
        child: Align(
          alignment: '01_rtl'.tr == 'left'
              ? Alignment.centerLeft
              : Alignment.centerRight,
          child: TextField(
            autofocus: autofocus, onSubmitted: onSubmitted,
            maxLines: maxLine,
            enabled: enabled ?? true,
            maxLength: maxLength,
            // expands: true,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: inputFormatters,
            // textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
            strutStyle: const StrutStyle(height: 1),
            onChanged: onChangeFunction,
            textAlign: TextAlign.start,
            style: textColor == null
                ? Theme.of(context).primaryTextTheme.titleMedium
                : Theme.of(context)
                    .primaryTextTheme
                    .titleMedium!
                    .copyWith(color: textColor, fontSize: fontSize),
            keyboardType: isPhone == true
                ? TextInputType.number
                : keyboardType ?? TextInputType.multiline,
            decoration: InputDecoration(
              // constraints: BoxConstraints(maxHeight: 60, minHeight: 40),
              counterText: '',
              // border: InputBorder.none,

              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: lightBlueBns)),
              focusedBorder: const OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(width: 1, color: textColorBlue)),
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,

              hintStyle: Theme.of(context)
                  .primaryTextTheme
                  .titleMedium!
                  .copyWith(color: midGrey),
              hintText: textHint,
              labelStyle: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
              // prefixText: textHint,
              prefixIcon: SizedBox(
                width: 40,
                child: Center(
                  child: prefixComponent,
                ),
              ),
              suffixIcon: suffixComponent,
            ),
            controller: controller,
          ),
        ),
      ),
    );
  }
}
