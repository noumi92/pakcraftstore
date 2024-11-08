import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pakcraftstore/features/shop/views/sub_category/sub_categories_view.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: TImages.shoeIcon,
              title: "Shoe",
              onTap: () {
                Get.to(() => const SubCategoriesView());
              },
            );
          }),
    );
  }
}
