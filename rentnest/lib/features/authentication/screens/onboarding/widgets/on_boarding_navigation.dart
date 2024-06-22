import 'package:flutter/material.dart';
import 'package:rentnest/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/device/device_utility.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = RHelperFunctions.isDarkmode(context);

    return Positioned(
      bottom: RDeviceUtils.navigationBarHeight(),
      left: RSizes.spaceBtwnItms,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? RColors.light : RColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
