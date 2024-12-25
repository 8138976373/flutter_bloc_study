// import 'package:flutter/material.dart';

// import '../../theme/theme.dart';
// import 'common_card.dart';

// // bool deleteLoading = false;
// Future<dynamic> alert(
//     {Widget? child,
//     String? description,
//     // String? title,
//     double radius = 20,
//     double width = 250,
//     double height = 300,
//     EdgeInsetsGeometry? padding,
//     GlobalKey<NavigatorState>? navigatorKey,
//     EdgeInsetsGeometry? margin,
//     AlignmentGeometry alignment = Alignment.center,
//     bool loader = false,
//     Color? color = white,
//     bool barrierDismissible = false}) async {
//   Get.dialog(
//       Scaffold(
//           resizeToAvoidBottomInset: true,
//           backgroundColor: transparent,
//           body: InkWell(
//             enableFeedback: false,
//             onTap: () {
//               Get.focusScope!.unfocus();
//               if (!barrierDismissible) {
//                 Get.back();
//               }
//             },
//             child: SizedBox(
//               height: context.height,
//               child: Align(
//                   alignment: alignment,
//                   child: SingleChildScrollView(
//                     child: CardView(
//                       clipBehavior: Clip.hardEdge,
//                       padding: padding,
//                       margin: margin,
//                       radius: radius,
//                       width: width,
//                       height: height,
//                       color: color,
//                       child: child,
//                     ),
//                   )),
//             ),
//           )),
//       navigatorKey: navigatorKey,
//       transitionCurve: Curves.easeInQuint,
//       transitionDuration: const Duration(milliseconds: 300));
// }

// Future<dynamic> alertWithClose({
//   Widget? child,
//   String? description,
//   // String? title,
//   double radius = 20,
//   double width = 250,
//   // double height = 300,
//   EdgeInsetsGeometry padding = padding10,
//   GlobalKey<NavigatorState>? navigatorKey,
//   EdgeInsetsGeometry? margin,
//   AlignmentGeometry alignment = Alignment.center,
//   bool hideClose = false,
//   Color? color = white,
//   bool barrierDismissible = false,
//   void Function()? onPressed,
// }) async {
//   Get.dialog(
//       Scaffold(
//           resizeToAvoidBottomInset: true,
//           backgroundColor: transparent,
//           body: InkWell(
//             enableFeedback: false,
//             onTap: () {
//               Get.focusScope!.unfocus();
//               if (!barrierDismissible) {
//                 getBack(fromSearch: true);
//               }
//             },
//             child: Center(
//               child: SizedBox(
//                 width: Get.width > Get.height
//                     ? (Get.width - 50) / 2
//                     : Get.width - 50,
//                 child: Column(
//                   children: [
//                     Stack(
//                       alignment: AlignmentDirectional.topCenter,
//                       children: [
//                         Center(
//                           child: ExpandedCardView(
//                             clipBehavior: Clip.hardEdge,
//                             padding: padding,
//                             margin: margin,
//                             radius: radius,
//                             // width: width,
//                             // height: height,
//                             color: color,
//                             child: child,
//                           ),
//                         ),
//                         hideClose
//                             ? empty
//                             : Align(
//                                 alignment: '01_rtl'.tr == 'left'
//                                     ? Alignment.topRight
//                                     : Alignment.topLeft,
//                                 child: Container(
//                                   width: 30,
//                                   height: 30,
//                                   decoration: BoxDecoration(
//                                       color: color?.withOpacity(.8),
//                                       borderRadius: const BorderRadius.all(
//                                           Radius.circular(22))),
//                                   child: IconButton(
//                                       onPressed: onPressed ??
//                                           () {
//                                             getBack(fromSearch: true);
//                                           },
//                                       icon: const Icon(
//                                         Icons.close_rounded,
//                                         size: 15,
//                                         color: white,
//                                       )),
//                                 ),
//                               ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )),
//       navigatorKey: navigatorKey,
//       transitionCurve: Curves.easeInQuint,
//       transitionDuration: const Duration(milliseconds: 300));
// }
