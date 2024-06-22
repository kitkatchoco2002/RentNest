import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RLoginFormDivider extends StatelessWidget {
  const RLoginFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkmode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? RColors.darkergrey : RColors.grey,
          thickness: 1,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: dark ? RColors.darkergrey : RColors.grey,
          thickness: 1,
          indent: 5,
          endIndent: 60,
        ))
      ],
    );
  }
}
