import 'package:flutter/material.dart';
import 'package:rentnest/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/device/device_utility.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Positioned(
        bottom: RDeviceUtils.navigationBarHeight() * 0.5,
        right: RSizes.defaultSpace,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
         
      ),
      child: const Icon(Icons.arrow_forward_ios),
    ));
  }
}
