import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/appbar/appbar.dart';
import 'package:pakcraftstore/features/shop/views/product_reviews/widgets/user_review_card.dart';

import '../../../../common/widgets/product/rating/rating_indicator.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/rating_progress_indicator.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// - Appbar
      appBar:
          const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      /// - Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Ratings and reviews are written from people with who use the same type of device that you use'),
            const SizedBox(height: TSizes.spaceBtwItems),

            /// -- Overall Product Rating
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 3.6),
            Text("12,611", style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: TSizes.spaceBtwSections),

            /// --
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
