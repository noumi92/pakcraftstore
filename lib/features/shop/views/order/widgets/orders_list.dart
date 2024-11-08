import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import 'single_order.dart';

class TOrdersList extends StatelessWidget {
  const TOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwItems),
        itemBuilder: (_, int index) => const TSingleOrder());
  }
}
