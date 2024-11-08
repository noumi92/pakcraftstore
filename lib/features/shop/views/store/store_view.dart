import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/features/shop/views/brands/all_brands_view.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product/cart/cart_menu_icon.dart';
import '../../../../common/widgets/product/category/category_tab_card.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../home/widgets/search_container.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        /// -AppBar
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
              iconColor: Colors.black,
            )
          ],
        ),
        body: NestedScrollView(

            /// -Header
            headerSliverBuilder: (_, innerBoxScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: THelperFunctions.isDarkMode(context)
                      ? TColors.black
                      : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// -- Search bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(
                          text: "Search in Store",
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        /// --Featured Brands
                        TSectionHeading(
                          title: "Featured Brands",
                          onPressed: () {
                            Get.to(() => const AllBrandsView());
                          },
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        /// --Brands Grid
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: false);
                            })
                      ],
                    ),
                  ),

                  /// -Tabs
                  bottom: const TTabBar(tabs: [
                    Tab(
                      child: Text("Sports"),
                    ),
                    Tab(
                      child: Text("Furniture"),
                    ),
                    Tab(
                      child: Text("Electronics"),
                    ),
                    Tab(
                      child: Text("Clothes"),
                    ),
                    Tab(
                      child: Text("Cosmetics"),
                    ),
                  ]),
                ),
              ];
            },

            /// -Body
            body: const TabBarView(children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab()
            ])),
      ),
    );
  }
}
