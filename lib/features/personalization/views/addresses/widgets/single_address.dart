import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';
import 'package:pakcraftstore/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/countainers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? TColors.lightBG
                        : TColors.darkBG
                    : null),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PakcraftStore',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: TSizes.sm / 2),
              const Text('0312-92315879',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm / 2),
              const Text(
                'House No 289, Street 35, Steel Town, Karachi, Pakistan',
                softWrap: true,
              ),
              const SizedBox(height: TSizes.sm / 2),
            ],
          )
        ],
      ),
    );
  }
}
