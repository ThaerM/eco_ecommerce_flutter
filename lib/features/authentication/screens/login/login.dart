import 'package:eco_store/common/styles/spacing_styles.dart';
import 'package:eco_store/common/widgets/login_signup/form_divider.dart';
import 'package:eco_store/common/widgets/login_signup/social_buttons.dart';
import 'package:eco_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:eco_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:eco_store/util/constants/sizes.dart';
import 'package:eco_store/util/constants/text_strings.dart';
import 'package:eco_store/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & sub-Title
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
