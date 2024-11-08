import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/widgets/custom_shapes/countainers/rounded_container.dart';
import 'package:pakcraftstore/common/widgets/images/rounded_image.dart';
import 'package:pakcraftstore/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:pakcraftstore/common/widgets/texts/product_price_text.dart';
import 'package:pakcraftstore/common/widgets/texts/product_title_text.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/circular_icon.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkBG : TColors.lightContainer),
      child: Row(
        children: [
          /// 1 Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.darkBG : TColors.lightBG,
            child: Stack(
              children: [
                /// 1-1 Thumbnail Image
                SizedBox(
                  width: 120,
                  height: 120,
                  child: TRoundedImage(
                      backgroundColor: dark ? TColors.black : TColors.white,
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true),
                ),

                /// 1-2 Sale Tag
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

                /// 1-3 Favourite Icon Button
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

          /// 2 Product Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  /// 2-1 Product name and Brand
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                          title:
                              'Denim Blue Jeans with soft fabrics and stylish pockets',
                          maxLines: 2,
                          smallSize: true),
                      SizedBox(height: TSizes.spaceBtwItems / 2),
                      TBrandTitleWithVerifiedIcon(title: 'Denim')
                    ],
                  ),

                  const Spacer(),

                  /// 2-2 Product Price and Add to Cart Button
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// 2-2a Product Price
                        const Flexible(
                            child: TProductPriceText(price: '2500 - 3000')),

                        /// 2-2b Add to cart
                        Container(
                          decoration: const BoxDecoration(
                              color: TColors.darkBG,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      TSizes.productImageRadius))),
                          child: const SizedBox(
                              width: TSizes.iconLg * 1.2,
                              height: TSizes.iconLg * 1.2,
                              child: Center(
                                  child: Icon(
                                Iconsax.add,
                                color: TColors.white,
                              ))),
                        )
                      ])
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
