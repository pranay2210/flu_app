import 'package:flutter/material.dart';
import 'package:tiara_app/ui/config/size_config.dart';

class Images {
  Images._();

  static const String PN001 = "assets/images/PN001.jpg";
  static const String PN002 = "assets/images/PN002.jpg";
  static const String PN004 = "assets/images/PN004.jpg";
}

class Icons {
  Icons._();

  static const String cartIcon = "assets/icons/cart-icon.png";
  static const String shoppingBagRemoveIcon =
      "assets/icons/shopping-bag-remove.png";
  static const String inStockBagIcon = "assets/icons/instock_bag_icon.png";
}

class Gifs {
  Gifs._();

  static const String loadingDiamond =
      "assets/gifs/loading_diamond_animation.gif";
}

class Loaders {
  Loaders._();

  static Widget irysDiamondLoader = Align(
      alignment: Alignment.center,
      child: Image(
          image: new AssetImage(Gifs.loadingDiamond),
          width: SizeConfig.imageSizeMultiplier * 50,
          height: SizeConfig.imageSizeMultiplier * 50));
}
