import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';

class RSocialButtons extends StatelessWidget {
  const RSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: RColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(RImages.google),
                width: RSizes.iconMd,
                height: RSizes.iconMd,
              )),
        ),
        const SizedBox(
            width: RSizes.spaceBtwnItms,
          ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: RColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(RImages.fb),
                width: RSizes.iconLg,
                height: RSizes.iconLg,
              )),
        )
      ],
    );
  }
}
