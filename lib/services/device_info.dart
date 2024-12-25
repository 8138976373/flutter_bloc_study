import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool isTab(BuildContext context) {
  return (context.mediaQuerySize.width > context.mediaQuerySize.height)
      ? true
      : false;
}

bool isTabWithoutGet(BuildContext context) {
  return (context.mediaQuerySize.width > context.mediaQuerySize.height)
      ? true
      : false;
}

bool isMobile(BuildContext context) {
  return (context.mediaQuerySize.width < context.mediaQuerySize.height);
}

bool isWeb() {
  return kIsWeb ? true : false;
}

bool isScreenAbove900(BuildContext context) {
  return context.mediaQuerySize.width > 900;
}

bool isScreenAbove600(BuildContext context) {
  return context.mediaQuerySize.width > 600;
}

bool isFullScreen(BuildContext context) {
  return context.mediaQuerySize.width > 900;
}

bool isScreenHightBelow600(BuildContext context) {
  return (context.mediaQuerySize.height < 600);
}

bool isScreenHightBelow800(BuildContext context) {
  return (context.mediaQuerySize.height < 800);
}

bool isScreenHightBelow700(BuildContext context) {
  return (context.mediaQuerySize.height < 700);
}
