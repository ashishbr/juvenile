import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:juvenile/features/authentication/controllers.onboarding/on_boarding_contoller.dart';
import 'package:juvenile/utils/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_util.dart';
import '../../../../utils/helpers/helper_functions.dart';

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class OnBoardingCircularButton extends StatelessWidget {
  const OnBoardingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);
    return Positioned(
      right: JSizes.defaultSpace,
      bottom: JDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            side: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class OnBoardingDotNav extends StatelessWidget {
  const OnBoardingDotNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = JHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: JDeviceUtils.getBottomNavigationBarHeight() + 20,
        left: JSizes.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? JColors.light: JColors.dark, dotHeight: 9),
        ));
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: JDeviceUtils.getAppBarHeight(),
        right: JSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text("Skip"),
        ));
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(JSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: JHelperFunctions.screenWidth() * 0.8,
              height: JHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          const SizedBox(height: JSizes.spaceBtwItems),
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: JSizes.spaceBtwItems),
          Text(subTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}