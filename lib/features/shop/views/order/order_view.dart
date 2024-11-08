import 'package:flutter/material.dart';
import 'package:pakcraftstore/common/widgets/appbar/appbar.dart';
import 'package:pakcraftstore/features/shop/views/order/widgets/orders_list.dart';
import 'package:pakcraftstore/utils/constants/sizes.dart';

class TOrderView extends StatelessWidget {
  const TOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('My Orders'),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: TOrdersList(),
      ),
    );
  }
}
