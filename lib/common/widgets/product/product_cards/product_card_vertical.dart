import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/widgets/images/rounded_image.dart';
import 'package:pakcraftstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:pakcraftstore/features/shop/views/product_details/product_details_view.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../styles/shadows.dart';
import '../../custom_shapes/countainers/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../texts/product_price_text.dart';
import '../../texts/product_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// -Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailView()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkBG : TColors.white),
        child: Column(
          children: [
            /// --thumbnail, wishlist button, discount tag
            TRoundedContainer(
              height: 150,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.darkBG : TColors.lightBG,
              child: Stack(
                children: [
                  /// ---Thumbnail
                  const TRoundedImage(
                    imageUrl: TImages.productImage21,
                    applyImageRadius: true,
                  ),

                  /// ---Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
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
                  ),

                  /// ---Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections / 2,
            ),

            /// -- Details
            const Padding(
                padding: EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// ---Product Title
                    TProductTitleText(
                      title: 'Fox Leather Shoes',
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),
                    Row(
                      children: [
                        /// ---Product Brand
                        TBrandTitleWithVerifiedIcon(title: "Nike")
                      ],
                    ),
                  ],
                )),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// ---Product Price
                const Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(
                    price: '28.66',
                  ),
                ),

                /// ---Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                      color: TColors.darkBG,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(TSizes.productImageRadius))),
                  child: const SizedBox(
                      width: TSizes.iconLg * 1.2,
                      height: TSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
