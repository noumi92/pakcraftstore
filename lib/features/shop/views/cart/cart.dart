import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/common/widgets/appbar/appbar.dart';
import 'package:pakcraftstore/features/shop/views/checkout/checkout_view.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

import 'widgets/cart_items.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => const CheckoutView());
            },
            child: const Text("Checkout \$256.0")),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TCartItems(),
      ),
    );
  }
}
