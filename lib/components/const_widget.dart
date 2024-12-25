import 'package:flutter/material.dart';

class HorizontalSpace {
  static const horizontalSpaceW5 = SizedBox(
    width: 5,
  );
  static const horizontalSpaceW10 = SizedBox(
    width: 10,
  );
  static const horizontalSpaceW15 = SizedBox(
    width: 15,
  );
  static const horizontalSpaceW20 = SizedBox(
    width: 20,
  );
  static const horizontalSpaceW30 = SizedBox(
    width: 30,
  );
  static const horizontalSpaceW40 = SizedBox(
    width: 40,
  );
  static const horizontalSpaceW50 = SizedBox(
    width: 50,
  );
}

class HorizontalPadding {
  static const EdgeInsetsGeometry paddingHorizontal10 =
      EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsetsGeometry paddingHorizontal20 =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsetsGeometry paddingHorizontal30 =
      EdgeInsets.symmetric(horizontal: 50);
  static const EdgeInsetsGeometry paddingHorizontal50 =
      EdgeInsets.symmetric(horizontal: 50);
  static const EdgeInsetsGeometry paddingHorizontal15 =
      EdgeInsets.symmetric(horizontal: 15);

  static const EdgeInsetsGeometry paddingHorizontal5 =
      EdgeInsets.symmetric(horizontal: 5);
}

class VerticalSpace {
  static const verticalSpaceH5 = SizedBox(
    height: 5,
  );
  static const verticalSpaceH8 = SizedBox(
    height: 8,
  );
  static const verticalSpaceH10 = SizedBox(
    height: 10,
  );
  static const verticalSpaceH20 = SizedBox(
    height: 20,
  );
  static const verticalSpaceH15 = SizedBox(
    height: 15,
  );
  static const verticalSpaceH30 = SizedBox(
    height: 30,
  );
  static const verticalSpaceH50 = SizedBox(
    height: 50,
  );
  static const verticalSpaceH70 = SizedBox(
    height: 70,
  );
  static const verticalSpaceH100 = SizedBox(
    height: 100,
  );
}

class VerticalPadding {
  static const EdgeInsetsGeometry paddingVertical10 =
      EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsetsGeometry paddingVertical20 =
      EdgeInsets.symmetric(vertical: 20);
  static const EdgeInsetsGeometry paddingVertical5 =
      EdgeInsets.symmetric(vertical: 5);
}

class CustomPadding {
  static const EdgeInsetsGeometry padding20 = EdgeInsets.all(20);
  static const EdgeInsetsGeometry padding10 = EdgeInsets.all(10);
  static const EdgeInsetsGeometry padding12 = EdgeInsets.all(12);
  static const EdgeInsetsGeometry padding15 = EdgeInsets.all(15);
  static const EdgeInsetsGeometry padding5 = EdgeInsets.all(5);
  static const EdgeInsetsGeometry padding8 = EdgeInsets.all(8);
  static const EdgeInsetsGeometry padding0 = EdgeInsets.all(0);

  static const EdgeInsetsGeometry paddingV5H10 =
      EdgeInsets.symmetric(vertical: 5, horizontal: 10);
  static const EdgeInsetsGeometry paddingV5H15 =
      EdgeInsets.symmetric(vertical: 5, horizontal: 15);

  static const EdgeInsetsGeometry paddingV10H15 =
      EdgeInsets.symmetric(vertical: 10, horizontal: 15);
  static const EdgeInsetsGeometry paddingV20H10 =
      EdgeInsets.symmetric(vertical: 20, horizontal: 10);
  static const EdgeInsetsGeometry paddingV12H20 =
      EdgeInsets.symmetric(vertical: 12, horizontal: 20);
  static const EdgeInsetsGeometry paddingV5H20 =
      EdgeInsets.symmetric(vertical: 5, horizontal: 20);
  static const emptyZero = SizedBox(width: 0, height: 0);

  static const EdgeInsetsGeometry paddingV8H20 =
      EdgeInsets.symmetric(vertical: 8, horizontal: 20);
  static const EdgeInsetsGeometry paddingV10H20 =
      EdgeInsets.symmetric(vertical: 10, horizontal: 20);
  static const EdgeInsetsGeometry paddingV15H20 =
      EdgeInsets.symmetric(vertical: 15, horizontal: 20);
}

class BottomSpace {
  static const EdgeInsetsGeometry paddingBottom10 = EdgeInsets.only(bottom: 10);
}

const empty = SizedBox();

double appBarHeight = AppBar().preferredSize.height;
