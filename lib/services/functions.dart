// ignore_for_file: constant_identifier_names
import 'dart:async';
import '/components/const_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/models/key_value.dart';
import '../components/components/common_card/common_card.dart';
import '../components/components/texts.dart';
import '../theme/theme.dart';

//////////////////////////////////
///  1. commonPrint
///  2. storeToSharedPreference
///  3. storeAllToSharedPreference
///  4. storeListAllToSharedPreference
///  5. storeStringListToSharedPreference
///  6. deleteFromSharedPreference
///  7. deleteAllSP
///  8. fetchListAllFromSharedPreference
///  9. fetchStringFromSharedPreference
/// 10. fetchStringListFromSharedPreference
/// 11. showSnackBar
/// 12. showAlert
///////////////////////////////////

void commonPrint(message) {
  if (kDebugMode) {
    // log(message.toString());
    print(message);
  }
}

Future storeToSharedPreferences(key, value) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  await preference.setString(key, value);
}

Future storeAllToSharedPreferences(List<KeyValue> keys) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  for (var item in keys) {
    await preference.setString(item.key, item.value);
  }
}

Future storeListAllToSharedPreference(List<KeyValue> keys) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  for (var item in keys) {
    await preference.setStringList(item.key, item.value);
  }
}

Future storeStringListToSharedPreference(key, value) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  await preference.setStringList(key, value);
}

Future deleteFromSharedPreference(key) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  await preference.setString(key, '');
}

Future deleteAllSharedPreference(List keys) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  for (var item in keys) {
    await preference.setString(item, '');
  }
}

Future deleteAllSP() async {
  SharedPreferences preference = await SharedPreferences.getInstance();

  await preference.clear();
}

Future fetchListAllFromSharedPreference(List<String> keys) async {
  List<String> values = [];
  SharedPreferences preference = await SharedPreferences.getInstance();
  for (var item in keys) {
    values.add(preference.getString(item) ?? "");
  }
  return values;
}

Future fetchStringFromSharedPreference(String key) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  return preference.getString(key) ?? '';
}

Future fetchStringListFromSharedPreference(key) async {
  SharedPreferences preference = await SharedPreferences.getInstance();
  return preference.getStringList(key);
}

// Future compressImage(Uint8List list) async {
//   var result = await FlutterImageCompress.compressWithList(
//     list,
//     quality: 10,
//   );
//   return result;
// }

enum ToastType {
  DEFAULT,
  SUCCESS,
  FAILED,
}

// class DeliveryType {
//   static Map<String, dynamic> deliveryTypes = {
//     'DEFAULT': lightBgColor,
//     'SUCCESS': green.withOpacity(.3),
//     'FAILED': red.withOpacity(.3)
//   };

Future showSnackBar(String? title, String message,
    {Color? colorText,
    ToastType toastType = ToastType.DEFAULT,
    Duration duration = const Duration(seconds: 2),
    bool instantInit = true,
    SnackPosition? snackPosition = SnackPosition.BOTTOM,
    bool isDismissible = false,
    Widget? icon,
    bool? shouldIconPulse,
    double? maxWidth,
    EdgeInsets? margin,
    EdgeInsets? padding}) async {
  // backgroundColor - setting in toast
  Color? backgroundColor;
  switch (toastType) {
    case ToastType.SUCCESS:
      backgroundColor = green.withOpacity(.3);
      break;
    case ToastType.FAILED:
      backgroundColor = red.withOpacity(.3);
      break;
    case ToastType.DEFAULT:
      backgroundColor = lightBgColor;
      break;
  }
  Get.snackbar(title ?? 'sorry_label'.tr, message,
      titleText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(
            title: title ?? 'sorry_label'.tr,
            fontSize: 20,
            color: black,
          ),
          isDismissible
              ? empty
              : InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: ExpandedCardView(
                    boxShadow: const [],
                    margin: EdgeInsets.zero,
                    padding: Get.width > Get.height
                        ? CustomPadding.padding10
                        : CustomPadding.padding5,
                    color: white,
                    child: const Icon(
                      Icons.close,
                      size: 25,
                      color: midGrey,
                    ),
                  ),
                ),
        ],
      ),
      messageText: BodyText(
        title: message,
        color: black,
      ),
      colorText: colorText ?? black,
      backgroundColor: backgroundColor,
      snackPosition: snackPosition,
      duration: duration,
      isDismissible: isDismissible,
      padding: padding ?? const EdgeInsets.all(20),
      margin: margin ?? const EdgeInsets.all(20),
      icon: icon);
  // await Future.delayed(duration + const Duration(microseconds: 5));
}

Future showToast(String? title,
    {Color? colorText,
    Color? backgroundColor,
    Duration duration = const Duration(milliseconds: 800),
    bool instantInit = true,
    SnackPosition? snackPosition = SnackPosition.BOTTOM,
    // Widget? titleText,
    // Widget? messageText,
    bool isDismissible = false,
    Widget? icon,
    bool? shouldIconPulse,
    double? maxWidth,
    EdgeInsets? margin,
    EdgeInsets? padding}) async {
  Get.snackbar('', title ?? 'sorry_label'.tr,
      colorText: colorText ?? black,
      backgroundColor: backgroundColor ?? lightBgColor,
      snackPosition: snackPosition,
      duration: duration,
      isDismissible: isDismissible,
      padding: padding ?? const EdgeInsets.all(20),
      margin: margin ?? const EdgeInsets.all(30),
      icon: icon);
  await Future.delayed(duration + const Duration(microseconds: 5));
}

/////////Toast In Bns

Future showToastBns(String? title,
    {Color? colorText,
    Color? backgroundColor,
    Duration duration = const Duration(milliseconds: 800),
    bool instantInit = true,
    SnackPosition? snackPosition = SnackPosition.BOTTOM,
    // Widget? titleText,
    // Widget? messageText,
    bool isDismissible = false,
    Widget? icon,
    bool? shouldIconPulse,
    double? maxWidth,
    EdgeInsets? margin,
    EdgeInsets? padding}) async {
  Get.snackbar('', title ?? 'sorry_label'.tr,
      colorText: colorText ?? black,
      backgroundColor: backgroundColor ?? lightBgColor,
      snackPosition: snackPosition,
      duration: duration,
      isDismissible: isDismissible,
      padding: padding ?? const EdgeInsets.all(20),
      margin: margin ?? const EdgeInsets.all(30),
      icon: icon);
  await Future.delayed(duration + const Duration(microseconds: 5));
}

// Future showAlert(String? title, String message,
//     {Color? colorText,
//     Color? colorTitle,
//     Color? backgroundColor = white,
//     void Function()? onCancelClick,
//     void Function()? onSuccessClick,
//     bool hideCancel = false,
//     String okText = 'ok',
//     String? cancelText,
//     int maxLines = 3,
//     EdgeInsets? margin,
//     double width = 300,
//     double height = 300,
//     EdgeInsets? padding}) async {
//   alert(
//       radius: 8,
//       height: height,
//       width: width,
//       color: backgroundColor,
//       barrierDismissible: true,
//       child: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           verticalSpaceH10,
//           Row(
//             children: [
//               Expanded(
//                   child: BodyTextWithPadding(
//                 title: title ?? 'info_label'.tr,
//                 maxLines: 1,
//                 padding: CustomPadding.paddingV8H20,
//                 fontSize: 18, color: colorTitle ?? textColorFullBlack,
//                 // height: 70,
//               )),
//             ],
//           ),
//            VerticalSpace.verticalSpaceH5,
//           const Divider(
//             height: 0.5,
//             thickness: 0.5,
//             color: borderColor,
//           ),
//           VerticalSpace.verticalSpaceH5,
//           Expanded(
//             child: BodyTextWithPadding(
//                 title: message,
//                 padding: CustomPadding.paddingV5H20,
//                 maxLines: maxLines,
//                 fontSize: 16,
//                 color: textColorBlack),
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 hideCancel
//                     ? empty
//                     : OutlinedButton(
//                         onPressed: onCancelClick ??
//                             () {
//                               Get.back();
//                             },
//                         style: OutlinedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5.0),
//                             ),
//                             side:
//                                 const BorderSide(color: blueLight, width: 1.0)),
//                         child: SizedBox(
//                             height: 45,
//                             // width: 100,
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 8, right: 8),
//                               child: Center(
//                                 child: TextTile(
//                                   text: cancelText ?? 'cancel_c_label'.tr,
//                                   color: blueLight,
//                                 ),
//                               ),
//                             ))),

//                 //  SecondaryColoredButton(
//                 //     onClick: onCancelClick ??
//                 //         () {
//                 //           Get.back();
//                 //         },
//                 //     text: cancelText ?? 'cancel_label'.tr,
//                 //     color: lightRed,
//                 //   ),
//                 // horizontalSpaceW20,
//                 SecondaryColoredButton(
//                   height: 45,
//                   // width: 100,
//                   onClick: onSuccessClick ??
//                       () {
//                         Get.back();
//                       },
//                   text: okText == 'ok' ? 'ok_label'.tr : okText,
//                   color: lightGreen,
//                 )
//               ],
//             ),
//           )
//         ],
//       ));
// }

// /////Alert In Bns

// Future showAlertBns(
//     {String? title,
//     String? message,
//     Color? colorText,
//     Color? backgroundColor = white,
//     void Function()? onCancelClick,
//     void Function()? onSuccessClick,
//     bool hideCancel = false,
//     String okText = 'ok',
//     String? cancelText,
//     int maxLines = 1,
//     EdgeInsets? margin,
//     double width = 300,
//     double buttonWidth = 110,
//     double height = 240,
//     bool delete = false,
//     String? assetpath,
//     Color? okColor,
//     bool okLoading = false,
//     EdgeInsets? padding}) async {
//   alert(
//       radius: 8,
//       height: height,
//       width: width,
//       color: backgroundColor,
//       barrierDismissible: true,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             verticalSpaceH15,
//             // Icon(Icons.add_card_rounded),
//             delete == true
//                 ? assetpath == ''
//                     ? empty
//                     : Image.asset(assetpath ?? AssetsUtils.delete)
//                 : assetpath == ''
//                     ? empty
//                     : Image.asset(
//                         assetpath ?? AssetsUtils.add,
//                         height: 35,
//                         width: 35,
//                       ),
//             verticalSpaceH15,
//             Row(
//               children: [
//                 Expanded(
//                     child: TextTile(
//                         text: title ?? 'alert_title_label'.tr,
//                         maxLines: 1,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600)),
//               ],
//             ),
//             verticalSpaceH10,
//             Expanded(
//                 child: TextTile(
//               text: delete == true
//                   ? message ?? 'alert_sub_title_label'.tr
//                   : message ?? 'save_confirm_label'.tr,
//               color: textColorLightGrey,
//               maxLines: 5,
//             )),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 hideCancel
//                     ? empty
//                     : SizedBox(
//                         width: buttonWidth,
//                         child: OutlinedButton(
//                             onPressed: onCancelClick ??
//                                 () {
//                                   Get.back();
//                                 },
//                             style: OutlinedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                 ),
//                                 side: const BorderSide(
//                                     color: blueLight, width: 1.0)),
//                             child: SizedBox(
//                                 height: 45,
//                                 // width: 100,
//                                 child: Center(
//                                   child: TextTile(
//                                     text: cancelText ?? 'cancel_c_label'.tr,
//                                     color: blueLight,
//                                   ),
//                                 ))),
//                       ),
//                 okLoading
//                     ? SecondaryLoadingButton(
//                         radius: 8,
//                         height: 45,
//                         width: buttonWidth,
//                       )
//                     : SecondaryColoredButton(
//                         padding: EdgeInsets.zero,
//                         radius: 8,
//                         height: 45,
//                         width: buttonWidth,
//                         onClick: onSuccessClick ??
//                             () {
//                               Get.back();
//                             },
//                         text: delete == true
//                             ? okText == 'ok'
//                                 ? 'delete_c_label'.tr
//                                 : okText
//                             : okText == 'ok'
//                                 ? 'save_label'.tr
//                                 : okText,
//                         color: delete == true
//                             ? okColor ?? deleteRedColor
//                             : okColor ?? lightGreen,
//                       )
//               ],
//             )
//           ],
//         ),
//       ));
// }

// Future showAlertForSave(
//     {String? title,
//     String? message,
//     Color? colorText,
//     Color? backgroundColor = white,
//     void Function()? onCancelClick,
//     void Function()? onSuccessClick,
//     bool hideCancel = false,
//     String okText = 'ok',
//     String? cancelText,
//     int maxLines = 1,
//     EdgeInsets? margin,
//     double width = 300,
//     double buttonWidth = 110,
//     double height = 240,
//     bool delete = false,
//     String? assetpath,
//     Color? okColor,
//     bool okLoading = false,
//     EdgeInsets? padding}) async {
//   alert(
//       radius: 8,
//       height: height,
//       width: width,
//       color: backgroundColor,
//       barrierDismissible: true,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             verticalSpaceH15,
//             // Icon(Icons.add_card_rounded),
//             delete == true
//                 ? assetpath == ''
//                     ? empty
//                     : Image.asset(assetpath ?? AssetsUtils.delete)
//                 : assetpath == ''
//                     ? empty
//                     : Image.asset(
//                         assetpath ?? AssetsUtils.addIcon,
//                         height: 35,
//                         width: 35,
//                       ),
//             verticalSpaceH15,
//             Row(
//               children: [
//                 Expanded(
//                     child: TextTile(
//                         text: title ?? 'alert_title_label'.tr,
//                         maxLines: 1,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600)),
//               ],
//             ),
//             verticalSpaceH10,
//             Expanded(
//                 child: TextTile(
//               text: delete == true
//                   ? message ?? 'alert_sub_title_label'.tr
//                   : message ?? 'save_confirm_label'.tr,
//               color: textColorLightGrey,
//               maxLines: 5,
//             )),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 hideCancel
//                     ? empty
//                     : SizedBox(
//                         width: buttonWidth,
//                         child: OutlinedButton(
//                             onPressed: onCancelClick ??
//                                 () {
//                                   Get.back();
//                                 },
//                             style: OutlinedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(5.0),
//                                 ),
//                                 side: const BorderSide(
//                                     color: blueLight, width: 1.0)),
//                             child: SizedBox(
//                                 height: 45,
//                                 // width: 100,
//                                 child: Center(
//                                   child: TextTile(
//                                     text: cancelText ?? 'cancel_label'.tr,
//                                     color: blueLight,
//                                   ),
//                                 ))),
//                       ),
//                 okLoading
//                     ? SecondaryLoadingButton(
//                         radius: 8,
//                         height: 45,
//                         width: buttonWidth,
//                       )
//                     : SecondaryColoredButton(
//                         padding: EdgeInsets.zero,
//                         radius: 8,
//                         height: 45,
//                         width: buttonWidth,
//                         onClick: onSuccessClick ??
//                             () {
//                               Get.back();
//                             },
//                         text: delete == true
//                             ? okText == 'ok'
//                                 ? 'delete_c_label'.tr
//                                 : okText
//                             : okText == 'ok'
//                                 ? 'save_label'.tr
//                                 : okText,
//                         color: delete == true
//                             ? okColor ?? deleteRedColor
//                             : okColor ?? lightGreen,
//                       )
//               ],
//             )
//           ],
//         ),
//       ));
// }

// Future showAlertToast({
//   Color colorText = white,
//   int maxLines = 5,
//   String message = '',
//   Duration duration = const Duration(seconds: 2),
//   EdgeInsetsGeometry? margin,
//   ToastType toastType = ToastType.SUCCESS,
//   double width = 300,
//   double height = 55,
//   EdgeInsetsGeometry? padding,
//   void Function()? onPressed,
// }) async {
//   Color? backgroundColor;
//   String iconData = AssetsUtils.alert;
//   switch (toastType) {
//     case ToastType.SUCCESS:
//       backgroundColor = lightGreen;
//       iconData = AssetsUtils.alert;
//       break;
//     case ToastType.FAILED:
//       // backgroundColor = red.withOpacity(.3);
//       backgroundColor = deleteRedColor.withOpacity(.6);
//       iconData = AssetsUtils.error;
//       break;
//     case ToastType.DEFAULT:
//       backgroundColor = lightBgColor;
//       iconData = AssetsUtils.alert;
//       break;
//     default:
//   }
//   // await findMaxLineFromString(message).then((maxLines) async {
//   alertWithClose(
//       hideClose: toastType == ToastType.SUCCESS,
//       margin: margin ?? padding10,
//       alignment: Alignment.topCenter,
//       radius: 10,
//       // height: ((maxLines ?? 1) * ((Get.width > Get.height) ? 18 : 25)),
//       //  height != 60
//       //     ? maxLines > 1
//       //         ? height * maxLines
//       //         : height
//       //     : height,
//       // width: Get.width > Get.height ? (Get.width - 50) / 2 : Get.width - 50,
//       color: backgroundColor,
//       barrierDismissible: true,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset(
//                 iconData,
//                 color: white,
//                 height: 24,
//                 width: 24,
//               ),
//               Expanded(
//                 child: BodyTextWithPadding(
//                     title: message,
//                     padding: paddingV5H10,
//                     maxLines: maxLines,
//                     fontSize: 16,
//                     color: (toastType == ToastType.FAILED) ? white : colorText),
//               ),
//             ],
//           ),
//         ),
//       ));
//   // });

//   switch (toastType) {
//     case ToastType.SUCCESS:
//       await Future.delayed(duration, () async {
//         getBack(fromSearch: true);
//       });
//       break;
//     case ToastType.FAILED:
//       break;
//     case ToastType.DEFAULT:
//       await Future.delayed(duration, () async {
//         await getBack(fromSearch: true);
//       });
//       break;
//   }
// }

double? calculateStringWidth(String? txtString) {
  commonPrint("string:$txtString");
  if (txtString == "") {
    commonPrint("string: empty$txtString");

    return 0;
  } else {
    commonPrint("string: here$txtString");

    return double.parse((txtString ?? "".length.toString()) * 10);
  }
}

// Future<void> showVPActiveWarning() async {
//   await showAlertToast(
//     height: 280,
//     width: 350,
//     message:
//         "${'vpn_is_active_label'.tr},${'kindly_refresh_vp_service_label'.tr}",
//     toastType: ToastType.FAILED,
//   );
// }
