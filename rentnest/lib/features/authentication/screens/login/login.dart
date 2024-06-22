import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/commons/styles/spacing_styles.dart';
import 'package:rentnest/commons/widgets/login_signup/form_divider.dart';
import 'package:rentnest/commons/widgets/login_signup/social_buttons.dart';
import 'package:rentnest/features/authentication/screens/login/widgets/login_form.dart';
import 'package:rentnest/features/authentication/screens/login/widgets/login_header.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // final dark = RHelperFunctions.isDarkmode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: RSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Headline part Logo, Title, Subtitle
              RLoginHeader(),

              ///FORM
              RLoginForm(),

              ///Divider
              RLoginFormDivider(dividerText: RTexts.orSignInWith.capitalize!,),

              ///FOOTER
              const RSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}




