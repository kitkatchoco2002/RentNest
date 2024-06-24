import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';

class RRoundedContainer extends StatelessWidget {
  const RRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = RSizes.cardRadiusLg,
    this.margin,
    this.padding,
    this.child,
    this.showBorder = false,
    this.borderColor = RColors.borderPrimary,
    this.backgroundColor = RColors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
