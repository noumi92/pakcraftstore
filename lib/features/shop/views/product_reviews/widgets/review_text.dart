import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';

class ReviewText extends StatelessWidget {
  const ReviewText({
    super.key,
    required this.text,
    required this.maxLines,
    this.moreLessButtonColor = TColors.primary,
  });

  final String text;
  final int maxLines;
  final Color moreLessButtonColor;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: maxLines,
      trimMode: TrimMode.Line,
      trimExpandedText: ' Show Less',
      trimCollapsedText: ' Show More',
      moreStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: moreLessButtonColor),
      lessStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: moreLessButtonColor),
    );
  }
}
