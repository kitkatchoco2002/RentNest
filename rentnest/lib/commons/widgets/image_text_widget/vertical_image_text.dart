import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RVerticalImageText extends StatelessWidget {
  const RVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = RColors.white,
    this.backgroundColor,
    this.ontap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkmode(context);

    return Padding(
      padding: const EdgeInsets.only(right: RSizes.spaceBtwnItms),
      child: GestureDetector(
        onTap: ontap,
        child: Column(
          children: [
            ///circular icon
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(RSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor?? (dark? RColors.black: RColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                    color: dark? RColors.light: RColors.dark),
              ),
            ),
        
            ///text
            const SizedBox(height: RSizes.spaceBtwnItms / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style:
                    Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
