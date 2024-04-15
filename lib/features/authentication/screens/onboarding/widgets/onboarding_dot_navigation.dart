import 'package:eco_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:eco_store/util/constants/color.dart';
import 'package:eco_store/util/constants/sizes.dart';
import 'package:eco_store/util/device/device_utility.dart';
import 'package:eco_store/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() * 0.25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.dark : TColors.light,
            dotHeight: 6,
          )),
    );
  }
}
