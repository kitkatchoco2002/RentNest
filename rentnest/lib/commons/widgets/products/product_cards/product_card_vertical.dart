import 'package:flutter/material.dart';
import 'package:rentnest/commons/styles/shadows.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/rounded_container.dart';
import 'package:rentnest/commons/widgets/icons/circular_icon.dart';
import 'package:rentnest/commons/widgets/images/rounded_image.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RProductCardVertical extends StatelessWidget {
  const RProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkmode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [RShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(RSizes.productImageRadius),
          color: dark ? RColors.dark : RColors.white),
      child: Column(
        children: [
          /// THUMBNAIL,  WISHLIST BUTTON, DISCOUN TAG
          RRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(RSizes.sm),
            backgroundColor: dark ? RColors.dark : RColors.light,
            child: Stack(
              children: [
                /// -- thumbnail image
                const RRoundedImage(
                    imageURL: RImages.product1, applyImageRadius: true),

                /// -- Sale tag
                Positioned(
                  top: 12,
                  child: RRoundedContainer(
                    radius: RSizes.sm,
                    backgroundColor: RColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: RSizes.md, vertical: RSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: RColors.black)),
                  ),
                ),

                /// -- Favorite Icon Button
                Positioned(
                    top: 0,
                    right: 0,
                    child: RCircularIcon(
                      icon: Icons.favorite_rounded,
                      color: RHelperFunctions.getColor("red"),
                    ))
              ],
            ),
          ),

          ///  -- DETAILS
        ],
      ),
    );
  }
}
