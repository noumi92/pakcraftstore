import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/widgets/texts/brand_title_text.dart';
import 'package:pakcraftstore/utils/constants/enums.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon(
      {super.key,
      this.textColor,
      required this.title,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSizes.small,
      this.iconColor = TColors.primary});

  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitle(
            title: title,
            color: textColor,
            textAlign: textAlign,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs)
      ],
    );
  }
}
