import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:rentnest/features/authentication/screens/sign_up/verify_email.dart';
import 'package:rentnest/features/authentication/screens/sign_up/widgets/terms_condition_checkox.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class RSignUpForm extends StatefulWidget {
  const RSignUpForm({
    super.key,
  });

  @override
  State<RSignUpForm> createState() => _RSignUpFormState();
}

class _RSignUpFormState extends State<RSignUpForm> {
  
  bool isObscure = true;
  @override
  

  Widget build(BuildContext context) {
    return Form(
      child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                  labelText: RTexts.firstname.capitalize,
                  prefixIcon:  const Icon(Icons.person_sharp)),
            )),
             const SizedBox(width: RSizes.spaceBetweenInputFields),
             Expanded(
                child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                  labelText: RTexts.lastname.capitalize,
                  prefixIcon: const Icon(Icons.person_sharp)),
            ))
          ],
        ),
        
        const SizedBox(height: RSizes.spaceBetweenInputFields,),
    
        ///USERNAME
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: RTexts.username, prefixIcon: Icon(Icons.account_circle) )
        ),
    
        const SizedBox(height: RSizes.spaceBetweenInputFields,),
    
        /// EMAIL
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: RTexts.email, prefixIcon: Icon(Icons.mail) )
        ),
    
        const SizedBox(height: RSizes.spaceBetweenInputFields,),
    
        ///PHONE NUMBER
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: RTexts.phoneNumber, prefixIcon: Icon(Icons.phone) )
        ),
    
        const SizedBox(height: RSizes.spaceBetweenInputFields,),
    
        ///Password
        TextFormField(
          obscureText: isObscure,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_outline_sharp),
              suffixIcon: GestureDetector(
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
         const SizedBox(height: RSizes.spaceBtwnSections,),
    
       /// TERMS AND CONDITION
         const RTermsAndConditionCheckBox(),
         const SizedBox(height: RSizes.spaceBtwnSections,),
    
         SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () => Get.to(()=>const VerifyEmailScreen()), child: const Text(RTexts.createAcc))),
      ],
    ));
  }
}

