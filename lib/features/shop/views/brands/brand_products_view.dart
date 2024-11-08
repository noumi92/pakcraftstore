import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/appbar/appbar.dart';
import 'package:pakcraftstore/common/widgets/brands/brand_card.dart';
import 'package:pakcraftstore/common/widgets/product/sortable/sortable_products.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

class BrandProductsView extends StatelessWidget {
  const BrandProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Brand Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// 1 Brand Detail
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spaceBtwSections),

              /// 2 Brand Products
              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
