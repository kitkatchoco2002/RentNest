import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:rentnest/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rentnest/features/authentication/screens/onboarding/widgets/on_boarding_button.dart';
import 'package:rentnest/features/authentication/screens/onboarding/widgets/on_boarding_navigation.dart';
import 'package:rentnest/features/authentication/screens/onboarding/widgets/on_boarding_page.dart';
import 'package:rentnest/features/authentication/screens/onboarding/widgets/on_boarding_skip.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: RImages.onboardingImage1,
                title: RTexts.onBoardingTitle1,
                subTitle: RTexts.onBoardingTSubitle1,
              ),
              OnBoardingPage(
                image: RImages.onboardingImage2,
                title: RTexts.onBoardingTitle2,
                subTitle: RTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: RImages.onboardingImage3,
                title: RTexts.onBoardingTitle3,
                subTitle: RTexts.onBoardingSubTitle3,
              )
            ],
          ),

          // Skip BUtton
          const OnBoardingSkip(),

          //Dot Navigation Smooth page indicator
          const OnBoardingNavigation(),

          // Circular button
          const OnBoardingButton(),
        ],
      ),
    );
  }
}

