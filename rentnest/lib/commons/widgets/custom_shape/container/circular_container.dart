import 'package:flutter/material.dart';

class RCircularContainer extends StatelessWidget {
  const RCircularContainer({
    super.key,
    this.width,
    this.height,
    this.radius = 100,
    this.padding = 0,
    this.child,
    required this.backgroundColor, 
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius; 
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
      ),
      child: child,
    );
  }
}
