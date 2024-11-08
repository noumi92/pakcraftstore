import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/widgets/texts/section_heading.dart';
import 'package:pakcraftstore/features/shop/views/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:pakcraftstore/features/shop/views/product_details/widgets/product_attributes.dart';
import 'package:pakcraftstore/features/shop/views/product_details/widgets/product_detail_image_slider.dart';
import 'package:pakcraftstore/features/shop/views/product_details/widgets/product_meta_data.dart';
import 'package:pakcraftstore/features/shop/views/product_details/widgets/rating_share_widget.dart';
import 'package:pakcraftstore/features/shop/views/product_reviews/product_reviews_view.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),

      /// - Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Product Image Slider
            const TProductImageSlider(),

            /// -- Product Details
            Padding(
              padding: const EdgeInsets.only(
                  left: TSizes.defaultSpace,
                  right: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --- Rating & Share
                  const TRatingandShare(),

                  /// --- Price, Title, Stock & Brand
                  const TProductMetaData(),

                  /// --- Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// --- Description
                  const TSectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    "This is a product description for Blue Nike sleeveless vest. There are more things that can be added but i want be it brief and let the product speak for itself",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More',
                    trimExpandedText: ' Show Less',
                    textAlign: TextAlign.justify,
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// --- Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'Reviews(199)', showActionButton: false),
                      IconButton(
                          onPressed: () {
                            Get.to(() => const ProductReviewsView());
                          },
                          icon: const Icon(Iconsax.arrow_right_3, size: 18))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
