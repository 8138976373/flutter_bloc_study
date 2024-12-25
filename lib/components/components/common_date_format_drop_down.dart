// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controllers/common_controller.dart';
// import '../services/functions.dart';

// class DateFormatDropDown extends StatelessWidget {
//   const DateFormatDropDown(
//       {Key? key,
//       this.onListItemTap,
//       this.width,
//       this.selectedValue,
//       this.height})
//       : super(
//           key: key,
//         );
//   final void Function(String)? onListItemTap;
//   final double? width;
//   final double? height;
//   final String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CommonController>(
//         id: 'date-update',
//         builder: (controller) {
//           final dropdownList = ['yyyy-MM-dd', 'dd/MM/yyyy'];

//           return Align(
//             alignment: '01_rtl'.tr == 'left'
//                 ? Alignment.centerLeft
//                 : Alignment.centerRight,
//             child: DropDownTile(
//                 width: width,
//                 height: height,
//                 selected: controller.isDateSelected,
//                 onDropDownTap: () {
//                   controller.isDateSelected = !controller.isDateSelected;
//                   controller.update(['date-update']);
//                 },
//                 onListItemTap: (int index) {
//                   commonPrint(index);
//                   commonPrint(controller.dateFormatSelected);
//                   if (onListItemTap != null) {
//                     if (dropdownList[index] == 'yyyy-MM-dd') {
//                       controller.dateFormatSelected = 'yyyy-MM-dd';
//                       commonPrint(controller.dateFormatSelected);
//                     } else {
//                       controller.dateFormatSelected = 'dd/MM/yyyy';
//                       commonPrint(controller.dateFormatSelected);
//                     }
//                     onListItemTap!(controller.dateFormatSelected);
//                   }
//                   controller.isDateSelected = !controller.isDateSelected;

//                   controller.update(['date-update']);
//                 },
//                 list: dropdownList,
//                 selectedItem: controller.dateFormatSelected == 'yyyy-MM-dd'
//                     ? 'yyyy-MM-dd'
//                     : 'dd/MM/yyyy'),
//           );
//         });
//   }
// }

// class DateTimeFormatDropDown extends StatelessWidget {
//   const DateTimeFormatDropDown(
//       {Key? key,
//       this.onListItemTap,
//       this.width,
//       this.selectedValue,
//       this.height})
//       : super(
//           key: key,
//         );
//   final void Function(String)? onListItemTap;
//   final double? width;
//   final double? height;
//   final String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CommonController>(
//         id: 'date-time-update',
//         builder: (controller) {
//           final dropdownList = ['yyyy-MM-dd hh:mm', 'dd/MM/yyyy hh:mm'];

//           return Align(
//             alignment: '01_rtl'.tr == 'left'
//                 ? Alignment.centerLeft
//                 : Alignment.centerRight,
//             child: DropDownTile(
//                 width: width,
//                 height: height,
//                 selected: controller.isDateTimeSelected,
//                 onDropDownTap: () {
//                   controller.isDateTimeSelected =
//                       !controller.isDateTimeSelected;
//                   controller.update(['date-time-update']);
//                 },
//                 onListItemTap: (int index) {
//                   commonPrint(index);
//                   commonPrint(controller.dateTimeFormatSelected);
//                   if (onListItemTap != null) {
//                     if (dropdownList[index] == 'yyyy-MM-dd hh:mm') {
//                       controller.dateTimeFormatSelected = 'yyyy-MM-dd hh:mm';
//                       commonPrint(controller.dateTimeFormatSelected);
//                     } else {
//                       controller.dateTimeFormatSelected = 'dd/MM/yyyy hh:mm';
//                       commonPrint(controller.dateTimeFormatSelected);
//                     }
//                     onListItemTap!(controller.dateTimeFormatSelected);
//                   }
//                   controller.isDateTimeSelected =
//                       !controller.isDateTimeSelected;

//                   controller.update(['date-time-update']);
//                 },
//                 list: dropdownList,
//                 selectedItem:
//                     controller.dateTimeFormatSelected == 'yyyy-MM-dd hh:mm'
//                         ? 'yyyy-MM-dd hh:mm'
//                         : 'dd/MM/yyyy hh:mm'),
//           );
//         });
//   }
// }
