import 'package:flutter/material.dart';
import 'package:rentnest/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: RDeviceUtils.getAppBarHeight(),
        right: RSizes.spaceBtwnItms,
        child: TextButton(
          onPressed: () {OnBoardingController.instance.skiptPage();},
          child: const Text("skip"),
        ));
  }
}
