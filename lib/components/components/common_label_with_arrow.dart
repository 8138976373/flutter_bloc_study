import 'package:flutter/material.dart';
import '../const_widget.dart';

class LabelWithArrow extends StatelessWidget {
  const LabelWithArrow({
    super.key,
    required this.label,
    this.icon,
    this.onTap,
    // this.isIcon=true
  });
  final String? label;
  final IconData? icon;
  final void Function()? onTap;
  // final bool isIcon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label ?? '',
            style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          HorizontalSpace.horizontalSpaceW5,
          // RotatedBox(
          //   quarterTurns: 3,
          //   child: Image.asset(AssetsUtils.backArrow,
          //       color: Colors.white, height: 10, width: 10),
          // ),
        ],
      ),
    );
  }
}
