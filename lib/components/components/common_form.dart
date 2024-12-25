// ignore_for_file: constant_identifier_names

import '/components/const_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../services/device_info.dart';
import '../../theme/theme.dart';
import 'common_card/common_card.dart';
import 'common_input_field.dart';
import 'texts.dart';

/////////////////////////
///////FORM COMPONENT  //
/////////////////////////
enum InputType {
  EMAIL,
  NAME,
  NAMEWITHNUMBER,
  CHEQUE_REF_NUMBER,
  NAMEWITHOUTSPACE,
  NAMENUMBERWITHOUTSPACE,
  STRING,
  NUMBER,
  FRACTION,
  NEGNUMBER,
  NEGFRACTION,
  DEFAULT,
  INFINITMAXLENGTH
}

// ignore: must_be_immutable
class FormSingle extends StatelessWidget {
  const FormSingle({
    super.key,
    this.inputType = InputType.DEFAULT,
    this.title = '',
    this.controller,
    this.enabled = true,
    this.maxLine = 1,
    this.titleAr = '',
    this.textHint = '',
    this.keyboardType,
    this.onChangeFunction,
    this.onSubmitted,
    this.textInputFormat,
    this.child,
    this.maxLength,
    this.h15 = false,
    this.textDirection,
    this.textInputAction,
    this.noRadiusCurve = false,
    this.noBorder = false,
    this.optional = false,
    this.required = false,
    this.isText = false,
    this.text = '',
    this.textColor = textColorBlack,
    this.focusNode,
    this.height,
    this.maxHeight,
    this.bottomPadding = VerticalSpace.verticalSpaceH10,
  });
  final String title;
  final String titleAr;
  final String textHint;
  final bool enabled;
  final TextEditingController? controller;
  final int maxLine;
  final void Function(String)? onChangeFunction;
  final void Function(String)? onSubmitted;
  final List<TextInputFormatter>? textInputFormat;
  final TextInputType? keyboardType;
  final Widget? child;
  final int? maxLength;
  final bool h15; //For Mobile Vertical15 Space
  final TextDirection? textDirection;
  final TextInputAction? textInputAction;
  final bool noRadiusCurve;
  final bool noBorder;
  final bool optional;
  final bool required;
  final bool isText;
  final String text;
  final FocusNode? focusNode;
  final Color textColor;
  final double? height;
  final double? maxHeight;
  final InputType inputType;
  final SizedBox bottomPadding;

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter>? inputFormatters = textInputFormat;
    TextInputType? keyboardInputType = keyboardType;
    int maxLengthTemp = 0;
    switch (inputType) {
      case InputType.DEFAULT:
        {
          inputFormatters = textInputFormat ??
              (keyboardType == TextInputType.emailAddress
                  ? [
                      FilteringTextInputFormatter.allow(
                        RegExp('[a-zA-Z0-9._@]'),
                      ),
                    ]
                  : null);
          maxLengthTemp = maxLength ?? 300;

          break;
        }

      case InputType.EMAIL:
        {
          keyboardInputType = TextInputType.emailAddress;
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(
                  RegExp('[a-zA-Z0-9._@]'),
                ),
              ];
          maxLengthTemp = maxLength ?? 40;
          break;
        }
      case InputType.STRING:
        {
          inputFormatters = textInputFormat;
          maxLengthTemp = maxLength ?? 300;
          break;
        }
      case InputType.NAME:
        {
          keyboardInputType = TextInputType.name;
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^[a-zA-Z\u0600-\u06FF][a-zA-Z\u0600-\u06FF ]*'),
                ),
              ];
          maxLengthTemp = maxLength ?? 30;
          break;
        }

      case InputType.NAMENUMBERWITHOUTSPACE:
        {
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-Z0-9\u0600-\u06FF]')),
              ];
          maxLengthTemp = maxLength ?? 50;
          break;
        }
      case InputType.NAMEWITHNUMBER:
        {
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(
                  RegExp(
                      r'^[a-zA-Z0-9\u0600-\u06FF][a-zA-Z0-9\u0600-\u06FF ]*'),
                ),
              ];
          maxLengthTemp = maxLength ?? 40;
          break;
        }
      case InputType.CHEQUE_REF_NUMBER:
        {
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(
                  RegExp(
                      r'^[a-zA-Z0-9\u0600-\u06FF][a-zA-Z0-9\u0600-\u06FF -]*'),
                ),
              ];
          maxLengthTemp = maxLength ?? 20;
          break;
        }
      case InputType.NAMEWITHOUTSPACE:
        {
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(
                    RegExp(r'[a-zA-Z\u0600-\u06FF]')),
              ];
          maxLengthTemp = maxLength ?? 0;
          break;
        }
      case InputType.FRACTION:
        {
          keyboardInputType =
              const TextInputType.numberWithOptions(decimal: true);
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)')),
              ];
          maxLengthTemp = maxLength ?? 20;
          break;
        }
      case InputType.NEGFRACTION:
        {
          keyboardInputType =
              const TextInputType.numberWithOptions(decimal: true);
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(RegExp(r'(^-?\d*\.?\d*)')),
              ];
          maxLengthTemp = maxLength ?? 20;
          break;
        }
      case InputType.NUMBER:
        {
          keyboardInputType = TextInputType.number;
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.digitsOnly,
              ];
          maxLengthTemp = maxLength ?? 20;
          break;
        }
      case InputType.NEGNUMBER:
        {
          keyboardInputType = const TextInputType.numberWithOptions();
          inputFormatters = textInputFormat ??
              [
                FilteringTextInputFormatter.allow(
                  RegExp('[a-zA-Z0-9._@]'),
                ),
              ];
          maxLengthTemp = maxLength ?? 20;
          break;
        }
      case InputType.INFINITMAXLENGTH:
        {
          inputFormatters = textInputFormat ??
              (keyboardType == TextInputType.emailAddress
                  ? [
                      FilteringTextInputFormatter.allow(
                        RegExp('[a-zA-Z0-9._@]'),
                      ),
                    ]
                  : null);
          // maxLengthTemp = maxLength ?? 1000000;
          break;
        }
      // default:
      //   {
      //     inputFormatters = textInputFormat ??
      //         (keyboardType == TextInputType.emailAddress
      //             ? [
      //                 FilteringTextInputFormatter.allow(
      //                   RegExp('[a-zA-Z0-9._@]'),
      //                 ),
      //               ]
      //             : null);
      //     maxLengthTemp = maxLength ?? 300;
      //   }
    }
    //r'^[a-zA-Z0-9._%+-@]*$'

    return Stack(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (h15) VerticalSpace.verticalSpaceH15,
        child == null
            ? isText
                ? Container(
                    height: maxLine > 1 ? 90 : 55,
                    alignment: Alignment.centerLeft,
                    constraints: const BoxConstraints(
                      minWidth: 45,
                      maxWidth: 600,
                      maxHeight: 110,
                    ),
                    padding: HorizontalPadding.paddingHorizontal15,
                    width: isTab(context)
                        ? context.mediaQuerySize.width / 2 - 60
                        : context.mediaQuerySize.width,
                    decoration: BoxDecoration(
                      color: isTab(context) ? bgColorTAB : null,
                      border: isTab(context)
                          ? null
                          : Border.all(width: 1.3, color: borderColor),
                      borderRadius: BorderRadius.circular(isTab(context)
                          ? 6
                          : noBorder
                              ? 0
                              : (noRadiusCurve ? 0 : 10)),
                    ),
                    child: TextTile(
                      text: text,
                      color: textColor,
                    ),
                  )
                : ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: SizedBox(
                      width: isTab(context)
                          ? context.mediaQuerySize.width / 2 - 60
                          : context.mediaQuerySize.width,
                      child: InputTextMultiLine(
                          maxHeight: maxHeight,
                          textDirection: textDirection ??
                              ((keyboardType ==
                                      const TextInputType.numberWithOptions(
                                          decimal: true))
                                  ? TextDirection.ltr
                                  : ('01_rtl'.tr == 'left'
                                      ? textDirection ?? TextDirection.ltr
                                      : textDirection ?? TextDirection.ltr)),
                          enabled: enabled,
                          controller: controller,
                          textHint: textHint,
                          maxLine: maxLine,
                          keyboardType: keyboardType ?? keyboardInputType,
                          inputType: inputType,
                          textInputAction: textInputAction,
                          color: isTab(context) ? bgColorTAB : null,
                          inputFormatters: inputFormatters,
                          height: height ?? (maxLine > 1 ? 90 : 50),
                          onChangeFunction: onChangeFunction,
                          onSubmitted: onSubmitted,
                          maxLength: maxLengthTemp,
                          noRadiusCurve: noRadiusCurve,
                          focusNode: focusNode,
                          noBorder: noBorder),
                    ),
                  )
            : empty,
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SizedBox(
            width: isTab(context)
                ? context.mediaQuerySize.width / 2 - 60
                : context.mediaQuerySize.width,
            child: child,
          ),
        ),
        bottomPadding,
        if (title != '')
          Positioned(
            left: '01_rtl'.tr == 'right' ? 10 : 10,
            right: '01_rtl'.tr == 'right' ? 10 : null,
            top: 5,
            child: ExpandedCardView(
              // color: white,
              padding: CustomPadding.padding5,
              child: TextTile(
                text: required ? "$title *" : title,
                fontSize: 11,
                color: midGrey,
              ),
            ),
          )
      ],
    );
  }
}

///////////////////////////////////////////
//////// TWO FORM IN ONE ROW WITH TITLE ///
///////////////////////////////////////////

class FormDouble extends StatelessWidget {
  const FormDouble({
    super.key,
    required this.title1,
    required this.controller1,
    required this.title2,
    required this.controller2,
    this.onChangeFunction1,
    this.onChangeFunction2,
    this.textInputFormat1,
    this.textInputFormat2,
    this.keyboardType1,
    this.keyboardType2,
  });
  final String title1;
  final String title2;
  final List<TextInputFormatter>? textInputFormat1;
  final TextInputType? keyboardType1;
  final List<TextInputFormatter>? textInputFormat2;
  final TextInputType? keyboardType2;
  final TextEditingController? controller1;
  final TextEditingController? controller2;
  final void Function(String)? onChangeFunction1;
  final void Function(String)? onChangeFunction2;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Flexible(
            child: FormSingle(
              title: title1,
              controller: controller1,
              // width: Get.width / 2 - 15,
              keyboardType: keyboardType1,
              textInputFormat: textInputFormat1 ?? [],
              onChangeFunction: onChangeFunction1,
            ),
          ),
          isTab(context)
              ? HorizontalSpace.horizontalSpaceW20
              : HorizontalSpace.horizontalSpaceW5,
          Flexible(
            child: FormSingle(
              title: title2,
              controller: controller2,
              keyboardType: keyboardType2,
              textInputFormat: textInputFormat2 ?? [],
              onChangeFunction: onChangeFunction2,
            ),
          )
        ],
      ),
    ]);
  }
}
