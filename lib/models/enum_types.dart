import 'package:flutter/material.dart';
import 'package:tiara_app/ui/viewmodel/cart_screen_view_models.dart';
import 'package:tiara_app/ui/viewmodel/catalog_screen_view_models.dart';

enum ViewState { TWO_COLUMN_VIEW, THREE_COLUMN_VIEW }

class ViewStateHelper {
  static int getColumnCount(ViewState viewState) =>
      viewState == ViewState.TWO_COLUMN_VIEW ? 2 : 3;
}

enum ItemStatus { IN_STOCK, SOLD_OUT, COUNT_LEFT }

class ItemStatusHelper {
  static Color getColor(ItemStatus itemStatus) {
    switch (itemStatus) {
      case ItemStatus.IN_STOCK:
        return Color(0xff4caf50);
      case ItemStatus.SOLD_OUT:
        return Color(0xffd32f2f);
      case ItemStatus.COUNT_LEFT:
        return Color(0xfff9a825);
      default:
        return Color(0xff4caf50);
    }
  }

  static String getText(CatalogItemViewModel catalogItemViewModel) {
    switch (catalogItemViewModel.itemStatus) {
      case ItemStatus.IN_STOCK:
        return "In Stock";
      case ItemStatus.SOLD_OUT:
        return "Sold Out";
      case ItemStatus.COUNT_LEFT:
        return "${catalogItemViewModel.leftCount} Left";
      default:
        return "In Stock";
    }
  }

  static String getStatusText(CartItemViewModel cartItemViewModel) {
    switch (cartItemViewModel.itemStatus) {
      case ItemStatus.IN_STOCK:
        return "In Stock";
      case ItemStatus.SOLD_OUT:
        return "Sold Out";
      case ItemStatus.COUNT_LEFT:
        return "${cartItemViewModel.leftCount} Left";
      default:
        return "In Stock";
    }
  }
}

enum CatalogDataType { ALL, COLLECTION, CATEGORY, CLASSIFICATION }
