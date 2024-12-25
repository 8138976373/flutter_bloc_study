import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/languages/language_controller.dart';

class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;

  const AnimatedToggle({
    super.key,
    required this.values,
    required this.onToggleCallback,
    this.backgroundColor = const Color(0xFF767676),
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
  });
  @override
  // ignore: library_private_types_in_public_api
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle> {
  bool initialPosition = true;
  @override
  void initState() {
    super.initState();
    final language = Get.find<LanguageController>().languageId;
    if (language == 1) {
      initialPosition = true;
    } else {
      initialPosition = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: const EdgeInsets.all(3),
      width: Get.width > 500 ? 200 : 80,
      height: Get.width > 500 ? 40 : 30,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0)),
        border: Border.all(
          color: const Color(0xffEFF5F9),
          style: BorderStyle.solid,
          width: 0,
        ),
      ),
      child: Stack(
        children: <Widget>[
          InkWell(
            onTap: () {
              initialPosition = !initialPosition;
              var index = 0;
              if (!initialPosition) {
                index = 1;
              }
              widget.onToggleCallback(index);
              setState(() {});
            },
            child: Container(
              width: Get.width > 500 ? 200 : 130,
              height: Get.width > 500 ? 40 : 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                //color: Colors.red.shade100,
                // color: widget.backgroundColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  widget.values.length,
                  (index) => Text(
                    initialPosition ? widget.values[0] : widget.values[1],
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF767676),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment:
                initialPosition ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: Get.width > 500 ? 100 : 40,
              height: Get.width > 500 ? 40 : 30,
              decoration: ShapeDecoration(
                color: const Color(0xff2DA1DB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                initialPosition ? widget.values[1] : widget.values[0],
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: widget.textColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
