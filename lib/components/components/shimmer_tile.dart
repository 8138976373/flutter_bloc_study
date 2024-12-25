import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../theme/theme.dart';
import '../../utils/const/constant.dart';
import '../const_widget.dart';
import 'common_card/common_card.dart';

class ShimmerTile extends StatelessWidget {
  const ShimmerTile(
      {super.key,
      this.shimmerColor = lightAshGraph,
      this.highlightColor = borderColor,
      this.width = 200,
      this.height = 70,
      this.margin = VerticalPadding.paddingVertical5});
  final Color shimmerColor;
  final Color highlightColor;
  final double width;
  final double height;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: shimmerColor,
        highlightColor: highlightColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardView(
              radius: Constant.cardRadius,
              color: shimmerColor,
              width: width,
              height: 10,
            ),
            VerticalSpace.verticalSpaceH5,
            CardView(
              radius: Constant.cardRadius,
              color: shimmerColor,
              width: width,
              height: 10,
            ),
            VerticalSpace.verticalSpaceH5,
            CardView(
              radius: Constant.cardRadius,
              color: shimmerColor,
              width: 70,
              height: 10,
            ),
            // SizedBox(
            //   width: width,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       CardView(
            //         radius: cardRadius,
            //         color: shimmerColor,
            //         width: 100,
            //         height: 5,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ));
  }
}
