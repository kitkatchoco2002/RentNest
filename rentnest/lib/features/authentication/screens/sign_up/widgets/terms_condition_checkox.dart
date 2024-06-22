import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class RTermsAndConditionCheckBox extends StatelessWidget {
  const RTermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       SizedBox(height: RSizes.defaultSpace ,width: RSizes.defaultSpace,child: Checkbox(value: true, onChanged: (value) {},)),
       const SizedBox(width: RSizes.spaceBtwnItms,),
       Text.rich(
         TextSpan(children:[
           TextSpan(text: '${RTexts.iAgreeTo} ',style:Theme.of(context).textTheme.bodySmall),
           TextSpan(text: RTexts.privacyPolicy,style:Theme.of(context).textTheme.bodyMedium!.apply(decoration: TextDecoration.underline)),
           TextSpan(text: ' and ',style:Theme.of(context).textTheme.bodySmall),
            TextSpan(text: RTexts.termsOfUse,style:Theme.of(context).textTheme.bodyMedium!.apply(decoration: TextDecoration.underline)),
           ]))
     ],
    );
  }
}
