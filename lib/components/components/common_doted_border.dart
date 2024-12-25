import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class DottedLine extends StatelessWidget {
  const DottedLine(
      {super.key,
      this.height = 1.2,
      this.dashWidth = 5.0,
      this.color = borderColor});
  final double height;
  final Color color;
  final double dashWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
// class MySeparator extends StatelessWidget {
//   const MySeparator({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         CustomPaint(painter: DottedLinePainter()),
//       ],
//     );
//   }
// }

// class DottedLinePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     double dashWidth = 9, dashSpace = 5, startX = 0;
//     final paint = Paint()
//       ..color = Colors.grey
//       ..strokeWidth = 1;
//     while (startX < size.width) {
//       canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
//       startX += dashWidth + dashSpace;
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
