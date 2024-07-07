import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/device/device_utility.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RSearchContainer extends StatelessWidget {
  const RSearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search_rounded,
    this.showBackground = true,
    this.showBorder = true,
    this.padding =  const EdgeInsets.symmetric(horizontal: RSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkmode(context);
    return Padding(
      padding:padding,
      child: Container(
        width: RDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(RSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? RColors.dark
                    : RColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(RSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: RColors.grey) : null),
        child: Row(
          children: [
            Icon(icon, color: RColors.darkergrey),
            const SizedBox(width: RSizes.spaceBtwnItms),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
