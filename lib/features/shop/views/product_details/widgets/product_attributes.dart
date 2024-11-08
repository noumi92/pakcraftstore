import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/custom_shapes/countainers/rounded_container.dart';
import 'package:pakcraftstore/common/widgets/texts/product_price_text.dart';
import 'package:pakcraftstore/common/widgets/texts/product_title_text.dart';
import 'package:pakcraftstore/common/widgets/texts/section_heading.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// - Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              /// -- Title, Price and Stock Status
              Row(
                children: [
                  /// --Title
                  const TSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// --Price
                      const Row(
                        children: [
                          TProductTitleText(title: 'Price : ', smallSize: true),

                          /// -- Actual Price
                          TProductPriceText(price: '25', lineThrough: true),
                          SizedBox(width: TSizes.spaceBtwItems),

                          /// Sale Price
                          TProductPriceText(
                            price: '20',
                            isLarge: true,
                          )
                        ],
                      ),

                      /// --Stock
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium)
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// - Variation Description
              const TProductTitleText(
                title:
                    "This is the description of the Product and it can go upto 4 lines.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// - Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Color', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Orange', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Purple', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'EU 34', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 36', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
