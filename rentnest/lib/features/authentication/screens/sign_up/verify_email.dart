import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:rentnest/commons/widgets/success_screen/success_screen.dart';
import 'package:rentnest/features/authentication/screens/login/login.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              
              ///IMAGE
              const Image(image: AssetImage(RImages.deliverImage)),

              const SizedBox(height: RSizes.spaceBtwnSections),

              ///TITLE & SUBTITLE
              Text(
                RTexts.confirmEmail.capitalize!,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center
              ),

              const SizedBox(height: RSizes.spaceBtwnItms),

              Text(
                RTexts.confirmEmailSubTitle.capitalize!,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: RSizes.spaceBtwnSections),

              ///BUTTONS
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: RImages.verified,
                          title: RTexts.yourAccCreatedTitle,
                          subTitle: RTexts.yourAccCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(RTexts.rContinue)),
              ),

              const SizedBox(height: RSizes.spaceBtwnItms),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(RTexts.resendEmail)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
