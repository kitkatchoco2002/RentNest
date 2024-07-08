import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/brands/brand_showcase.dart';
import 'package:rentnest/commons/widgets/layouts/grid_layout.dart';
import 'package:rentnest/commons/widgets/products/product_cards/product_card_vertical.dart';
import 'package:rentnest/commons/widgets/texts/section_headings.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:flutter/src/widgets/framework.dart';

class RCategoryTab extends StatelessWidget {
  const RCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
      Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          children: [
            //--BRANDS
            const RBrandShowcase(
              images: [RImages.product1, RImages.product2, RImages.product3],
            ),
            //--PRODUCTS
            RSectionHeading(title: "You might like", onPressed: () {}),
            const SizedBox(height: RSizes.spaceBtwnItms),

            RGridLayout(
                itemCount: 6, itemBuilder: (_, index) => RProductCardVertical())
          ],
        ),
      )
    ]);
  }
}
