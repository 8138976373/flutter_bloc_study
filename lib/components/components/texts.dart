import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../theme/theme.dart';

class TextTile extends StatelessWidget {
  const TextTile({
    super.key,
    required this.text,
    this.textAlign,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 14,
    this.color = textColorBlack,
    this.decorationColor = blueColor,
    this.maxLines,
    this.overflow = TextOverflow.visible,
    this.decoration = TextDecoration.none,
  });
  final String text;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final Color decorationColor;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontFamily: 'Poppins',
        fontSize: fontSize,
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
      ),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class ReadMoreTextTile extends StatelessWidget {
  const ReadMoreTextTile(
      {super.key,
      required this.text,
      this.trimCollapsedText = 'Show more',
      this.trimExpandedText = 'Show less',
      this.fontWeight = FontWeight.w400,
      this.fontSize = 14,
      this.color = midGrey,
      this.trimLines = 3,
      this.decoration});
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextDecoration? decoration;
  final int trimLines;
  final String trimCollapsedText;
  final String trimExpandedText;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: trimLines,
      colorClickableText: Colors.pink,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      style: TextStyle(
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
          fontSize: fontSize,
          color: color),
      moreStyle: TextStyle(
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
          fontSize: 13,
          color: Colors.pink),
    );
  }
}

textSpanNormal(
    {required final String text,
    final FontWeight fontWeight = FontWeight.w400,
    final double fontSize = 14,
    final Color color = textColorBlack,
    final TextDecoration? decoration,
    required List<InlineSpan>? children}) {
  TextSpan(
    text: text,
    children: const <InlineSpan>[
      TextSpan(
        text: 'Widget in flutter',
      ),
      TextSpan(
        text: 'Widget in flutter',
      )
    ],
    style: TextStyle(
      fontWeight: fontWeight,
      fontFamily: 'Poppins',
      fontSize: fontSize,
      color: color,
      decoration: decoration,
    ),
  );
}

class TextTilePrint extends StatelessWidget {
  const TextTilePrint({
    super.key,
    required this.title,
    this.textAlign,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 14,
    this.color = textColorBlack,
    this.maxLines,
    this.overflow = TextOverflow.visible,
    this.decoration = TextDecoration.none,
  });
  final String title;
  final TextAlign? textAlign;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontFamily: 'Poppins',
        fontSize: fontSize,
        color: black,
        decoration: decoration,
      ),
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

class TextGrey15 extends StatelessWidget {
  const TextGrey15({
    super.key,
    required this.title,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 15,
    this.color = textColorGrey,
  });
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
          fontSize: fontSize,
          color: color),
    );
  }
}

class TitleTile extends StatelessWidget {
  const TitleTile({
    super.key,
    required this.title,
    this.style,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 24,
    this.color = textColorBlack,
  });
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style ??
          TextStyle(
              fontWeight: fontWeight,
              fontFamily: 'Poppins',
              fontSize: fontSize,
              color: color),
    );
  }
}

class TextGrey extends StatelessWidget {
  const TextGrey({
    super.key,
    required this.title,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 12,
    this.textAlign = TextAlign.start,
    this.color = textColorGrey,
  });
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
          fontSize: fontSize,
          color: color),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(
      {super.key,
      required this.title,
      this.color,
      this.fontSize = 16,
      this.padding = 0,
      this.textAlign});
  final String title;
  final double? padding;
  final TextAlign? textAlign;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: Text(
        title,
        textAlign: textAlign,
        style: color == null && fontSize == null
            ? Theme.of(context).textTheme.titleMedium
            : fontSize == null
                ? Theme.of(context).textTheme.titleLarge!.copyWith(color: color)
                : color == null
                    ? Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: fontSize,
                        )
                    : Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: fontSize, color: color),
      ),
    );
  }
}

class SubTitleText extends StatelessWidget {
  const SubTitleText(
      {super.key,
      required this.title,
      this.padding = 0,
      this.textAlign,
      this.maxLines,
      this.color});
  final String title;
  final double? padding;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: Text(
        title,
        textAlign: textAlign,
        maxLines: maxLines,
        style: color == null
            ? Theme.of(context).textTheme.titleMedium
            : Theme.of(context).textTheme.titleMedium!.copyWith(color: color),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText(
      {super.key,
      required this.title,
      this.padding = 0,
      this.textAlign,
      this.color});
  final String title;
  final double? padding;
  final TextAlign? textAlign;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: Text(title,
          textAlign: textAlign,
          style: color == null
              ? Theme.of(context).textTheme.bodySmall!
              : Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: color)),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({
    super.key,
    required this.title,
    this.padding = 0,
    this.textAlign,
    this.color,
    this.fontSize,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
  });
  final String title;
  final double? padding;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: Text(
        title,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: color == null && fontSize == null
            ? Theme.of(context).textTheme.bodyMedium
            : fontSize == null
                ? Theme.of(context).textTheme.bodyMedium!.copyWith(color: color)
                : color == null
                    ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: fontSize,
                        )
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: fontSize, color: color),
      ),
    );
  }
}

class BodyDescriptionText extends StatelessWidget {
  const BodyDescriptionText(
      {super.key,
      required this.title,
      this.padding = 0,
      this.textAlign,
      this.maxLines,
      this.color});
  final String title;
  final double? padding;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: Text(title,
          textAlign: textAlign,
          maxLines: maxLines,
          style: color == null
              ? Theme.of(context).textTheme.bodySmall!
              : Theme.of(context).textTheme.bodySmall!.copyWith(color: color)),
    );
  }
}

class BodyTextWithPadding extends StatelessWidget {
  const BodyTextWithPadding({
    super.key,
    required this.title,
    this.padding,
    this.textAlign,
    this.color,
    this.fontSize,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
  });
  final String title;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(title,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          style: color == null && fontSize == null
              ? Theme.of(context).textTheme.bodyMedium
              : fontSize == null
                  ? Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: color)
                  : color == null
                      ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: fontSize,
                          )
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: fontSize, color: color)),
    );
  }
}

class EmojiText extends StatelessWidget {
  const EmojiText({super.key, required this.emoji});
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return TitleTile(
      title: emoji,
      fontSize: 16,
      // style: TextStyle(),
    );
  }
}
