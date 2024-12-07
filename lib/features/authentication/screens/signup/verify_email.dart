import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juvenile/common/widgets/success_screen/success_screen1.dart';
import 'package:juvenile/features/authentication/screens/login/login.dart';
import 'package:juvenile/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(JSizes.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(
                  image: AssetImage(JImages.deliveredEmailIllustration),
                  width: JHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: JSizes.spaceBtwSections),

                ///Title&subtitle
                Text(JTexts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: JSizes.spaceBtwSections),
                Text('support@gmail.com',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: JSizes.spaceBtwSections),
                Text(JTexts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: JSizes.spaceBtwSections),

                ///Buttons
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => SuccessScreen1(
                              image: JImages.productSuccessIllustration,
                              title: JTexts.yourAccountCreatedTitle,
                              subTitle: JTexts.yourAccountCreatedSubTitle,
                              onPressed: () => Get.to(() => const LoginScreen()),
                            )),
                        child: const Text(JTexts.tContinue))),
                const SizedBox(height: JSizes.spaceBtwItems),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(JTexts.resendEmail))),
              ],
            )),
      ),
    );
  }
}
