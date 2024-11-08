import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/appbar/appbar.dart';
import 'package:pakcraftstore/common/widgets/images/rounded_image.dart';
import 'package:pakcraftstore/common/widgets/product/product_cards/product_card_horizonltal.dart';
import 'package:pakcraftstore/common/widgets/texts/section_heading.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

class SubCategoriesView extends StatelessWidget {
  const SubCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Denim Jeans')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// 1 - Banner
              const TRoundedImage(
                  width: double.infinity,
                  applyImageRadius: true,
                  imageUrl: TImages.promoBanner3),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// 2 - Subcategories
              Column(
                children: [
                  TSectionHeading(
                    title: 'Denim Jeans',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const TProductCardHorizontal();
                      },
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: TSizes.spaceBtwItems),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
