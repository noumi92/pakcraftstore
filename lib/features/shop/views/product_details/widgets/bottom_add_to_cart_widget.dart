import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/product/cart/product_qty_with_update_buttons.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? TColors.darkerGrey : TColors.lightBG,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(TSizes.cardRadiusLg),
            topRight: Radius.circular(TSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TProductQtyWithUpdateButtons(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: TColors.black,
                side: const BorderSide(color: TColors.black)),
            child: const Text('Add to Bag'),
          )
        ],
      ),
    );
  }
}
