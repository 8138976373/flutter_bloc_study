import '/components/const_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'texts.dart';

class TimeComponent extends StatelessWidget {
  TimeComponent({
    super.key,
  });
  final String localCode = '01_rtl'.tr == 'left' ? 'en' : 'ar';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 1)),
        builder: (context, snapShot) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.timer_outlined,
                size: 25,
                // color: lightWhite70,
              ),
              HorizontalSpace.horizontalSpaceW5,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubTitleText(
                    title: DateFormat.jm().format(DateTime.now()),
                    // color: lightWhite70,
                  ),
                  BodyDescriptionText(
                      title:
                          DateFormat('yyyy-MM-dd', 'en').format(DateTime.now()))
                ],
              ),
            ],
          );
        });
  }
}
