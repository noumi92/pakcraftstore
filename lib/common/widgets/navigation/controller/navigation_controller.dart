import 'package:get/get.dart';
import 'package:pakcraftstore/features/personalization/views/settings/settings_view.dart';

import '../../../../features/shop/views/home/home_view.dart';
import '../../../../features/shop/views/store/store_view.dart';
import '../../../../features/shop/views/wishlist/wishlist_view.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final views = [
    const HomeView(),
    const StoreView(),
    const FavouriteView(),
    const SettingsView(),
  ];

  void updateIndex() {}
}
