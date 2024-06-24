import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/circular_container.dart';
import 'package:rentnest/commons/widgets/images/rounded_image.dart';
import 'package:rentnest/features/shop/controllers/home_controller.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RPromoSlider extends StatelessWidget {
  const RPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((e) => RRoundedImage(imageURL: e, applyImageRadius: true, fit: BoxFit.fill, width: RHelperFunctions.screenSizeWidth() * 0.8,),).toList(),
        ),
        const SizedBox(height: RSizes.spaceBtwnItms),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                RCircularContainer(
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? RColors.secondary
                      : RColors.grey,
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}
