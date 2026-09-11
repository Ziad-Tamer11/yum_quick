import 'package:yum_quick/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
  BottomNavigationBarEntity(
    inActiveImage: Assets.imagesHome,
    activeImage: Assets.imagesHomeSelected,
  ),
  BottomNavigationBarEntity(
    inActiveImage: Assets.imagesMenu,
    activeImage: Assets.imagesMenuSelected,
  ),
  BottomNavigationBarEntity(
    inActiveImage: Assets.imagesFavoriteBnb,
    activeImage: Assets.imagesFavoriteBnbSelected,
  ),
  BottomNavigationBarEntity(
    inActiveImage: Assets.imagesOrders,
    activeImage: Assets.imagesOrderSelected,
  ),
  BottomNavigationBarEntity(
    inActiveImage: Assets.imagesSupport,
    activeImage: Assets.imagesSupportSelected,
  ),
];
