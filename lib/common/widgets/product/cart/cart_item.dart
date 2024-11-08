import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_text_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        /// - Title, Price and Variations
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Brand name
              const TBrandTitleWithVerifiedIcon(title: 'Denim'),
              //Product Title
              const Flexible(
                child: TProductTitleText(
                    title: 'Denim Blue Pents with HD Colors and Smooth Fabrics',
                    maxLines: 1),
              ),
              // Attributes
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Blue',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'EU 24',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
