import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:iconsax/iconsax.dart';
import 'package:juvenile/features/authentication/screens/password_resetting/forgot_password.dart';
import 'package:juvenile/features/authentication/screens/signup/SignupScreen.dart';
import 'package:juvenile/nav_menu.dart';
import 'package:juvenile/utils/constants/colors.dart';
import 'package:juvenile/utils/constants/image_strings.dart';
import 'package:juvenile/utils/constants/sizes.dart';
import 'package:juvenile/utils/constants/text_strings.dart';
import 'package:juvenile/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: JSizes.appBarHeight,
            left: JSizes.defaultSpace,
            bottom: JSizes.defaultSpace,
            right: JSizes.defaultSpace,
          ),
          child: Column(
            children: [
              /// Logo, Title, Subtitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image(
                      height: 50,
                      image: AssetImage(
                          dark ? JImages.lightAppLogo : JImages.darkAppLogo),
                    ),
                  ),
                  Image(
                      height: 150,
                      image: AssetImage(
                          dark ? JImages.lightAppName : JImages.darkAppName)),
                  Text(JTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: JSizes.sm),
                  Text(JTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: JSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right5),
                        labelText: JTexts.emailOrPn,
                      ),
                    ),
                    const SizedBox(height: JSizes.spaceBtwInputFields),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right5),
                        labelText: JTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: JSizes.spaceBtwInputFields / 2),

                    /// Remember me & Forget Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Remember me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(JTexts.rememberMe),
                          ],
                        ),

                        /// Forgot password
                        TextButton(
                            onPressed: () => Get.to(() => const ForgotPassword()),
                            child: const Text(JTexts.forgetPassword)),
                      ],
                    ),
                    const SizedBox(height: JSizes.spaceBtwSections),

                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () => Get.to(() => const NavMenu()), child: Text(JTexts.signIn))),
                    const SizedBox(height: JSizes.spaceBtwItems),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () => Get.to(() => SignupScreen()),
                            child: Text(JTexts.createAccount))),

                    const SizedBox(height: JSizes.spaceBtwItems),
                  ],
                ),
              )),

              /// Divider
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
