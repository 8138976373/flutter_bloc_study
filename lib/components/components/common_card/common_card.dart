import '/utils/const/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/theme.dart';
import '../../const_widget.dart';

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    this.height,
    this.width = 250,
    this.clipBehavior = Clip.none,
    this.border,
    this.borderRadius,
    this.margin,
    this.color,
    this.radius = Constant.cardRadius,
    this.boxShadow,
    this.child,
    this.padding = CustomPadding.padding20,
    this.constraints,
    this.onTap,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double radius;
  final double width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Clip clipBehavior;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final BoxConstraints? constraints;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {},
      hoverColor: Theme.of(context).colorScheme.primary,
      child: Container(
        // clipBehavior: clipBehavior,
        padding: padding,
        margin: margin,
        height: height,
        width: width,
        constraints: constraints,
        decoration: BoxDecoration(
            border: border,
            color: color ?? Theme.of(context).cardColor,
            //Theme.of(context).cardColor,
            borderRadius: borderRadius ?? BorderRadius.circular(radius),
            boxShadow: boxShadow ?? []),
        child: child,
      ),
    );
  }
}

class AnimatedCardView extends StatelessWidget {
  const AnimatedCardView({
    super.key,
    this.height = 105,
    this.width = 250,
    this.duration = const Duration(milliseconds: 100),
    this.border,
    this.margin,
    this.color,
    this.hoverColor,
    this.clipBehavior = Clip.antiAlias,
    this.radius = Constant.cardRadius,
    this.boxShadow,
    this.constraints,
    this.child,
    this.padding = CustomPadding.padding20,
    this.onTap,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final BoxConstraints? constraints;
  final double? height;
  final double radius;
  final BoxBorder? border;
  final double width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Color? hoverColor;
  final Clip clipBehavior;
  final Duration duration;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> onHover = ValueNotifier(false); //
    return ValueListenableBuilder<bool>(
        valueListenable: onHover,
        builder: (context, isHovered, _) {
          return InkWell(
            onTap: onTap,
            onHover: (value) {
              onHover.value = value; // Update hover state
            },
            // hoverColor: Theme.of(context).colorScheme.primary,
            child: AnimatedContainer(
              // width: isHovered ? (width + 50) : width,
              width: width,
              duration: duration,
              clipBehavior: clipBehavior,
              curve: Curves.easeInOut,
              padding: padding,
              margin: margin,
              constraints: constraints,
              height: isHovered ? (height ?? context.height) + 3 : height,
              // width: width,
              decoration: BoxDecoration(
                  border: border,
                  color: isHovered
                      ? hoverColor ?? Theme.of(context).colorScheme.primary
                      : color ?? Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(radius),
                  boxShadow: boxShadow ?? []),
              child: isHovered ? child : child,
            ),
          );
        });
  }
}

class ContainerBns extends StatelessWidget {
  const ContainerBns({
    super.key,
    this.height,
    this.width,
    this.clipBehavior = Clip.none,
    this.border,
    this.borderRadius,
    this.margin,
    this.color = white,
    this.radius = 8,
    this.boxShadow,
    this.child,
    this.padding,
    this.constraints,
    this.decoration,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double radius;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Clip clipBehavior;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final BoxConstraints? constraints;
  final Decoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: clipBehavior,
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      constraints: constraints,
      decoration: decoration ??
          BoxDecoration(
            border: border ?? Border.all(color: borderColor),
            color: color,
            //Theme.of(context).cardColor,
            borderRadius: borderRadius ?? BorderRadius.circular(radius),
            boxShadow: boxShadow ??
                [
                  const BoxShadow(
                    color: lightBlueBns,
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  )
                ],
          ),
      child: child,
    );
  }
}

class ExpandedCardView extends StatelessWidget {
  const ExpandedCardView({
    super.key,
    this.height,
    // this.width = 250,
    this.border,
    this.margin,
    this.color,
    this.clipBehavior = Clip.none,
    this.radius = Constant.cardRadius,
    this.boxShadow,
    this.constraints,
    this.child,
    this.padding = CustomPadding.padding20,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final BoxConstraints? constraints;
  final double? height;
  final double radius;
  final BoxBorder? border;
  // final double width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Clip clipBehavior;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: clipBehavior,
      padding: padding,
      margin: margin,
      constraints: constraints,
      height: height,
      // width: width,
      decoration: BoxDecoration(
          border: border,
          color: color ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: child,
    );
  }
}

class ExpandedAnimatedCardView extends StatelessWidget {
  const ExpandedAnimatedCardView({
    super.key,
    this.height,
    // this.width = 250,
    this.duration = const Duration(seconds: 5),
    this.border,
    this.margin,
    this.color,
    this.clipBehavior = Clip.none,
    this.radius = Constant.cardRadius,
    this.boxShadow,
    this.constraints,
    this.child,
    this.padding = CustomPadding.padding10,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final BoxConstraints? constraints;
  final double? height;
  final double radius;
  final BoxBorder? border;
  // final double width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;
  final Clip clipBehavior;
  final Duration duration;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      clipBehavior: clipBehavior, curve: Curves.bounceIn,
      padding: padding,
      margin: margin,
      constraints: constraints,
      height: height,
      // width: width,
      decoration: BoxDecoration(
          border: border,
          color: color ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? []),
      child: child,
    );
  }
}

class SpinnerCardView extends StatelessWidget {
  const SpinnerCardView({
    super.key,
    this.height,
    this.width = 250,
    this.margin,
    this.color,
    this.radius = 5,
    this.boxShadow,
    this.child,
    this.padding = EdgeInsets.zero,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry padding;
  final double? height;
  final double radius;
  final double width;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: boxShadow ?? kElevationToShadow[4]),
      child: child,
    );
  }
}
