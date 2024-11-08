import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/countainers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TSingleOrder extends StatelessWidget {
  const TSingleOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      backgroundColor: dark ? TColors.darkBG : TColors.lightBG,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// -- Row 1
          Row(
            children: [
              /// 1 - Icon
              const Icon(Iconsax.ship),
              const SizedBox(width: TSizes.spaceBtwItems / 2),

              /// 2 Status and Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1)),
                    Text('07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ),

              /// 3 Icon
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm))
            ],
          ),

          const SizedBox(height: TSizes.spaceBtwItems),

          /// -- Row 2
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    /// 1 - Icon
                    const Icon(Iconsax.ship),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),

                    /// 2 Status and Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text('#256FL2',
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    /// 1 - Icon
                    const Icon(Iconsax.calendar),
                    const SizedBox(width: TSizes.spaceBtwItems / 2),

                    /// 2 Status and Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium),
                          Text('07 Nov, 2024',
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
