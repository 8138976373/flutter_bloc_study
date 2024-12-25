// ignore: camel_case_types
// ignore_for_file: deprecated_member_use

import '/utils/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../common/models/search_alert_model.dart';
import '../../services/device_info.dart';
import '../../theme/theme.dart';
import '../const_widget.dart';
import '../empty_screen.dart';
import '../loading.dart';
import 'common_card/common_card.dart';
import 'common_image_container.dart';
import 'texts.dart';

class DropDownTileContainer extends StatelessWidget {
  const DropDownTileContainer(
      {super.key,
      this.isPrifixIcon = false,
      this.height = 50,
      this.width,
      this.widthDivisionFactor = 2,
      this.hintText,
      this.dropBgColor,
      this.icon,
      this.margin = const EdgeInsets.only(bottom: 10),
      this.padding = CustomPadding.paddingV10H15,
      required this.onDropDownTap,
      required this.selectedItem,
      this.onTapPosition,
      this.subTitleText = ''});
  final double height;
  final double? width;
  final bool isPrifixIcon;
  final void Function() onDropDownTap;
  final String selectedItem;
  final String? hintText;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final IconData? icon;
  final void Function(double x, double y)? onTapPosition;
  final String? subTitleText;
  final int widthDivisionFactor;
  final Color? dropBgColor;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: SizedBox(
        width: width ??
            (isTab(context)
                ? context.width / (widthDivisionFactor) - 60
                : context.width - 20),
        child: ExpandedCardView(
          color: isTab(context) ? (dropBgColor ?? bgColorTAB) : null,
          height: height,
          border: isTab(context)
              ? null
              : Border.all(width: 1.2, color: borderColor),
          radius: 8,
          // constraints: const BoxConstraints(
          //     minWidth: 50, maxWidth: 380, maxHeight: 50, minHeight: 30),
          margin: margin,
          padding: subTitleText == ''
              ? padding
              : const EdgeInsets.only(left: 10, right: 10),
          child: InkWell(
            onTap: onDropDownTap,
            onTapDown: (details) {
              final tapPosition = details.globalPosition;
              final y = tapPosition.dy > (Get.height - 200)
                  ? tapPosition.dy - 200
                  : tapPosition.dy;
              if (onTapPosition != null) {
                onTapPosition!(tapPosition.dx, y);
              }
            },
            child: Column(
              crossAxisAlignment: subTitleText == ''
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          isPrifixIcon
                              ? Row(
                                  children: [
                                    Icon(
                                      icon,
                                      color: midGrey,
                                      size: 18,
                                    ),
                                    HorizontalSpace.horizontalSpaceW15
                                  ],
                                )
                              : empty,
                          // SizedBox(
                          // width: width != null
                          //     ? isTab(context)
                          //         ? width! - 120
                          //         : width! - 70
                          //     : isTab(context)
                          //         ? isWebWithFullScreen(context)
                          //             ? ((context.width*.75 - 120)/4)
                          //             : (context.width / 2) - 125
                          //         : context.width - 105,
                          // child:
                          Flexible(
                            fit: FlexFit.tight,
                            child: BodyText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                title: selectedItem == ''
                                    ? hintText ?? ""
                                    : selectedItem,
                                color: selectedItem == '' ? midGrey : black),
                          ),
                          // ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: midGrey,
                      size: 20,
                    )
                  ],
                ),
                subTitleText == ''
                    ? empty
                    : TextTile(
                        text: subTitleText ?? '',
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//not used============>
class SearchDropDownTile extends StatelessWidget {
  const SearchDropDownTile(
      {super.key,
      this.isPrifixIcon = false,
      this.selected = false,
      required this.onChanged,
      this.height = 50,
      this.width,
      this.searchListLength = 100,
      this.hintText,
      this.icon,
      this.margin = const EdgeInsets.only(bottom: 0),
      this.padding = CustomPadding.padding5,
      this.maxLength = 240,
      required this.onDropDownTap,
      required this.onSearchListItemTap,
      required this.searchList,
      this.searchDescriptionList,
      required this.selectedItem});
  final double height;
  final double? width;
  final bool isPrifixIcon;
  final bool selected;
  final void Function() onDropDownTap;
  final void Function(int index) onSearchListItemTap;
  final String selectedItem;
  final List searchList;
  final List? searchDescriptionList;
  final int maxLength;
  final int searchListLength;
  final String? hintText;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return selected == false
        ? ExpandedCardView(
            height: height,
            radius: 8,
            color: lightBlueBns,
            // constraints: const BoxConstraints(
            //     minWidth: 50, maxWidth: 380, maxHeight: 50, minHeight: 30),
            margin: margin,
            padding: padding,
            child: InkWell(
              onTap: onDropDownTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      isPrifixIcon
                          ? Row(
                              children: [
                                Icon(
                                  icon,
                                  color: midGrey,
                                  size: 18,
                                ),
                                HorizontalSpace.horizontalSpaceW15
                              ],
                            )
                          : empty,
                      SizedBox(
                        width: width != null
                            ? isTab(context)
                                ? Get.context!.width / 2 - 175
                                : width! - 70
                            : isTab(context)
                                ? Get.context!.width / 2 - 175
                                : Get.context!.width - 160,
                        child: BodyText(
                            title: selectedItem == ''
                                ? hintText ?? ""
                                : selectedItem,
                            color: selectedItem == '' ? midGrey : black),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: midGrey,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        : ExpandedCardView(
            radius: 8,
            margin: margin,
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: onDropDownTap,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          isPrifixIcon
                              ? Row(
                                  children: [
                                    Icon(
                                      icon,
                                      color: midGrey,
                                      size: 18,
                                    ),
                                    HorizontalSpace.horizontalSpaceW15
                                  ],
                                )
                              : const SizedBox(),
                          SizedBox(
                            width: isTab(context)
                                ? Get.context!.width / 2 - 100
                                : Get.context!.width - 100,
                            height: 50,
                            child: TextField(
                              textCapitalization: TextCapitalization.sentences,
                              autofocus: selected,
                              maxLength: maxLength,
                              decoration: InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                alignLabelWithHint: false,
                                hintText: hintText,
                                // hintStyle: text40.copyWith(color: midGrey),
                              ),
                              onChanged: onChanged,
                              onSubmitted: (str) {
                                // focusNode.addListener(() {});
                              },
                              onEditingComplete: () {
                                // focusNode.addListener(() {});
                              },
                              textInputAction: TextInputAction.next,
                            ),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.keyboard_arrow_up,
                        color: midGrey,
                        size: 20,
                      )
                    ],
                  ),
                ),
                VerticalSpace.verticalSpaceH5,
                searchList.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: searchList.length < searchListLength
                            ? searchList.length
                            : searchListLength,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                thickness: 1.5,
                                color: midGrey.withOpacity(.15),
                                height: 2,
                              ),
                              InkWell(
                                onTap: () {
                                  onSearchListItemTap(index);
                                },
                                child: SizedBox(
                                  width: Get.context!.width,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: BodyText(
                                        title: searchList[index], color: black),
                                  ),
                                ),
                              ),
                              searchDescriptionList?[index] != null
                                  ? TextTile(
                                      text: searchDescriptionList?[index] ?? '')
                                  : empty
                            ],
                          );
                        })
                    : empty
              ],
            ),
          );
  }
}

//====================>
class SearchDropDownTileAlert extends StatelessWidget {
  const SearchDropDownTileAlert(
      {super.key,
      this.isPrifixIcon = false,
      this.height = 50,
      this.width,
      this.hintText,
      this.icon,
      this.margin = const EdgeInsets.only(bottom: 10),
      this.padding = CustomPadding.paddingV10H15,
      required this.onDropDownTap,
      required this.selectedItem});
  final double height;
  final double? width;
  final bool isPrifixIcon;
  final void Function() onDropDownTap;
  final String selectedItem;
  final String? hintText;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ExpandedCardView(
      height: height,
      radius: 8, color: lightBlueBns,
      // constraints: const BoxConstraints(
      //     minWidth: 50, maxWidth: 380, maxHeight: 50, minHeight: 30),
      margin: margin,
      padding: padding,
      child: InkWell(
        onTap: onDropDownTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                isPrifixIcon
                    ? Row(
                        children: [
                          Icon(
                            icon,
                            color: midGrey,
                            size: 18,
                          ),
                          HorizontalSpace.horizontalSpaceW15
                        ],
                      )
                    : empty,
                SizedBox(
                  width: width != null ? width! - 70 : Get.context!.width - 160,
                  child: BodyText(
                      title: selectedItem == '' ? hintText ?? "" : selectedItem,
                      color: selectedItem == '' ? midGrey : black),
                ),
              ],
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: midGrey,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}

class SearchAlertTile extends StatelessWidget {
  const SearchAlertTile(
      {super.key,
      this.isPrifixIcon = false,
      this.selected = false,
      required this.onChanged,
      this.height = 50,
      this.width,
      this.searchListLength = 100,
      this.hintText,
      this.icon,
      this.margin = const EdgeInsets.only(bottom: 10),
      this.padding = CustomPadding.paddingV10H15,
      this.maxLength = 240,
      // required this.onDropDownTap,
      required this.onSearchListItemTap,
      required this.searchList,
      this.searchDescriptionList,
      required this.selectedItem});
  final double height;
  final double? width;
  final bool isPrifixIcon;
  final bool selected;

  // final void Function() onDropDownTap;
  final void Function(int index) onSearchListItemTap;
  final String selectedItem;
  final List searchList;
  final List? searchDescriptionList;
  final int maxLength;
  final int searchListLength;
  final String? hintText;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final IconData? icon;

  // final List searchListUnit;
  // final String sample;
  @override
  Widget build(BuildContext context) {
    final searchController = Get.find<SearchController>();
    final FocusNode focusNode = FocusNode();

    searchController.selectedIndex = -1;
    void handleKeyEvent(
      RawKeyEvent event,
    ) {
      var offset = 0.0;

      offset = searchController.searchAlertScrollController.offset;

      if (event.isKeyPressed(LogicalKeyboardKey.enter) ||
          event.isKeyPressed(LogicalKeyboardKey.execute)) {
        if (searchController.selectedIndex >= 0) {
          onSearchListItemTap(searchController.selectedIndex);
        } else {}
      }
      if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
        if (searchController.selectedIndex > 0) {
          searchController.selectedIndex = searchController.selectedIndex - 1;
          searchController.update(['search']);
        } else {
          searchController.selectedIndex = 0;
          searchController.update(['search']);
        }

        if (searchController.selectedIndex > 0) {
          searchController.searchAlertScrollController.animateTo(offset - 70,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        }
      } else if (event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
        if (searchController.selectedIndex < searchList.length - 1) {
          searchController.selectedIndex = searchController.selectedIndex + 1;
          searchController.update(['search']);
        }
        if (searchController.selectedIndex > 5) {
          searchController.searchAlertScrollController.animateTo(offset + 70,
              duration: const Duration(milliseconds: 300), curve: Curves.ease);
        }
      }
    }

    return RawKeyboardListener(
      // autofocus: true,
      focusNode: focusNode,
      onKey: (RawKeyEvent event) {
        handleKeyEvent(
          event,
        );
      },
      child: ExpandedCardView(
        radius: 8,
        color: white,
        margin: margin,
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              // onTap: onDropDownTap,
              child: ExpandedCardView(
                padding: HorizontalPadding.paddingHorizontal10,
                radius: 10,
                // color: greesn,
                border: Border.all(color: borderColor, width: 1.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        isPrifixIcon
                            ? Row(
                                children: [
                                  Icon(
                                    icon,
                                    color: midGrey,
                                    size: 18,
                                  ),
                                  HorizontalSpace.horizontalSpaceW15
                                ],
                              )
                            : empty,
                        SizedBox(
                          width: isTab(context)
                              ? Get.context!.width / 2 - 75
                              : Get.context!.width - 150,
                          child: TextField(
                              textCapitalization: TextCapitalization.sentences,
                              autofocus: true,
                              maxLength: maxLength,
                              decoration: InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                alignLabelWithHint: false,
                                hintText: hintText,
                              ),
                              onSubmitted: (str) {
                                focusNode.addListener(() {});
                              },
                              onEditingComplete: () {
                                focusNode.addListener(() {});
                              },
                              textInputAction: TextInputAction.next,
                              onChanged: (str) {
                                searchController.selectedIndex = -1;
                                onChanged!(str);
                              }),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.search,
                      color: midGrey,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            VerticalSpace.verticalSpaceH5,
            SizedBox(
              height: height - 100,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  controller: searchController.searchAlertScrollController,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: searchList.length < searchListLength
                      ? searchList.length
                      : searchListLength,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        onSearchListItemTap(index);
                      },
                      child: GetBuilder<SearchController>(
                          id: 'search',
                          builder: (contl) {
                            return Container(
                              margin: VerticalPadding.paddingVertical5,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 5),
                              width: double.infinity,
                              height: 58,
                              color: searchController.selectedIndex == index
                                  ? blueColor
                                  : const Color(0xFFEFF3F8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: Get.context!.width,
                                          child: BodyText(
                                              title: searchList[index],
                                              color: searchController
                                                          .selectedIndex ==
                                                      index
                                                  ? white
                                                  : black),
                                        ),
                                        (searchDescriptionList != null)
                                            ? (BodyText(
                                                fontSize: 12,
                                                title: (((searchDescriptionList ??
                                                                [])
                                                            .length >
                                                        index)
                                                    ? (searchDescriptionList?[
                                                                index]
                                                            .toString() ??
                                                        '1')
                                                    : '2'
                                                        '3'),
                                                color: searchController
                                                            .selectedIndex ==
                                                        index
                                                    ? white
                                                    : midGrey,
                                              ))
                                            : empty,
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class SearchTile extends StatelessWidget {
  const SearchTile({
    super.key,
    this.isPrifixIcon = false,
    this.selected = false,
    this.isStockEffect = false,
    this.onChanged,
    this.height = 50,
    this.width,
    this.searchListLength = 100,
    this.hintText,
    this.icon,
    this.type = '',
    this.isLoading = false,
    this.margin = const EdgeInsets.only(bottom: 10),
    this.padding = CustomPadding.paddingV10H15,
    this.maxLength = 240,
    // required this.onDropDownTap,
    required this.onSearchListItemTap,
    this.onSuffixItemTap,
    required this.searchList,
    this.suffixComponent,
    this.imageUrlSelected,
    this.onAddFunction,
    // this.searchDescriptionList,
    this.selectedItem,
    this.enableAddButton = false,
    this.addType,
    this.titlePosition = -1,
  });
  final double height;
  final double? width;
  final bool isPrifixIcon;
  final bool selected;
  final bool isLoading;
  final bool isStockEffect;
  final String? type;
  final String? imageUrlSelected;

  // final void Function() onDropDownTap;
  final void Function(dynamic selectedData) onSearchListItemTap;
  final void Function(dynamic selectedData)? onSuffixItemTap;
  final String? selectedItem;
  final List searchList;

  // final List? searchDescriptionList;
  final int maxLength;
  final int searchListLength;
  final String? hintText;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final IconData? icon;
  final bool enableAddButton;
  final String? addType;
  final int? titlePosition;

  final void Function()? onAddFunction;

  // final List searchListUnit;
  // final String sample;
  final Widget? suffixComponent;

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    Get.lazyPut(() => SearchController());
    final searchController = Get.find<SearchController>();
    searchController.filterList.clear();
    for (var data in searchList) {
      searchController.filterList.add(data);
    }
    searchController.selectedIndex = -1;

    focusNode.addListener(() {});
    return GetBuilder<SearchController>(
        id: 'search',
        builder: (searchController) {
          return RawKeyboardListener(
            // autofocus: true,
            focusNode: focusNode,
            onKey: (RawKeyEvent event) {
              searchController.handleKeyEvent(event, onSearchListItemTap);
            },
            child: ExpandedCardView(
              radius: 8,
              color: white,
              margin: margin,
              padding: padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    // onTap: onDropDownTap,
                    child: ExpandedCardView(
                      padding: HorizontalPadding.paddingHorizontal10,
                      radius: 10,
                      // color: greesn,
                      border: Border.all(color: borderColor, width: 1.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              isPrifixIcon
                                  ? Row(
                                      children: [
                                        Icon(
                                          icon,
                                          color: midGrey,
                                          size: 18,
                                        ),
                                        HorizontalSpace.horizontalSpaceW15
                                      ],
                                    )
                                  : empty,
                              SizedBox(
                                width: (Get.context!.width > Get.context!.height
                                    ? Get.context!.width / 2 - 150
                                    : enableAddButton == true
                                        ? Get.context!.width - 180
                                        : Get.context!.width - 150),
                                child: TextField(
                                    onSubmitted: (str) {
                                      focusNode.addListener(() {});
                                    },
                                    onEditingComplete: () {
                                      focusNode.addListener(() {});
                                    },
                                    // textInputAction: TextInputAction.next,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    autofocus: true,
                                    maxLength: maxLength,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      border: InputBorder.none,
                                      alignLabelWithHint: false,
                                      hintText: hintText,
                                      // hintStyle: text40.copyWith(color: midGrey),
                                    ),
                                    onChanged: (str) {
                                      final searchController =
                                          Get.find<SearchController>();
                                      searchController.selectedIndex = -1;
                                      searchController.filterList.clear();
                                      if (str == '') {
                                        for (var data in searchList) {
                                          searchController.filterList.add(data);
                                        }
                                      } else {
                                        for (var data in searchList) {
                                          if (type == 'ITEM') {
                                            if (data.text
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(
                                                        str.toLowerCase()) ||
                                                data.textAr
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(str) ||
                                                data.data.barcode
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(str) ||
                                                data.data.itemCode
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(str)) {
                                              searchController.filterList
                                                  .add(data);
                                            }
                                          } else if (type == 'COMMON') {
                                            if (data.text
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(
                                                        str.toLowerCase()) ||
                                                data.textAr
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(str) ||
                                                data.data.barcode
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(str)) {
                                              searchController.filterList
                                                  .add(data);
                                            }
                                          } else if (type == 'SUP' ||
                                              type == 'CUST') {
                                            if (data.text
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(
                                                        str.toLowerCase()) ||
                                                data.textAr
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(str) ||
                                                data.data.mobile
                                                    .toString()
                                                    .toLowerCase()
                                                    .contains(str)) {
                                              searchController.filterList
                                                  .add(data);
                                            }
                                          } else if (data.text
                                                  .toString()
                                                  .toLowerCase()
                                                  .contains(
                                                      str.toLowerCase()) ||
                                              data.textAr
                                                  .toString()
                                                  .toLowerCase()
                                                  .contains(str)) {
                                            searchController.filterList
                                                .add(data);
                                          } else if (data.id
                                              .toString()
                                              .toLowerCase()
                                              .contains(str.toLowerCase())) {
                                            searchController.filterList
                                                .add(data);
                                          }
                                        }
                                      }
                                      searchController.update(['search']);
                                    }),
                              )
                            ],
                          ),
                          const Icon(
                            Icons.search,
                            color: midGrey,
                            size: 20,
                          ),
                          onAddFunction != null || enableAddButton == true
                              ? InkWell(
                                  onTap: onAddFunction ??
                                      () {
                                        // Get.find<InventoryController>()
                                        //     .resetSupplierDetails();
                                        // Get.find<InventoryMasterController>()
                                        //     .clearInputsItemCard();
                                        // addType == 'purchase'
                                        //     ? getRouteOffAndToNamed(
                                        //         routeName:
                                        //             AppPages.ADD_INVENTORY_MASTER_SUPPLIER,
                                        //         arguments: {
                                        //             'isFromSearch': true
                                        //           })
                                        //     : addType == 'sales'
                                        //         ? getRouteOffAndToNamed(
                                        //             routeName:
                                        //                 AppPages.ADD_INVENTORY_MASTER_CUSTOMER,
                                        //             arguments: {
                                        //                 'isFromSearch': true
                                        //               })
                                        //         : getRouteOffAndToNamed(
                                        //             routeName: AppPages
                                        //                 .INVENTORY_MASTER_ITEMCARD_ADD,
                                        //             arguments: {
                                        //                 'isFromSearch': true
                                        //               });
                                      },
                                  child: const Icon(
                                    Icons.add,
                                    color: midGrey,
                                    size: 20,
                                  ),
                                )
                              : empty
                        ],
                      ),
                    ),
                  ),
                  VerticalSpace.verticalSpaceH5,
                  SizedBox(
                    height: height - 100,
                    width: width ??
                        (isTab(context) ? Get.context!.width / 2 : null),
                    child: GetBuilder<SearchController>(
                        id: 'search',
                        builder: (searchController) {
                          return isLoading
                              ? const LoadingScreen()
                              : searchList.isEmpty
                                  ? const EmptyScreen()
                                  : ListView.builder(
                                      controller:
                                          searchController.scrollController,
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      itemCount: searchController
                                                  .filterList.length <
                                              searchListLength
                                          ? searchController.filterList.length
                                          : searchListLength,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        SearchAlertModel item;
                                        // if (searchController.filterList.length <
                                        //     searchListLength) {
                                        item =
                                            searchController.filterList[index];
                                        // } else {
                                        //   item = searchController.filterList[index];
                                        // }

                                        return index != titlePosition
                                            ? InkWell(
                                                onTap: () {
                                                  onSearchListItemTap(
                                                      searchController
                                                          .filterList[index]);
                                                },
                                                child:
                                                    searchController
                                                            .filterList[index]
                                                            .showInList
                                                        ? Container(
                                                            margin: VerticalPadding
                                                                .paddingVertical5,
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 10,
                                                                    right: 5),
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                item.url == null
                                                                    ? 58
                                                                    : 100,
                                                            color: (searchController
                                                                        .selectedIndex ==
                                                                    index)
                                                                ? blueColor
                                                                : const Color(
                                                                    0xFFEFF3F8),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    item.url !=
                                                                            null
                                                                        ? ImageContainer(
                                                                            url:
                                                                                item.url!,
                                                                            height:
                                                                                65,
                                                                            width:
                                                                                65,
                                                                            imagePadding:
                                                                                CustomPadding.padding5,
                                                                            margin: '01_rtl'.tr == 'left'
                                                                                ? const EdgeInsets.only(right: 20)
                                                                                : const EdgeInsets.only(left: 20),
                                                                            border:
                                                                                Border.all(color: imageUrlSelected == item.id ? blueColor : borderColor),
                                                                          )
                                                                        : empty,
                                                                    Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              vertical: 10),
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: Get.context!.width > Get.context!.height
                                                                                    ? null
                                                                                    : suffixComponent == null
                                                                                        ? item.url == null
                                                                                            ? Get.context!.width - 115
                                                                                            : Get.context!.width - 200
                                                                                        : item.url == null
                                                                                            ? Get.context!.width - 185
                                                                                            : Get.context!.width - 300,
                                                                                child: BodyText(title: '01_rtl'.tr == 'left' ? item.text ?? '' : item.textAr ?? item.text!, maxLines: 1, color: (searchController.selectedIndex == index) ? white : black),
                                                                              ),
                                                                              item.subText != null
                                                                                  ? SizedBox(
                                                                                      width: Get.context!.width > Get.context!.height ? null : Get.context!.width - 185,
                                                                                      child: BodyText(fontSize: 12, title: '01_rtl'.tr == 'left' ? (item.subText!) : (item.subTextAr ?? 'HI'), color: (searchController.selectedIndex == index) ? white : black),
                                                                                    )
                                                                                  : empty,
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                InkWell(
                                                                    onTap: () {
                                                                      if (onSuffixItemTap !=
                                                                          null) {
                                                                        onSuffixItemTap!(
                                                                            searchController.filterList[index]);
                                                                      }
                                                                    },
                                                                    child: isStockEffect
                                                                        ? (item.data.stockAffect.toString().toLowerCase() ==
                                                                                'y'
                                                                            ? suffixComponent ??
                                                                                empty
                                                                            : empty)
                                                                        : suffixComponent ??
                                                                            empty)
                                                              ],
                                                            ),
                                                          )
                                                        : empty,
                                              )
                                            : Container(
                                                margin: VerticalPadding
                                                    .paddingVertical5,
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 5),
                                                width: double.infinity,
                                                height:
                                                    item.url == null ? 58 : 100,
                                                color: white,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        item.url != null
                                                            ? ImageContainer(
                                                                url: item.url!,
                                                                height: 65,
                                                                width: 65,
                                                                imagePadding:
                                                                    CustomPadding
                                                                        .padding5,
                                                                margin: '01_rtl'
                                                                            .tr ==
                                                                        'left'
                                                                    ? const EdgeInsets
                                                                        .only(
                                                                        right:
                                                                            20)
                                                                    : const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            20),
                                                                border: Border.all(
                                                                    color: imageUrlSelected ==
                                                                            item.id
                                                                        ? blueColor
                                                                        : borderColor),
                                                              )
                                                            : empty,
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          10),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  SizedBox(
                                                                    width: Get.context!.width >
                                                                            Get.context!
                                                                                .height
                                                                        ? null
                                                                        : suffixComponent ==
                                                                                null
                                                                            ? item.url == null
                                                                                ? Get.context!.width - 115
                                                                                : Get.context!.width - 200
                                                                            : item.url == null
                                                                                ? Get.context!.width - 185
                                                                                : Get.context!.width - 300,
                                                                    child: BodyText(
                                                                        title: '01_rtl'.tr == 'left'
                                                                            ? item.text ??
                                                                                ''
                                                                            : item.textAr ??
                                                                                item
                                                                                    .text!,
                                                                        maxLines:
                                                                            1,
                                                                        color: (searchController.selectedIndex ==
                                                                                index)
                                                                            ? white
                                                                            : black),
                                                                  ),
                                                                  item.subText !=
                                                                          null
                                                                      ? SizedBox(
                                                                          width: Get.context!.width > Get.context!.height
                                                                              ? null
                                                                              : Get.context!.width - 185,
                                                                          child: BodyText(
                                                                              fontSize: 12,
                                                                              title: '01_rtl'.tr == 'left' ? (item.subText!) : (item.subTextAr ?? 'HI'),
                                                                              color: (searchController.selectedIndex == index) ? white : black),
                                                                        )
                                                                      : empty,
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          if (onSuffixItemTap !=
                                                              null) {
                                                            onSuffixItemTap!(
                                                                searchController
                                                                        .filterList[
                                                                    index]);
                                                          }
                                                        },
                                                        child: isStockEffect
                                                            ? (item.data.stockAffect
                                                                        .toString()
                                                                        .toLowerCase() ==
                                                                    'y'
                                                                ? suffixComponent ??
                                                                    empty
                                                                : empty)
                                                            : suffixComponent ??
                                                                empty)
                                                  ],
                                                ));
                                      });
                        }),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class SearchController extends GetxController {
  List filterList = [];
  final ScrollController scrollController = ScrollController();
  final ScrollController searchAlertScrollController = ScrollController();
  final ScrollController menuScrollController = ScrollController();
  int selectedIndex = -1;

  void handleKeyEvent(RawKeyEvent event, dynamic onSearchListItemTap,
      {from = 'SEARCH-TILE'}) {
    var offset = 0.0;

    late ScrollController scroll;
    switch (from) {
      case 'SEARCH-TILE':
        {
          offset = scrollController.offset;
          scroll = scrollController;
          break;
        }
      case 'SEARCH-MENU-TILE':
        {
          offset = menuScrollController.offset;
          scroll = menuScrollController;
          break;
        }
      case 'SEARCH-ALERT-TILE':
        {
          offset = searchAlertScrollController.offset;
          scroll = searchAlertScrollController;
          break;
        }

      default:
    }

    if (event.isKeyPressed(LogicalKeyboardKey.enter) ||
        event.isKeyPressed(LogicalKeyboardKey.execute)) {
      if (selectedIndex >= 0) {
        onSearchListItemTap(filterList[selectedIndex]);
      } else {}
    }
    if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
      if (selectedIndex > 0) {
        selectedIndex = selectedIndex - 1;
        update(['search']);
      } else {
        selectedIndex = 0;
        update(['search']);
      }

      if (selectedIndex > 0) {
        scroll.animateTo(offset - 70,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    } else if (event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
      if (selectedIndex < filterList.length - 1) {
        selectedIndex = selectedIndex + 1;
        update(['search']);
      }
      if (selectedIndex > 5) {
        scroll.animateTo(offset + 70,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    }
  }
}

class SearchMenuTile extends StatelessWidget {
  const SearchMenuTile(
      {super.key,
      this.isPrifixIcon = false,
      this.selected = false,
      this.onChanged,
      this.height = 50,
      this.width,
      this.searchListLength = 100,
      this.hintText,
      this.icon,
      this.margin = const EdgeInsets.only(bottom: 10),
      this.padding = CustomPadding.paddingV10H15,
      this.maxLength = 240,
      // required this.onDropDownTap,
      required this.onSearchListItemTap,
      required this.searchList,
      // this.searchDescriptionList,
      this.selectedItem});
  final double height;
  final double? width;
  final bool isPrifixIcon;
  final bool selected;

  // final void Function() onDropDownTap;
  final void Function(dynamic selectedData) onSearchListItemTap;
  final String? selectedItem;
  final List searchList;

  // final List? searchDescriptionList;
  final int maxLength;
  final int searchListLength;
  final String? hintText;
  final void Function(String)? onChanged;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final IconData? icon;

  // final List searchListUnit;
  // final String sample;

  @override
  Widget build(BuildContext context) {
    final searchController = Get.find<SearchController>();
    searchController.selectedIndex = -1;
    searchController.filterList.clear();
    for (var data in searchList) {
      searchController.filterList.add(data);
      if (searchController.filterList.length > Constant.menuListInitialLength) {
        break;
      }
    }
    final FocusNode focusNode = FocusNode();

    return RawKeyboardListener(
      // autofocus: true,
      focusNode: focusNode,
      onKey: (RawKeyEvent event) {
        searchController.handleKeyEvent(event, onSearchListItemTap,
            from: 'SEARCH-MENU-TILE');
      },
      child: ExpandedCardView(
        radius: 8,
        color: white,
        margin: margin,
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              // onTap: onDropDownTap,
              child: ExpandedCardView(
                padding: HorizontalPadding.paddingHorizontal10,
                radius: 10,
                // color: greesn,
                border: Border.all(color: borderColor, width: 1.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        isPrifixIcon
                            ? Row(
                                children: [
                                  Icon(
                                    icon,
                                    color: midGrey,
                                    size: 18,
                                  ),
                                  HorizontalSpace.horizontalSpaceW15
                                ],
                              )
                            : const SizedBox(),
                        SizedBox(
                          width: isTab(context)
                              ? Get.context!.width / 2 - 75
                              : Get.context!.width - 150,
                          child: TextField(
                              textCapitalization: TextCapitalization.sentences,
                              autofocus: true,
                              maxLength: maxLength,
                              decoration: InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                alignLabelWithHint: false,
                                hintText: hintText,
                                // hintStyle: text40.copyWith(color: midGrey),
                              ),
                              onSubmitted: (str) {
                                focusNode.addListener(() {});
                              },
                              onEditingComplete: () {
                                focusNode.addListener(() {});
                              },
                              // textInputAction: TextInputAction.next,
                              onChanged: (str) {
                                final searchController =
                                    Get.find<SearchController>();
                                searchController.selectedIndex = -1;
                                searchController.filterList.clear();
                                if (str == '') {
                                  for (var data in searchList) {
                                    searchController.filterList.add(data);
                                  }
                                } else {
                                  for (var data in searchList) {
                                    if (data.text
                                            .toString()
                                            .toLowerCase()
                                            .contains(str.toLowerCase()) ||
                                        data.textAr
                                            .toString()
                                            .toLowerCase()
                                            .contains(str.toLowerCase()) ||
                                        data.subText
                                            .toString()
                                            .toLowerCase()
                                            .contains(str.toLowerCase()) ||
                                        data.subTextAr
                                            .toString()
                                            .toLowerCase()
                                            .contains(str.toLowerCase())) {
                                      searchController.filterList.add(data);
                                    }
                                  }
                                }
                                searchController.update(['search']);
                              }),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.search,
                      color: midGrey,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
            VerticalSpace.verticalSpaceH5,
            SizedBox(
              height: height - 100,
              child: GetBuilder<SearchController>(
                  id: 'search',
                  builder: (searchController) {
                    return ListView.builder(
                        shrinkWrap: true,
                        controller: searchController.menuScrollController,
                        padding: const EdgeInsets.only(top: 10),
                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: searchController.filterList.length <
                                searchListLength
                            ? searchController.filterList.length
                            : searchListLength,
                        itemBuilder: (BuildContext c, int index) {
                          SearchAlertModel item =
                              searchController.filterList[index];
                          return InkWell(
                            onTap: () {
                              onSearchListItemTap(
                                  searchController.filterList[index]);
                            },
                            child: searchController.filterList[index].showInList
                                ? Container(
                                    // margin: VerticalPadding. paddingVertical5,
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 5),
                                    width: double.infinity,
                                    height: 60,
                                    color:
                                        searchController.selectedIndex == index
                                            ? blueColor
                                            : null,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(item.data.url,
                                                height: 25, width: 35),
                                            HorizontalSpace.horizontalSpaceW10,
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 7),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: isTab(context)
                                                        ? Get.context!.width /
                                                                2 -
                                                            100
                                                        : Get.context!.width -
                                                            160,
                                                    child: BodyText(
                                                        title: '01_rtl'.tr ==
                                                                'left'
                                                            ? item.text ?? ''
                                                            : item.textAr ??
                                                                item.text ??
                                                                '',
                                                        color: searchController
                                                                    .selectedIndex ==
                                                                index
                                                            ? white
                                                            : black),
                                                  ),
                                                  item.subText != null
                                                      ? SizedBox(
                                                          width: isTab(context)
                                                              ? Get.context!
                                                                          .width /
                                                                      2 -
                                                                  100
                                                              : Get.context!
                                                                      .width -
                                                                  160,
                                                          child: BodyText(
                                                              fontSize: 12,
                                                              title: '01_rtl'.tr ==
                                                                      'left'
                                                                  ? item.subText ??
                                                                      ''
                                                                  : item.subTextAr ??
                                                                      item
                                                                          .subText ??
                                                                      '',
                                                              color: searchController
                                                                          .selectedIndex ==
                                                                      index
                                                                  ? white
                                                                  : midGrey),
                                                        )
                                                      : empty,
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                            // indent: 30,
                                            height: 1,
                                            // thickness: ,
                                            color: searchController
                                                        .selectedIndex ==
                                                    index
                                                ? white
                                                : const Color(0x80D8E3F2)),
                                      ],
                                    ),
                                  )
                                : empty,
                          );
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
