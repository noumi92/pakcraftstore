import 'package:flutter/material.dart';

import 'progress_indicator_and_rating.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(
                text: '5',
                value: 1,
              ),
              TRatingProgressIndicator(
                text: '4',
                value: 0.86,
              ),
              TRatingProgressIndicator(
                text: '3',
                value: 0.66,
              ),
              TRatingProgressIndicator(
                text: '2',
                value: 0.46,
              ),
              TRatingProgressIndicator(
                text: '1',
                value: 0.16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
