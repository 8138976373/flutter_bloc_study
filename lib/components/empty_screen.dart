import 'package:flutter/material.dart';
class EmptyScreen extends StatelessWidget {
  const EmptyScreen(
      {super.key,
      this.title,
      this.subTitle,
      this.height,
      this.width,
      this.imgHeight});
  final String? title;
  final String? subTitle;
  final double? width;
  final double? height;
  final double? imgHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ,
          // (isWebAppBar(context)
          //     ? context.height! - 300
          //     : isTab(context)
          //         ? Get.height - 90
          //         : Get.height - 85),
      width: width ,//?? Get.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // isWebAppBar2()
            //     ? ConstrainedBox(
            //         constraints:
            //             const BoxConstraints(maxHeight: 200, maxWidth: 200),
            //         child:
            //             Image.asset(AssetsUtils.noResultWeb, height: imgHeight))
            //     : Image.asset(AssetsUtils.noApi, height: imgHeight),
            // verticalSpaceH20,
            Text(
             title ?? 'no_record_found_label',
              // fontSize: 18,
              // fontWeight: FontWeight.w600,
            ),
            // verticalSpaceH15,
            // TextBns(
            //   title: subTitle ?? '',
            //   fontSize: 16,
            //   color: textColorGrey,
            // ),
          ],
        ),
      ),
    );
  }
}

