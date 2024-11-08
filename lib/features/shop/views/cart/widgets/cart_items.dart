import 'package:flutter/material.dart';

import '../../../../../common/widgets/product/cart/cart_item.dart';
import '../../../../../common/widgets/product/cart/product_qty_with_update_buttons.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),

          /// Add Remove Button Row with Total Price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra Space
                    SizedBox(width: 70),

                    /// Add Remove Buttons
                    TProductQtyWithUpdateButtons(),
                  ],
                ),

                /// Product Total Price
                TProductPriceText(price: "35.0")
              ],
            )
        ],
      ),
    );
  }
}
