import '/components/components/common_card/common_card.dart';
import '/components/const_widget.dart';
import '/utils/const/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/assets/image_assets.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen(
      {super.key, this.height, this.radius = Constant.cardRadius});
  final double radius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ExpandedAnimatedCardView(
      radius: Constant.cardRadius,
      height: height,
      clipBehavior: Clip.antiAlias,
      padding: CustomPadding.padding0,
      child: Image.asset(
        AssetsUtils.elayiLogoGiff,
        // height: height,
        width: 150,
        fit: BoxFit.fill,
      ),
    );
  }
}
