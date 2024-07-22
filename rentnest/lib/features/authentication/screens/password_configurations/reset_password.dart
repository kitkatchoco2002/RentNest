import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear, color: Theme.of(context).iconTheme.color,))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              ///IMAGE
              Align(alignment: Alignment.topCenter,child: Image(image: const AssetImage(RImages.deliverImage),height: RHelperFunctions.screenSizeHeight()*0.4, width: RHelperFunctions.screenSizeWidth()  )),
              const SizedBox(height: RSizes.spaceBtwnSections,),

              ///TITLE&SUBTITLE
              Text(RTexts.changePassTitle.capitalize!, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: RSizes.spaceBtwnItms),
              Text(RTexts.changePassSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: RSizes.spaceBtwnSections),

              ///BUTTONS
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(RTexts.rContinue)),),
              const SizedBox(height: RSizes.spaceBtwnItms),
              TextButton(onPressed: (){}, child: const Text(RTexts.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
