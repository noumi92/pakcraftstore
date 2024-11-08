import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/custom_shapes/countainers/rounded_container.dart';
import 'package:pakcraftstore/common/widgets/texts/section_heading.dart';
import 'package:pakcraftstore/utils/constants/image_strings.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Payment method heading
        TSectionHeading(
            title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            /// Payment Icon
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.lightBG : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(
                  image: AssetImage(TImages.payPal), fit: BoxFit.contain),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
