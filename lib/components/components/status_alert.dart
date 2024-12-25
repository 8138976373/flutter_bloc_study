// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../common/controllers/common_controller.dart';
// import 'common_alert.dart';
// import 'common_search_drop_down_tile.dart';

// class SelectStatusAlert extends StatelessWidget {
//   const SelectStatusAlert({
//     super.key,
//     required this.onSelect,
//     this.selectedValue,
//     this.allRequired = false,
//     this.initialSelectedValue,
//   });
//   final String? selectedValue;
//   final void Function(dynamic selectedData) onSelect;
//   final void Function(dynamic selectedData)? initialSelectedValue;
//   final bool allRequired;
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<CommonController>(
//         id: 'status-alert',
//         builder: (controller) {
//           return DropDownTileContainer(
//               onDropDownTap: () {
//                 controller.searchModelList.clear();
//                 SearchAlertModel data;
//                 if (allRequired) {
//                   controller.activeInActiveList
//                       .add({'text': 'ALL', 'id': 'ALL'});
//                 }

//                 for (var element in controller.activeInActiveList) {
//                   data = SearchAlertModel();

//                   data.text = element['text'].toString().tr;
//                   data.textAr = element['text'].toString().tr;
//                   data.data = element['text'];
//                   data.id = element['id'];
//                   controller.searchModelList.add(data);
//                 }
//                 alert(
//                   width: alertWidth,
//                   height: context.height - 100,
//                   child: GetBuilder<CommonController>(
//                     id: 'status-alert',
//                     builder: (controller) {
//                       return Column(children: [
//                         Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Expanded(
//                                 child: SearchTile(
//                               height: Get.height - 100,
//                               width: alertWidth,
//                               onSearchListItemTap: (selectedData) {
//                                 onSelect(selectedData);
//                                 controller.update(['status-alert']);
//                                 getBack(fromSearch: true);
//                               },
//                               searchList: controller.searchModelList,
//                             )),
//                           ],
//                         )
//                       ]);
//                     },
//                   ),
//                 );
//               },
//               selectedItem: selectedValue == 'A'
//                   ? 'active_label'.tr
//                   : (selectedValue == 'I' || selectedValue == 'D'
//                       ? 'inactive_label'.tr
//                       : selectedValue == 'ALL'
//                           ? 'all_label'.tr
//                           : 'select_status_label'.tr));
//         });
//   }
// }
