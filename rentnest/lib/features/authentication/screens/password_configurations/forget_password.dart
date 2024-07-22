import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/features/authentication/screens/password_configurations/reset_password.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(RSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text(RTexts.forgetPassTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: RSizes.spaceBtwnItms,),
            Text(RTexts.forgetPassSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: RSizes.spaceBtwnSections * 2,),

            /// Text Fields
            TextFormField(
              decoration: InputDecoration(labelText: RTexts.email, prefixIcon: Icon(CupertinoIcons.mail_solid, color: Theme.of(context).iconTheme.color,)),
            ),
            const SizedBox(height: RSizes.spaceBtwnSections),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => const ResetPassword()), child: const Text(RTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
