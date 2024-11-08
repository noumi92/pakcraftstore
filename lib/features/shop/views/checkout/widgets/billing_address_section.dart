import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Address Section heading
        TSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        // Address title
        Text('Pakcraft Store', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        // Phone Number
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('03129231066', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        // Address text
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
                child: Text(' House No 260 House No 260 House No 260',
                    style: Theme.of(context).textTheme.bodyLarge)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2)
      ],
    );
  }
}
