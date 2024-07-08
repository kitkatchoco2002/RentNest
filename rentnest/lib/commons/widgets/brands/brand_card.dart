import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/rounded_container.dart';
import 'package:rentnest/commons/widgets/images/circular_image.dart';
import 'package:rentnest/commons/widgets/texts/brand_title_with_verification.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/enums.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RBrandCard extends StatelessWidget {
  const RBrandCard({
    super.key, required this.showBorder, this.ontap,
  });

  final bool showBorder;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: RRoundedContainer(
        padding: const EdgeInsets.all(RSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //-- Icon
            Flexible(
              child: RCircularImage(
                image: RImages.apartment,
                backgroundColor: Colors.transparent,
                overlayColor:
                    RHelperFunctions.isDarkmode(context)
                        ? RColors.white
                        : RColors.black,
              ),
            ),
            const SizedBox(
                width: RSizes.spaceBtwnItms / 2),
    
            // -TEXT
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const RBrandTitleWithVerifiedIcon(
                      title: "XYZ Rentals",
                      brandTextSize: TextSizes.large),
                  Text(
                    "26 units",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
