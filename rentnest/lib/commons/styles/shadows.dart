import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';

class RShadowStyle {

  static final verticalProductShadow = BoxShadow(
    color: RColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: RColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}