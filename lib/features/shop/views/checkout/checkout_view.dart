import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/common/widgets/appbar/appbar.dart';
import 'package:pakcraftstore/common/widgets/custom_shapes/countainers/rounded_container.dart';
import 'package:pakcraftstore/common/widgets/success_view/success_view.dart';
import 'package:pakcraftstore/features/shop/views/cart/widgets/cart_items.dart';
import 'package:pakcraftstore/features/shop/views/checkout/widgets/billing_address_section.dart';
import 'package:pakcraftstore/features/shop/views/checkout/widgets/billing_amount_section.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/navigation/view/navigation_menu.dart';
import '../../../../common/widgets/product/cart/coupon_widget.dart';
import '../../../../utils/constants/colors.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text('Checkout', style: Theme.of(context).textTheme.bodyMedium),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => SuccessView(
                  image: TImages.success,
                  title: 'Payment Successful',
                  subtitle: 'Your item will be shipped soon',
                  onPressed: () => Get.offAll(() => NavigationMenu())));
            },
            child: const Text("Pay Now")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Cart items
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -- Coupon Text Field
              TCouponCode(dark: dark),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwSections),

                    /// Payment Method
                    /// Address
                    BillingAddressSection(),
                    SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
