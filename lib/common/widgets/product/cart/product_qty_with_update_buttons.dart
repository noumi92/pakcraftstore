import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class TProductQtyWithUpdateButtons extends StatelessWidget {
  const TProductQtyWithUpdateButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        //Add remove buttons
        TCircularIcon(
            icon: Iconsax.minus,
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.darkGrey
                : TColors.lightBG,
            width: 32,
            height: 32,
            color: THelperFunctions.isDarkMode(context)
                ? TColors.white
                : TColors.black,
            size: TSizes.md),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSizes.spaceBtwItems),
        const TCircularIcon(
            icon: Iconsax.add,
            backgroundColor: TColors.primary,
            width: 32,
            height: 32,
            color: TColors.white,
            size: TSizes.md),
      ],
    );
  }
}
