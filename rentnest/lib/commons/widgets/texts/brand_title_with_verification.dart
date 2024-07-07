import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/texts/brand_title.dart';
import 'package:rentnest/utils/constants/enums.dart';
import 'package:rentnest/utils/constants/sizes.dart';

class RBrandTitleWithVerifiedIcon extends StatelessWidget {
  const RBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign,
    this.textColor,
    this.iconColor = Colors.indigo,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final Color? textColor, iconColor;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: RBrandTitle(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: RSizes.xs),
        Icon(
          Icons.verified_rounded,
          color: iconColor,
          size: RSizes.iconSm,
        ),
      ],
    );
  }
}
