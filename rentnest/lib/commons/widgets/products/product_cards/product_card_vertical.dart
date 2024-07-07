import 'package:flutter/material.dart';
import 'package:rentnest/commons/styles/shadows.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/rounded_container.dart';
import 'package:rentnest/commons/widgets/icons/circular_icon.dart';
import 'package:rentnest/commons/widgets/images/rounded_image.dart';
import 'package:rentnest/commons/widgets/products/product_cards/product_price.dart';
import 'package:rentnest/commons/widgets/texts/brand_title_with_verification.dart';
import 'package:rentnest/commons/widgets/texts/product_title_text.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/enums.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RProductCardVertical extends StatelessWidget {
  const RProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkmode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [RShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(RSizes.productImageRadius),
            color: dark ? RColors.darkergrey : RColors.white),
        child: Column(
          children: [
            /// THUMBNAIL,  WISHLIST BUTTON, DISCOUN TAG
            RRoundedContainer(
              // height: 150,
              padding: const EdgeInsets.all(RSizes.xs),
              backgroundColor: dark ? RColors.black : RColors.light,
              child: Stack(
                children: [
                  /// -- thumbnail image
                  const RRoundedImage(
                      imageURL: RImages.product1, applyImageRadius: true),

                  /// -- Sale tag
                  Positioned(
                    top: 10,
                    child: RRoundedContainer(
                      radius: RSizes.sm,
                      backgroundColor: RColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: RSizes.sm, vertical: RSizes.xs),
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

            const SizedBox(height: RSizes.spaceBtwnItms),

            ///  -- DETAILS
            const Padding(
              padding: EdgeInsets.only(left: RSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RProductText(title: 'Apartment for Rent'),

                  SizedBox(height: RSizes.spaceBtwnItms / 2),

                  //SHOP NAME
                  RBrandTitleWithVerifiedIcon(title: 'XYZ Rentals',),
                ],
              ),
            ),
            const Spacer(),

            /// PRICE ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //PRICE
                const Padding(
                  padding: EdgeInsets.only(left: RSizes.sm),
                  child: RProductPrice(price: '1500 '),
                ),

                //ADD TO CART BUTTON
                Container(
                  decoration: const BoxDecoration(
                      color: RColors.secondary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(RSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(RSizes.productImageRadius))),
                  child: SizedBox(
                      width: RSizes.iconLg * 1.2,
                      height: RSizes.iconLg * 1.2,
                      child: Icon(
                        Icons.add,
                        color: dark ? RColors.black : RColors.white,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


