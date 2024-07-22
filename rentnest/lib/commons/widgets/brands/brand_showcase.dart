import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/brands/brand_card.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/rounded_container.dart';
import 'package:rentnest/commons/widgets/images/rounded_image.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RBrandShowcase extends StatelessWidget {
  const RBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(RSizes.md),
      borderColor: RColors.darkgrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: RSizes.spaceBtwnItms),
      child: Column(
        children: [
          //--brand with total available units
          const RBrandCard(showBorder: false),
          //--Brand Top 3 units
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
            ,
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(RSizes.xs),
                  child: RRoundedImage(
                    height: 100,
                    backgroundColor: RHelperFunctions.isDarkmode(context) ? RColors.darkergrey: RColors.light,
                   imageURL: image,
                   applyImageRadius: true,
                  ),
                ),
              ); 
}