import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juvenile/features/authentication/controllers.onboarding/on_boarding_contoller.dart';

import 'package:juvenile/utils/constants/image_strings.dart';
import 'package:juvenile/utils/constants/text_strings.dart';
import '../widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: JImages.onBoardingImage1,
                  title: JTexts.onBoardingTitle1,
                  subTitle: JTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: JImages.onBoardingImage2,
                  title: JTexts.onBoardingTitle2,
                  subTitle: JTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: JImages.onBoardingImage3,
                  title: JTexts.onBoardingTitle3,
                  subTitle: JTexts.onBoardingSubTitle3)
            ],
          ),

          /// Skip button
          const OnBoardingSkip(),

          /// Dot navigation SmoothPageIndicator
          const OnBoardingDotNav(),

          /// Circular Button
          const OnBoardingCircularButton(),
        ],
      ),
    );
  }
}


