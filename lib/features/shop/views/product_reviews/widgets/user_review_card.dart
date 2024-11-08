import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/custom_shapes/countainers/rounded_container.dart';
import 'package:pakcraftstore/common/widgets/product/rating/rating_indicator.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'review_text.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// - Profile image, name and menu icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  'Lailah John',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),

        /// - Single Review
        // Rating indicator and date of rating
        Row(
          children: [
            const TRatingBarIndicator(rating: 3.6),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01-Nov-2024', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        // Review text
        const ReviewText(
          text:
              'This is a product review from user for Blue Nike sleeveless vest. There are more things that can be added but i want be it brief and let the product speak for itself. This is a product review from user for Blue Nike sleeveless vest. There are more things that can be added but i want be it brief and let the product speak for itself',
          maxLines: 2,
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        //Store reply Text
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                // Store name and reply date
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pakcraft Store',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov, 2024',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                // store reply text
                const ReviewText(
                  text:
                      'This is a product review from user for Blue Nike sleeveless vest. There are more things that can be added but i want be it brief and let the product speak for itself. This is a product review from user for Blue Nike sleeveless vest. There are more things that can be added but i want be it brief and let the product speak for itself',
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections)
      ],
    );
  }
}
