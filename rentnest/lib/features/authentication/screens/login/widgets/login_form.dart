import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/features/authentication/screens/password_configurations/forget_password.dart';
import 'package:rentnest/features/authentication/screens/sign_up/signup.dart';
import 'package:rentnest/navigation_menu.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class RLoginForm extends StatefulWidget {
  const RLoginForm({
    super.key,
  });

  @override
  State<RLoginForm> createState() => _RLoginFormState();
}

class _RLoginFormState extends State<RLoginForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: RSizes.spaceBtwnSections),
      child: Column(
        children: [
          /// LOGIN
          TextFormField(
            decoration: const InputDecoration(
                prefix: Icon(Icons.email_outlined),
                labelText: RTexts.email,
                hintText: RTexts.hintEmail),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return RTexts.mustHaveEmail;
              }
              return null;
            },
          ),
          const SizedBox(
            height: RSizes.spaceBetweenInputFields,
          ),
    
          /// PASSWORD
          TextFormField(
            obscureText: isObscure,
            decoration: InputDecoration(
                prefix: const Icon(Icons.lock_outline_sharp),
                suffix: GestureDetector(
                  onTap: () {
                    setState((){
                    isObscure = !isObscure;
                    });
                  },
                  child: Icon(isObscure? Icons.visibility_off : Icons.visibility),
                  ),
                labelText: RTexts.password,
                hintText: RTexts.hintPass),
            
            validator: (value) {
              if (value == null || value.isEmpty) {
                return RTexts.mustHavePass;
              }
              return null;
            },
          ),

          const SizedBox(height: RSizes.spaceBetweenInputFields / 2),
    
          ///Remember me & Forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///Remember me
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(RTexts.rememberMe)
                ],
              ),
    
              /// Forget password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(RTexts.forgetPass)),
              const SizedBox(
                height: RSizes.spaceBtwnSections,
              ),
            ],
          ),
    
          ///Sign In Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(const NavigationMenu()),
                  child: const Text(RTexts.signIn))),
          const SizedBox(
            height: RSizes.spaceBtwnItms,
          ),
    
          ///Create Account Button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SIgnUpScreen()),
                  child: const Text(RTexts.createAcc)))
        ],
      ),
    ));
  }
}
