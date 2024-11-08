import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/images/circular_image.dart';
import 'package:pakcraftstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:pakcraftstore/common/widgets/texts/product_price_text.dart';
import 'package:pakcraftstore/common/widgets/texts/product_title_text.dart';
import 'package:pakcraftstore/utils/constants/enums.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/countainers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// - Price & Sale Price
        Row(
          children: [
            /// -- Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// -- Price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            const TProductPriceText(
              price: '150',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// - Title
        const TProductTitleText(title: 'Brown Leather Formal Shoes'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// - Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        ///  - Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.cosmeticsIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
