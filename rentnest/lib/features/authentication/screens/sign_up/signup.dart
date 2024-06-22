import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/login_signup/form_divider.dart';
import 'package:rentnest/commons/widgets/login_signup/social_buttons.dart';
import 'package:rentnest/features/authentication/screens/sign_up/widgets/sign_up_form.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class SIgnUpScreen extends StatefulWidget {
  const SIgnUpScreen({super.key});

  @override
  State<SIgnUpScreen> createState() => _SIgnUpScreenState();
}

class _SIgnUpScreenState extends State<SIgnUpScreen> {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///title
              Text(RTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: RSizes.spaceBtwnSections),

              ///FORM
              const RSignUpForm(),

              const SizedBox(height: RSizes.spaceBtwnSections,),

              ///DIVIDER
              const RLoginFormDivider(dividerText: RTexts.orSignUpWith),

              const SizedBox(height: RSizes.spaceBtwnSections,),

              ///SOCIAL BUTTONS
              const RSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

