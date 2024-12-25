// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../utils/assets/image_assets.dart';
// import 'texts.dart';

// class DateTile extends StatelessWidget {
//   const DateTile(
//       {super.key,
//       this.onListItemTap,
//       this.width,
//       this.selectedValue,
//       this.height,
//       this.dateFormat,
//       this.initialDate,
//       this.firstDate,
//       this.lastDate});
//   final void Function(DateTime, String)? onListItemTap;
//   final double? width;
//   final double? height;
//   final String? selectedValue;
//   final String? dateFormat;
//   final DateTime? firstDate;
//   final DateTime? lastDate;
//   final DateTime? initialDate;

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CommonController>(
//         id: 'common-date',
//         builder: (controller) {
//           return Align(
//               alignment: '01_rtl'.tr == 'left'
//                   ? Alignment.centerLeft
//                   : Alignment.centerRight,
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(10),
//                 onTap: () async {
//                   // if (initialDate == null) {
//                   //   controller.selectedDate = DateTime.now();
//                   //   commonPrint(initialDate);
//                   //   commonPrint(controller.selectedDate);
//                   // } else {
//                   //   controller.selectedDate = controller.selectedDate;
//                   // }

//                   controller.setDate(context, callBack: (date, dateStr) {
//                     if (onListItemTap != null) {
//                       onListItemTap!(date, dateStr);
//                     }
//                     //  commonPrint("hgyh  "+firstDate.toString());
//                   },
//                       dateFormat: '',
//                       initialDate: DateTime.parse(selectedValue!),
//                       firstDate: firstDate,
//                       lastDate: lastDate);
//                 },
//                 child: Container(
//                     height: 55,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: borderColor, width: 1.5),
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: width ?? Get.width - 140,
//                                   child: BodyText(
//                                     title: selectedValue != '' &&
//                                             selectedValue != null
//                                         ? DateFormat('dd-MM-yyyy', 'en').format(
//                                             (DateTime.parse(selectedValue!)))
//                                         : controller.selectedDateStr == ''
//                                             ? 'select_label'.tr
//                                             : DateFormat('dd-MM-yyyy', 'en')
//                                                 .format((DateTime.parse(
//                                                     controller
//                                                         .selectedDateStr))),
//                                     color: controller.selectedDateStr == ''
//                                         ? midGrey
//                                         : black,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             ImageIcon(
//                               AssetImage(AssetsUtils.calendar),
//                               color: blueLight,
//                               size: 20,
//                             ),
//                           ],
//                         ))),
//               ));
//         });
//   }
// }

// class DateTimeTile extends StatelessWidget {
//   const DateTimeTile(
//       {super.key,
//       this.onListItemTap,
//       this.width,
//       this.selectedValue,
//       this.height});
//   final void Function(DateTime, String)? onListItemTap;
//   final double? width;
//   final double? height;
//   final String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CommonController>(
//         id: 'common-date-time',
//         builder: (controller) {
//           return Align(
//               alignment: '01_rtl'.tr == 'left'
//                   ? Alignment.centerLeft
//                   : Alignment.centerRight,
//               child: InkWell(
//                 onTap: () async {
//                   controller.setDateTime(context, callBack: (date, dateStr) {
//                     if (onListItemTap != null) {
//                       onListItemTap!(date, dateStr);
//                     }
//                   });
//                 },
//                 child: Container(
//                     height: 55,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: borderColor, width: 1.5),
//                         borderRadius: BorderRadius.circular(10)),
//                     child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 15),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: isTab(context)
//                                       ? (Get.width - 140) * .4
//                                       : (Get.width - 80),
//                                   child: BodyText(
//                                     title: (selectedValue != '' &&
//                                             selectedValue != null
//                                         ? DateFormat(
//                                                 'dd-MM-yyyy HH:mm:ss', 'en')
//                                             .format((DateTime.parse(
//                                                 selectedValue!)))
//                                         : controller.selectedDateStr == ''
//                                             ? 'select_label'.tr
//                                             : DateFormat(
//                                                     'dd-MM-yyyy HH:mm:ss', 'en')
//                                                 .format((DateTime.parse(
//                                                     controller
//                                                         .selectedDateStr)))),
//                                     color: controller.selectedDateStr == ''
//                                         ? midGrey
//                                         : black,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             ImageIcon(
//                               AssetImage(AssetsUtils.calendar),
//                               color: blueLight,
//                               size: 20,
//                             ),
//                           ],
//                         ))),
//               ));
//         });
//   }
// }
