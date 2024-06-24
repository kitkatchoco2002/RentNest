import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RCircularIcon extends StatelessWidget {
  const RCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = RSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? (RHelperFunctions.isDarkmode(context)? RColors.black.withOpacity(0.9): RColors.white.withOpacity(0.9)),
      ),
      child: IconButton(onPressed: onPressed,icon: Icon(icon, color: color, size: size,)),
    );
  }
}
