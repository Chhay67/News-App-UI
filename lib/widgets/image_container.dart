import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    this.height = 125,
    required this.width,
    required this.imageUrl,
    this.padding,
    this.margin,
    this.child,
    this.borderTopRadius = 0.0,
    this. borderBottomRadius = 0.0,
    Key? key,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderBottomRadius;
  final double? borderTopRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(borderTopRadius!),
              topLeft: Radius.circular(borderTopRadius!),
              bottomLeft: Radius.circular(borderBottomRadius!),
              bottomRight: Radius.circular(borderBottomRadius!)),
          image: DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
      child: child,
    );
  }
}