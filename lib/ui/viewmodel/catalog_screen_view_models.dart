import 'package:flutter/material.dart';
import 'package:tiara_app/models/enum_types.dart';

import 'key_value_item_view_model.dart';

class CatalogItemViewModel {
  int id;
  String itemName, itemId;
  List<KeyValueItemViewModel> infoData;
  ItemStatus itemStatus;
  double sellingPrice;
  int leftCount;
  String itemImagePath;
  bool orderByEnabled;
  String orderBy;

  CatalogItemViewModel(
      {@required this.id,
      @required this.itemName,
      @required this.itemId,
      @required this.infoData,
      @required this.itemStatus,
      @required this.sellingPrice,
      this.leftCount,
      @required this.itemImagePath,
      this.orderByEnabled,
      this.orderBy});

  @override
  String toString() {
    return "{id: $id, itemName: $itemName, itemId: $itemId, infoData:${infoData.toString()}, itemStatus: $itemStatus, sellingPrice: $sellingPrice, leftCount: $leftCount, itemImagePath: $itemImagePath}";
  }
}
