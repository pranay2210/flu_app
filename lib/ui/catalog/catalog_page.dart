import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tiara_app/models/enum_types.dart';
import 'package:tiara_app/ui/catalog/filters_page.dart';
import 'package:tiara_app/ui/config/resources.dart';
import 'package:tiara_app/ui/config/strings.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/homepage/data/home_page_process.dart';
import 'package:tiara_app/ui/viewmodel/catalog_screen_view_models.dart';
import 'package:tiara_app/ui/viewmodel/filters_page_view_models.dart';
import 'package:tiara_app/ui/widgets/alert_dialog_box.dart';
import 'package:tiara_app/ui/widgets/catalog_item.dart';

typedef void ItemClickCallback(String itemID);

class CatalogPage extends StatefulWidget {
  List<FilterItemViewModel> filtersData;
  CatalogDataType catalogDataType = CatalogDataType.ALL;
  String collectionID = "";
  String categoryType = "";
  HashMap<String, String> classificationType = HashMap<String, String>();
  final ItemClickCallback onItemClick;

  @override
  _CatalogPageState createState() => _CatalogPageState(
      catalogDataType, collectionID, categoryType, classificationType);

  CatalogPage({this.onItemClick}) {
    this.catalogDataType = CatalogDataType.ALL;
  }

  CatalogPage.withCollectionID(this.collectionID, {this.onItemClick}) {
    this.catalogDataType = CatalogDataType.COLLECTION;
  }

  CatalogPage.withCategoryType(this.categoryType, {this.onItemClick}) {
    this.catalogDataType = CatalogDataType.CATEGORY;
  }

  CatalogPage.withClassificationType(this.classificationType,
      {this.onItemClick}) {
    this.catalogDataType = CatalogDataType.CLASSIFICATION;
  }
}

class _CatalogPageState extends State<CatalogPage> {
  CatalogDataType _catalogDataType = CatalogDataType.ALL;
  String _collectionID = "";
  String _categoryType = "";
  HashMap<String, String> _classificationType = HashMap<String, String>();

  List<CatalogItemViewModel> _catalogItems = List();

  _CatalogPageState(this._catalogDataType, this._collectionID,
      this._categoryType, this._classificationType) {
    loadCatalogItems(_catalogDataType);
  }

  ViewState _viewState = ViewState.THREE_COLUMN_VIEW;
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(Strings.catalogsPageTitle,
                          style: AppTheme.pageTitleStyle)),
                ),
                Table(
                  children: [
                    TableRow(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              FlatButton.icon(
                                  color: Colors.transparent,
                                  icon: Image.asset("assets/icons/filter.png",
                                      width: 16, height: 16),
                                  //`Icon` to display
                                  label: Text(
                                    "Filter",
                                    style: AppTheme.titleMedium,
                                    textAlign: TextAlign.left,
                                  ),
                                  //`Text` to display
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FiltersPage(
                                                onApplyFilter: (filtersData) {
                                                  widget.filtersData =
                                                      filtersData;
                                                  loadCatalogItems(
                                                      widget.catalogDataType);
                                                },
                                              )))),
                              Container(
                                  color: Color(0xffe1e1e1),
                                  width: 1,
                                  height: 20),
                              FlatButton.icon(
                                  color: Colors.transparent,
                                  icon: Image.asset("assets/icons/sort-by.png",
                                      width: 16, height: 16),
                                  //`Icon` to display
                                  label: Text(
                                    "Sort by",
                                    style: AppTheme.titleMedium,
                                    textAlign: TextAlign.left,
                                  ),
                                  //`Text` to display
                                  onPressed: () =>
                                      debugPrint('Sort by button pressed'))
                            ],
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              IconButton(
                                  onPressed: () => setState(() =>
                                      _viewState = ViewState.TWO_COLUMN_VIEW),
                                  icon: Image.asset(
                                      _viewState == ViewState.TWO_COLUMN_VIEW
                                          ? "assets/icons/2grid-view-active.png"
                                          : "assets/icons/2grid-view.png",
                                      width: 20,
                                      height: 20),
                                  tooltip: "2 Column View"),
                              Container(
                                  color: Color(0xffe1e1e1),
                                  width: 1,
                                  height: 20),
                              IconButton(
                                  onPressed: () => setState(() =>
                                      _viewState = ViewState.THREE_COLUMN_VIEW),
                                  icon: Image.asset(
                                      _viewState == ViewState.THREE_COLUMN_VIEW
                                          ? "assets/icons/3grid-view-active.png"
                                          : "assets/icons/3grid-view.png",
                                      width: 20,
                                      height: 20),
                                  tooltip: "3 Column View")
                            ],
                          ))
                    ])
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  color: AppTheme.dividerColor,
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
            Expanded(
                child: _catalogItems.length > 0
                    ? StaggeredGridView.countBuilder(
                        crossAxisCount:
                            ViewStateHelper.getColumnCount(_viewState),
                        itemCount: _catalogItems.length,
                        itemBuilder: (BuildContext context, int index) =>
                            GestureDetector(
                                onTap: () => widget
                                    .onItemClick(_catalogItems[index].itemId),
                                child: CatalogItem(
                                    viewModel: _catalogItems[index],
                                    viewState: _viewState,
                                    onAddedInCart: (catalogItem) =>
                                        addItemToTheCart(catalogItem))),
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.fit(1))
                    : _isLoading
                        ? Container()
                        : Align(
                            alignment: Alignment.center,
                            child: Text(
                              Strings.noCatalogItemsFound,
                              textAlign: TextAlign.center,
                              style: AppTheme.informativeCenterMessage,
                            ))),
          ])),
      _isLoading
          ? Loaders.irysDiamondLoader
          : Container(width: 0, height: 0, color: Colors.transparent)
    ]));
  }

  void loadCatalogItems(CatalogDataType catalogDataType) async {
    var data;
    if (widget != null && widget.filtersData != null) {
      data = await HomePageProcess()
          .getAllFilteredCatalogItems(widget.filtersData);
    } else {
      switch (catalogDataType) {
        case CatalogDataType.ALL:
          data = await HomePageProcess().getAllCatalogItems();
          break;
        case CatalogDataType.COLLECTION:
          data = await HomePageProcess().getCatalogItems(_collectionID);
          break;
        case CatalogDataType.CATEGORY:
          data = await HomePageProcess().getCategoryItems(_categoryType);
          break;
        case CatalogDataType.CLASSIFICATION:
          data = await HomePageProcess()
              .getClassificationItems(_classificationType);
          break;
        default:
          data = await HomePageProcess().getAllCatalogItems();
          break;
      }
    }
    setState(() {
      _isLoading = false;
      _catalogItems = data;
    });
  }

  void addItemToTheCart(CatalogItemViewModel viewModel) async {
    try {
      await HomePageProcess().addItemToCart(viewModel);
      AlertDialogBox.showPopupAlertBox(
          context: context,
          titleText: Strings.dataSyncTitle,
          contentText: Strings.itemAddedInCartMessageFormat
              .replaceFirst("%s", viewModel.itemName),
          positiveButtonText: Strings.okButtonTitle);
    } catch (exception) {
      AlertDialogBox.showPopupAlertBox(
          context: context,
          titleText: Strings.messageTitle,
          contentText: Strings.itemAlreadyPresentInCartMessageFormat
              .replaceFirst("%s", viewModel.itemName),
          positiveButtonText: Strings.okButtonTitle);
    }
  }
}
