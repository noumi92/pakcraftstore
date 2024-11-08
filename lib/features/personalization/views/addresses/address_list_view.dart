import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pakcraftstore/common/widgets/appbar/appbar.dart';
import 'package:pakcraftstore/features/personalization/views/addresses/add_new_address_view.dart';
import 'package:pakcraftstore/utils/constants/colors.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

import 'widgets/single_address.dart';

class AddressListView extends StatelessWidget {
  const AddressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressView()),
        backgroundColor: TColors.primary,
        child: const Icon(Iconsax.add, color: TColors.white),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Addresses',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              SingleAddress(
                selectedAddress: true,
              ),
              SingleAddress(
                selectedAddress: false,
              ),
              SingleAddress(
                selectedAddress: false,
              ),
              SingleAddress(
                selectedAddress: false,
              ),
              SingleAddress(
                selectedAddress: false,
              ),
              SingleAddress(
                selectedAddress: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
