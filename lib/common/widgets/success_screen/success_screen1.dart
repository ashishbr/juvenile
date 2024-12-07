import 'package:flutter/material.dart';
import 'package:juvenile/common/styles/spacing_styles.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen1 extends StatelessWidget {
  const SuccessScreen1({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: JSpacingStyle.paddingWithAppBarHeight * 2,
      child: Column(
        children: [
          ///Image
          Image(
            image: AssetImage(image),
            width: JHelperFunctions.screenWidth() * 0.6,
          ),
          const SizedBox(height: JSizes.spaceBtwSections),

          ///Title&subtitle
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: JSizes.spaceBtwSections),
          Text(subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: JSizes.spaceBtwSections),

          ///Buttons
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(JTexts.tContinue))),
        ],
      ),
    )));
  }
}
