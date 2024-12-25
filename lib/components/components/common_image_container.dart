import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../../utils/endpoints.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    this.height = 70,
    this.width = 75,
    this.margin,
    this.color,
    this.bgColor,
    this.fit = BoxFit.cover,
    this.url = EndPoints.imageUrlDummy,
    this.radius = 25,
    this.boxShadow,
    // this.child,
    this.padding,
    this.imagePadding,
    this.border,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? imagePadding;
  final double height;
  final double radius;
  final double width;
  final String url;
  final BoxFit? fit;
  final List<BoxShadow>? boxShadow;
  // final Widget? child;
  final Color? color;
  final Color? bgColor;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Container(
        margin: margin,
        height: height,
        padding: imagePadding,
        width: width,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            border: border,
            // image: const DecorationImage(image: NetworkImage( EndPoints.  imageUrlDummy,)),
            // color: color ? cardBlueColor,
            borderRadius: BorderRadius.circular(radius),
            color: bgColor ?? white,
            boxShadow: boxShadow ?? []),
        child: kIsWeb
            ? Image.network(
                url,
                fit: BoxFit.contain,
              )
            : CachedNetworkImage(
                height: height,
                width: width,
                fit: url == EndPoints.imageUrlDummy ? BoxFit.contain : fit,
                imageUrl: url,
                progressIndicatorBuilder: (context, url, downloadProgress) {
                  return Image.network(
                    EndPoints.imageUrlDummy,
                    fit: BoxFit.contain,
                  );
                },
                errorWidget: (context, url, error) => Image.network(
                  EndPoints.imageUrlDummy,
                  fit: BoxFit.contain,
                ),
              ),
      ),
    );
  }
}

class ImageContainerLocal extends StatelessWidget {
  const ImageContainerLocal({
    super.key,
    this.height = 70,
    this.width = 75,
    this.margin,
    this.color,
    this.bgColor,
    this.fit = BoxFit.cover,
    this.url = EndPoints.imageUrlDummy,
    this.radius = 25,
    this.boxShadow,
    // this.child,
    this.padding,
  });
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double height;
  final double radius;
  final double width;
  final String url;
  final BoxFit? fit;
  final List<BoxShadow>? boxShadow;
  // final Widget? child;
  final Color? color;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Container(
          margin: margin,
          height: height,
          width: width,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              // image: const DecorationImage(image: NetworkImage( EndPoints.  imageUrlDummy,)),
              // color: color ? cardBlueColor,
              borderRadius: BorderRadius.circular(radius),
              color: bgColor ?? white,
              boxShadow: boxShadow ?? []),
          child: Image.asset(
            url,
            fit: BoxFit.contain,
          )),
    );
  }
}
