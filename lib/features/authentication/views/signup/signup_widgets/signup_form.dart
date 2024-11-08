import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/features/authentication/views/signup/verify_email_view.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            /// --First & Last Name
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: "First Name",
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                const SizedBox(width: TSizes.spaceBtwInputFields,),
                Flexible(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: "Last Name",
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            /// --username
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            /// --Email
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Iconsax.direct)
              ),
            ),
            /// --Phone Number
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: "Phone Number",
                  prefixIcon: Icon(Iconsax.call)),
            ),
            /// --Password
            const SizedBox(height: TSizes.spaceBtwInputFields,),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)
              ),
            ),
            /// --Terms & Conditions
            const SizedBox(height: TSizes.spaceBtwItems,),
            Row(
              children: [
                SizedBox(width:24, height:24, child: Checkbox(value: true, onChanged: (value){})),
                Text.rich(
                    TextSpan(
                        children: [
                          TextSpan(text: "I agree to ", style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: "Privacy Policy", style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: isDark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: isDark ? TColors.white : TColors.primary,
                          )),
                          TextSpan(text: " and ", style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(text: "Terms of Use", style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: isDark ? TColors.white : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: isDark ? TColors.white : TColors.primary,
                          )),

                        ]
                    )
                ),
              ],
            ),
            /// --Signup Buttons
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(width: double.infinity, child: ElevatedButton(
              onPressed: (){
                Get.to(const VerifyEmailView());
              },
              child: const Text("Create Account"),
            ),),
          ],
        ),
      ),
    );
  }
}