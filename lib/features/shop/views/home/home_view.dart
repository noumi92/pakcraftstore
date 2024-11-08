import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/common/custom_shapes/containers/primary_header_container.dart';
import 'package:pakcraftstore/features/shop/views/all_products/all_products_view.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';
import 'widgets/search_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          /// -header
          const TPrimaryHeaderContainer(
            child: Column(
              children: [
                /// --appbar
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --searchbar
                TSearchContainer(
                  text: "Search to App",
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --categories
                /// ---Categories heading
                TSectionHeading(
                  title: 'Popular Categories',
                  showActionButton: false,
                  textColor: TColors.white,
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// ---Categories icons
                THomeCategories(),
                SizedBox(height: TSizes.spaceBtwSections)
              ],
            ),
          ),

          /// -body
          Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// --Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.banner1,
                      TImages.banner2,
                      TImages.banner3,
                      TImages.banner4,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// --Heading
                  TSectionHeading(
                    title: "Popular Products",
                    onPressed: () {
                      Get.to(() => const AllProductsView());
                    },
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// --Popular Products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
