import '/components/const_widget.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';
import 'texts.dart';

class SecondaryTextView extends StatelessWidget {
  const SecondaryTextView({
    super.key,
    this.height = 50,
    this.width = 120,
    this.color,
    this.textColor,
    this.maxLines = 1,
    this.fontSize,
    this.text = '',
    this.radius = 8,
    this.boxShadow,
    this.textAlign,
    // this.child,
    this.padding = const EdgeInsets.only(
      left: 10,
      right: 10,
    ),
    this.margin = EdgeInsets.zero,
    this.mainAxisAlignment,
  });
  final double height;
  final double radius;
  final double width;
  final String text;
  final int? maxLines;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  // final Widget? child;
  final Color? color;
  final Color? textColor;
  final TextAlign? textAlign;
  final double? fontSize;
  final MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).cardColor,
          border: Border.all(width: 1.5, color: borderColor),
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        children: [
          Center(
            child: BodyText(
              color: textColor,
              fontSize: fontSize,
              maxLines: maxLines,
              textAlign: textAlign,
              title: text,
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandedTextView extends StatelessWidget {
  const ExpandedTextView({
    super.key,
    // this.height ,
    // this.width = 120,
    this.color,
    this.textColor,
    this.text = '',
    this.fontSize,
    this.radius = 8,
    this.boxShadow,
    this.child,
    this.padding = CustomPadding.padding10,
    this.margin = CustomPadding.padding5,
  });
  // final double height;
  final double radius;
  // final double width;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final String text;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      // height: height,
      // width: width,
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).cardColor,
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: Center(
          child: BodyText(
        fontSize: fontSize,
        color: textColor,
        title: text,
      )),
    );
  }
}

class FormattedText extends StatelessWidget {
  final String text;

  const FormattedText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _parseText(text),
        style: DefaultTextStyle.of(context).style,
      ),
    );
  }

  List<TextSpan> _parseText(String text) {
    List<TextSpan> spans = [];
    RegExp exp = RegExp(r'(\*[^*]*\*|_[^_]*_|~[^~]*~)');
    // RegExp exp = RegExp(r"(_[^_]+_|~[^~]+~|\*[^*]+\*|[^`]+)");
    Iterable<RegExpMatch> matches = exp.allMatches(text);
    int lastMatchEnd = 0;

    for (final match in matches) {
      if (match.start > lastMatchEnd) {
        spans.add(TextSpan(text: text.substring(lastMatchEnd, match.start)));
      }
      String matchText = match.group(0)!;
      if (matchText.startsWith('_')) {
        spans.add(TextSpan(
            text: matchText.substring(1, matchText.length - 1),
            style: const TextStyle(fontStyle: FontStyle.italic)));
      } else if (matchText.startsWith('*')) {
        spans.add(TextSpan(
            text: matchText.substring(1, matchText.length - 1),
            style: const TextStyle(fontWeight: FontWeight.bold)));
      } else if (matchText.startsWith('~')) {
        spans.add(TextSpan(
            text: matchText.substring(1, matchText.length - 1),
            style: const TextStyle(decoration: TextDecoration.lineThrough)));
      } else if (matchText.startsWith('')) {
        spans.add(TextSpan(
          text: matchText.substring(3, matchText.length - 3),
        ));
      }
      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd)));
    }

    return spans;
  }
}
