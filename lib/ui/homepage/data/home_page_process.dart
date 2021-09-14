import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tiara_app/adapters/db_adapter.dart';
import 'package:tiara_app/db/database_helper.dart';
import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/models/enum_types.dart';
import 'package:tiara_app/network/dataImportService/http_import_data_service.dart';
import 'package:tiara_app/ui/viewmodel/cart_screen_view_models.dart';
import 'package:tiara_app/ui/viewmodel/catalog_screen_view_models.dart';
import 'package:tiara_app/ui/viewmodel/filters_page_view_models.dart';
import 'package:tiara_app/ui/viewmodel/key_value_item_view_model.dart';
import 'package:tiara_app/util/images_provider.dart';

class HomePageProcess {
  AppDatabase appDatabase = DatabaseHelper().getDb();

  //Will return all applied filter catalog Items
  Future<List<CatalogItemViewModel>> getAllFilteredCatalogItems(
      List<FilterItemViewModel> filtersData) async {
    List<CatalogItemViewModel> catalogItems = new List();
    List<String> itemIDsList =
        await appDatabase.getFiltersSelection(filtersData);
    debugPrint("Size of item id's list :  ${itemIDsList.length}, data : ${itemIDsList.toString()}");
    //List<Item> itemsList = await appDatabase.itemDao.getAllItemDetails();
    //debugPrint("PRINT LIST $itemsList");
    //catalogItems = await mapDataFromItemsList(itemsList);
    debugPrint("Size of catalog items list :  ${catalogItems.length}");
    return catalogItems;
  }

  //Will return all catalog Items
  Future<List<CatalogItemViewModel>> getAllCatalogItems() async {
    List<CatalogItemViewModel> catalogItems = new List();
    List<Item> itemsList = await appDatabase.itemDao.getAllItemDetails();
    //debugPrint("PRINT LIST $itemsList");
    catalogItems = await mapDataFromItemsList(itemsList);
    debugPrint("Size of catalog items list :  ${catalogItems.length}");
    return catalogItems;
  }

  //Will return Items of Specific Banner Collection when Clicked.
  Future<List<CatalogItemViewModel>> getCatalogItems(
      String collectionID) async {
    List<CatalogItemViewModel> catalogItems = new List();
    List<CollectionMapping> collectionsList = await appDatabase
        .collectionMappingDao
        .getCollectionMappingID(collectionID);
    for (var collection in collectionsList) {
      List<Item> itemsList =
          await appDatabase.itemDao.getBannerCollectionItems(collection.itemID);
      List<CatalogItemViewModel> catalogItemViewModelsList =
          await mapDataFromItemsList(itemsList);
      catalogItems.addAll(catalogItemViewModelsList);
    }
    debugPrint(
        "Catalog Items(Size : ${catalogItems.length}) :  ${catalogItems.toString()}");
    return catalogItems;
  }

  //Will return Items of Specific Classification Collection when Classification item Clicked.
  Future<List<CatalogItemViewModel>> getClassificationItems(
      HashMap<String, String> mapFilter) async {
    List<CatalogItemViewModel> catalogItems = new List();

    for (var i = 0; i < mapFilter.length; i++) {
      List<Item> itemsList = await appDatabase.itemDao
          .getClassificationsItemsOnClick(mapFilter["itemType$i"]);
      List<CatalogItemViewModel> catalogItemViewModelList =
          await mapDataFromItemsList(itemsList);
      catalogItems.addAll(catalogItemViewModelList);
    }
    return catalogItems;
  }

  Future<List<KeyValueItemViewModel>> getInfoData(
      Item item, List<ColumnSetting> columnSettings) async {
    List<KeyValueItemViewModel> infoData = List();
    for (ColumnSetting setting in columnSettings) {
      debugPrint("Settings $setting");
      debugPrint(
          "Print GETINFO METHOD ${DBAdapter().adaptMappingTableName(setting.tableNameVal.trim())}");
      String mappingTableName =
          DBAdapter().adaptMappingTableName(setting.tableNameVal);
      String mappingID = DBAdapter().adaptMappingIDName(setting.tableNameVal);
      String dynamicID = await appDatabase.getDynamicIDFromMappingTable(
          mappingID, mappingTableName, item.itemID);
      String columnName = DBAdapter().adaptColumnName(setting.fieldName);
      String tableName = DBAdapter().adaptTableName(setting.tableNameVal);
      String actualValue = await appDatabase.getActualValueFromDynamicID(
          columnName, tableName, mappingID, dynamicID);
      infoData.add(KeyValueItemViewModel(
          (setting.customDisplayName == null ||
                  setting.customDisplayName.isEmpty)
              ? setting.defaultDisplayName
              : setting.customDisplayName,
          actualValue.trim() == "1"
              ? "YES"
              : actualValue.trim() == "0" ? "NO" : actualValue));
    }
    return infoData;
  }

  ItemStatus getItemStatus(String itemStatus) {
    switch (itemStatus) {
      case "InStock":
        return ItemStatus.IN_STOCK;
      case "SoldOut":
        return ItemStatus.SOLD_OUT;
      case "CountLeft":
        return ItemStatus.COUNT_LEFT;
      default:
        return ItemStatus.IN_STOCK;
    }
  }

  String getItemStatusString(ItemStatus itemStatus) {
    switch (itemStatus) {
      case ItemStatus.IN_STOCK:
        return "InStock";
      case ItemStatus.SOLD_OUT:
        return "SoldOut";
      case ItemStatus.COUNT_LEFT:
        return "CountLeft";
      default:
        return "InStock";
    }
  }

  //Will return all the Items of specific categories when clicked
  Future<List<CatalogItemViewModel>> getCategoryItems(
      String categoryType) async {
    List<CatalogItemViewModel> catalogItems = new List();
    List<Item> itemsList =
        await appDatabase.fetchedItemsForCategories(categoryType);
    catalogItems = await mapDataFromItemsList(itemsList);
    debugPrint("Size of catalog items list :  ${catalogItems.length}");
    return catalogItems;
  }

  List<Classification> classificationData = new List();
  List<Classification> showCategories = new List();

  //Will store the classification data in DBs
  void storeDataToDB() async {
    HttpImportDataService importService = HttpImportDataService();
    await importService.getClassificationDetails();
//    await appDatabase.parentData().then((classification) {
//      classificationData.addAll(classification);
//      //debugPrint("Home page parent data : $classificationsData");
//      for (Classification classification in classificationData) {
//        debugPrint("Display val ${classification.classificationHeader}");
//      }
//    });

    await appDatabase.categoryData().then((res) {
      showCategories = res;
    });

    await importService.getColumnSetingDetails();
  }

  List<Classification> getClassificationData() {}

  List<Classification> getCategoryData() {
    return showCategories;
  }

  Future<List<CatalogItemViewModel>> mapDataFromItemsList(
      List<Item> itemsList) async {
    List<CatalogItemViewModel> catalogItems = new List();
    List<ColumnSetting> columnSettingsList =
        await appDatabase.columnSettingDao.getAllSummaryEnabledColumn();
    for (var item in itemsList) {
      List<KeyValueItemViewModel> keyValueItemViewModelList =
          await getInfoData(item, columnSettingsList);
      catalogItems.add(CatalogItemViewModel(
        id: item.autoItemID,
        itemName: item.rfidTag,
        itemId: item.itemID,
        infoData: keyValueItemViewModelList,
        itemStatus: getItemStatus(item.itemStatus),
        sellingPrice: item.listPrice != null ? item.listPrice.toDouble() : 0.0,
        leftCount: 2,
        itemImagePath: ImagesDataProvider.getFirst(
          item.imageName,
        ),
        orderBy: "",
        orderByEnabled: true,
      ));
    }
    return catalogItems;
  }

  void addItemToCart(CatalogItemViewModel catalogItem) async {
    var cart = Cart(
        autoCartId: catalogItem.id,
        itemId: catalogItem.itemId,
        itemName: catalogItem.itemName,
        infoData: jsonEncode(catalogItem.infoData),
        itemStatus: getItemStatusString(catalogItem.itemStatus),
        sellingPrice: catalogItem.sellingPrice,
        leftCount: catalogItem.leftCount,
        itemImagePath: catalogItem.itemImagePath,
        quantity: 1);

    await appDatabase.cartDao.insertCartData(cart);
  }

  //Will return list of all Cart Items
  Future<List<CartItemViewModel>> getAllCartItems() async {
    List<CartItemViewModel> cartItems = new List();
    List<Cart> cartsList = await appDatabase.cartDao.getAllCartDetails();
    cartItems = mapDataFromCartsList(cartsList);
    debugPrint(
        "Catalog Items(Size : ${cartItems.length}) :  ${cartItems.toString()}");
    return cartItems;
  }

  List<CartItemViewModel> mapDataFromCartsList(List<Cart> cartsList) {
    List<CartItemViewModel> cartItems = new List();
    for (var item in cartsList) {
      var infoDataJsonList = jsonDecode(item.infoData) as List;
      List<KeyValueItemViewModel> infoDataList = infoDataJsonList
          .map((infoDataJson) => KeyValueItemViewModel.fromJson(infoDataJson))
          .toList();
      cartItems.add(CartItemViewModel(
          id: item.autoCartId,
          itemName: item.itemName,
          itemId: item.itemId,
          infoData: infoDataList,
          itemStatus: getItemStatus(item.itemStatus),
          sellingPrice: item.sellingPrice,
          leftCount: item.leftCount,
          itemImagePath: item.itemImagePath,
          quantity: item.quantity));
    }
    return cartItems;
  }

  void removeItemFromCart(CartItemViewModel cartItem) async {
    var cart = getCartDbItemFrom(cartItem);
    await appDatabase.cartDao.deleteCartData(cart);
  }

  getCartDbItemFrom(CartItemViewModel cartItem) {
    return Cart(
        autoCartId: cartItem.id,
        itemId: cartItem.itemId,
        itemName: cartItem.itemName,
        infoData: jsonEncode(cartItem.infoData),
        itemStatus: getItemStatusString(cartItem.itemStatus),
        sellingPrice: cartItem.sellingPrice,
        leftCount: cartItem.leftCount,
        itemImagePath: cartItem.itemImagePath,
        quantity: cartItem.quantity);
  }

  void removeAllItemsFromCart() async {
    await appDatabase.cartDao.deleteAllCart();
  }

  void updateCartItem(CartItemViewModel cartItem) async {
    var cart = getCartDbItemFrom(cartItem);
    await appDatabase.cartDao.updateCartData(cart);
  }

  void updateAllCartItems(List<CartItemViewModel> cartItemViewModelList) async {
    for (var cartItem in cartItemViewModelList) {
      var cart = getCartDbItemFrom(cartItem);
      await appDatabase.cartDao.updateCartData(cart);
    }
  }

  adaptTableName(String tableNameVal) {
    //var parentTableName;
    switch (tableNameVal) {
      case "iItemMasterBOM":
        {
          return "items";
        }

      case "null":
        {
          return "items";
        }
    }
  }
}
