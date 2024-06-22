import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/commons/styles/spacing_styles.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: RSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///IMAGE
              Align(alignment: Alignment.topCenter,child: Image(image: AssetImage(image),height: RHelperFunctions.screenSizeHeight()*0.4, width: RHelperFunctions.screenSizeWidth() * 0.6 )),
              const SizedBox(height: RSizes.spaceBtwnSections,),

              ///TITLE&SUBTITLE
              Text(title.capitalize!, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: RSizes.spaceBtwnItms),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: RSizes.spaceBtwnSections),

              ///BUTTONS
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(RTexts.rContinue)),),
            ],
          ),
        ),
      ),
    );
  }
}
