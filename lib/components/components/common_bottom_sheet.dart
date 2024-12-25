// import 'package:flutter/material.dart';

// import '../../services/routing_service.dart';
// import '../../theme/theme.dart';
// import '../../utils/assets/image_assets.dart';
// import '../../utils/di/injection.dart';
// import 'texts.dart';

// Future<void> bottomSheetMobile(
//     {BuildContext? context,final Widget? child,
//     final bool? dismissible = true,
//     final double? height = 250,
//     final void Function()? backOnTap,
//     Color textColor = textColorBlack,
//     final String? title}) async {
//   Get.bottomSheet(
//       InkWell(
//         onTap: dismissible!
//             ? () {
//                getIt<RoutingService>().pop(
//                     context,
//                   );
//               }
//             : null,
//         child: Container(
//           decoration: const BoxDecoration(
//               color: white,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15), topRight: Radius.circular(15))),
//           height: height,
//           padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//           child: Column(
//             children: [
//               Container(
//                   margin: const EdgeInsets.fromLTRB(10, 5, 10, 15),
//                   height: 5,
//                   width: 87,
//                   decoration: const BoxDecoration(
//                       color: Color(0xffD9D9D9),
//                       borderRadius: BorderRadius.all(Radius.circular(10)))),
//               backOnTap == null
//                   ? empty
//                   : GetBuilder<CommonController>(
//                       id: 'hide-back',
//                       builder: (controller) {
//                         return Padding(
//                             padding: controller.hideBack
//                                 ? EdgeInsets.only(
//                                     right: '01_rtl'.tr == 'left' ? 0 : 37,
//                                     left: '01_rtl'.tr == 'left' ? 37 : 0,
//                                     top: 0,
//                                   )
//                                 : EdgeInsets.only(
//                                     right: '01_rtl'.tr == 'left' ? 0 : 25,
//                                     left: '01_rtl'.tr == 'left' ? 25 : 0,
//                                     top: 0,
//                                   ),
//                             child: Row(children: [
//                               GetBuilder<CommonController>(
//                                   id: 'hide-back',
//                                   builder: (controller) {
//                                     return controller.hideBack
//                                         ? empty
//                                         : InkWell(
//                                             onTap: backOnTap,
//                                             child: Row(
//                                               children: [
//                                                 Transform.scale(
//                                                     scaleX:
//                                                         '01_rtl'.tr == 'left'
//                                                             ? 1
//                                                             : -1,
//                                                     child: Image.asset(
//                                                       AssetsUtils.backArrow,
//                                                       height: 25,
//                                                       width: 25,
//                                                     )),
//                                                 horizontalSpaceW5,
//                                                 TextTile(
//                                                   text: title ?? "",
//                                                   color: textColor,
//                                                   fontSize: 16,
//                                                 )
//                                               ],
//                                             ),
//                                           );
//                                   })
//                             ]));
//                       }),
//               SingleChildScrollView(
//                 child: child,
//               ),
//             ],
//           ),
//         ),
//       ),
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
//       ),
//       isScrollControlled: true,
//       isDismissible: dismissible);
// }

