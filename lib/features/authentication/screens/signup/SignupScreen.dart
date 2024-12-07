import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:juvenile/features/authentication/screens/signup/verify_email.dart';
import 'package:juvenile/utils/constants/colors.dart';
import 'package:juvenile/utils/constants/enums.dart';
import 'package:juvenile/utils/constants/sizes.dart';
import 'package:juvenile/utils/constants/text_strings.dart';
import 'package:juvenile/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(JSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(JTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: JSizes.spaceBtwSections),
                Form(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: JTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(width: JSizes.spaceBtwItems),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: JTexts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: JSizes.spaceBtwItems),

                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: JTexts.email,
                          prefixIcon: Icon(Iconsax.direct)),
                    ),

                    const SizedBox(height: JSizes.spaceBtwItems),

                    TextFormField(
                      decoration: const InputDecoration(
                          labelText: JTexts.phoneNo,
                          prefixIcon: Icon(Iconsax.call)),
                    ),

                    const SizedBox(height: JSizes.spaceBtwItems),

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: JTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    const SizedBox(height: JSizes.spaceBtwItems),

                    /// Terms and conditions Checkbox
                    Row(
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child:
                                Checkbox(value: true, onChanged: (value) {})),
                        const SizedBox(height: JSizes.spaceBtwItems),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'I Agree to ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: JTexts.privacyPolicy,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                    color:
                                        dark ? JColors.white : JColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? JColors.white : JColors.primary,
                                  )),
                          TextSpan(
                              text: ' and ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                              text: JTexts.termsOfUse,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                    color:
                                        dark ? JColors.white : JColors.primary,
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        dark ? JColors.white : JColors.primary,
                                  )),
                        ]))
                      ],
                    ),
                    const SizedBox(height: JSizes.spaceBtwItems),

                    /// Signup Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () =>
                                Get.to(() => const VerifyEmailScreen()),
                            child: const Text(JTexts.createAccount))),

                    const SizedBox(height: JSizes.spaceBtwItems),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Divider(
                                color: dark ? JColors.darkerGrey : JColors.grey,
                                thickness: 0.5,
                                indent: 60,
                                endIndent: 5)),
                        Text(JTexts.orSignUpWith.capitalize!,
                            style: Theme.of(context).textTheme.labelMedium),
                        Flexible(
                            child: Divider(
                                color: dark ? JColors.darkerGrey : JColors.grey,
                                thickness: 0.5,
                                indent: 5,
                                endIndent: 60)),
                      ],
                    ),
                    const SizedBox(height: JSizes.spaceBtwItems),

                    /// Footer
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: JColors.grey),
                              borderRadius: BorderRadius.circular(100)),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Image(
                                width: JSizes.iconMd,
                                height: JSizes.iconMd,
                                image: AssetImage(JImages.google),
                              )),
                        )
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}
