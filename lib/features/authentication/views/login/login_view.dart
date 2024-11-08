import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/styles/spacing_styles.dart';
import 'package:pakcraftstore/common/widgets/login_signup/form_divider.dart';
import 'package:pakcraftstore/common/widgets/login_signup/social_buttons.dart';
import 'package:pakcraftstore/features/authentication/views/login/login_widgets/login_form.dart';
import 'package:pakcraftstore/features/authentication/views/login/login_widgets/login_header.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// -Logo, title and sub-title
              TLoginHeader(),

              /// -Form
              TLoginForm(),

              /// -Divider
              TFormDivider(dividerText: "Or Login With"),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -Footer
              TSocialButtons(),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
