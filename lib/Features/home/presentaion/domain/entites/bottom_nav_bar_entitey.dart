import 'package:e_commerce_app_frutes/Core/utils/app_images.dart';

class BottomNavBarEntitey {
  final String name, activeIcon, inActiveIcon;

  BottomNavBarEntitey(
      {required this.name,
      required this.activeIcon,
      required this.inActiveIcon});
}

List<BottomNavBarEntitey> get bottomNavBarItem => [
      BottomNavBarEntitey(
        name: 'الرئيسية',
        activeIcon: AppAssets.assetsImagesVuesaxBoldHome,
        inActiveIcon: AppAssets.assetsImagesVuesaxOutlineHome,
      ),
      BottomNavBarEntitey(
        name: 'المنجات',
        activeIcon: AppAssets.assetsImagesVuesaxBoldProducts,
        inActiveIcon: AppAssets.assetsImagesVuesaxOutlineProducts,
      ),
      BottomNavBarEntitey(
        name: 'سلة التسوق',
        activeIcon: AppAssets.assetsImagesVuesaxBoldShoppingCart,
        inActiveIcon: AppAssets.assetsImagesVuesaxOutlineShoppingCart,
      ),
      BottomNavBarEntitey(
        name: 'حسابي',
        activeIcon: AppAssets.assetsImagesVuesaxBoldUser,
        inActiveIcon: AppAssets.assetsImagesVuesaxOutlineUser,
      ),
    ];
