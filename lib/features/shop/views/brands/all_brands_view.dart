import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/common/widgets/brands/brand_card.dart';
import 'package:pakcraftstore/common/widgets/layouts/grid_layout.dart';
import 'package:pakcraftstore/common/widgets/texts/section_heading.dart';
import 'package:pakcraftstore/features/shop/views/brands/brand_products_view.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AllBrandsView extends StatelessWidget {
  const AllBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('All Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// 1 Heading
              const TSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// 2 Brands
              TGridLayout(
                  mainAxisExtent: 80,
                  itemCount: 10,
                  itemBuilder: (context, index) => TBrandCard(
                        showBorder: true,
                        onTap: () {
                          Get.to(() => const BrandProductsView());
                        },
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
