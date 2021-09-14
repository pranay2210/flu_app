import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiara_app/models/enum_types.dart';
import 'package:tiara_app/ui/config/resources.dart' as prefix0;
import 'package:tiara_app/ui/config/size_config.dart';
import 'package:tiara_app/ui/config/strings.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/viewmodel/catalog_screen_view_models.dart';
import 'package:tiara_app/ui/viewmodel/key_value_item_view_model.dart';
import 'package:tiara_app/ui/widgets/key_value_item.dart';

typedef void ItemAddedInCartCallback(CatalogItemViewModel catalogItemViewModel);

class CatalogItem extends StatelessWidget {
  CatalogItemViewModel viewModel;
  ViewState viewState;
  final ItemAddedInCartCallback onAddedInCart;
  double _spacing;
  double _padding;
  double _iconImageSize;

  CatalogItem(
      {@required this.viewModel,
      @required this.viewState,
      @required this.onAddedInCart}) {
    _spacing = viewState == ViewState.THREE_COLUMN_VIEW ? 8 : 12;
    _padding = viewState == ViewState.THREE_COLUMN_VIEW ? 4 : 6;
    _iconImageSize = viewState == ViewState.THREE_COLUMN_VIEW
        ? 2 * SizeConfig.imageSizeMultiplier
        : 2 * 1.5 * SizeConfig.imageSizeMultiplier;
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Card(
            margin: EdgeInsets.all(_spacing),
            color: Colors.white,
            child: Column(children: <Widget>[
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1,
                    child: CachedNetworkImage(
                      placeholder: (context, url) =>
                          Image.asset("assets/images/no-image.png"),
                      imageUrl: viewModel.itemImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Table(
                    children: [
                      TableRow(children: [
                        Container(
                            margin: EdgeInsets.only(
                                left: 2 * _padding,
                                right: _padding,
                                top: _padding,
                                bottom: _padding),
                            child: Column(
                              children: <Widget>[
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      viewModel.itemName,
                                      style: viewState ==
                                              ViewState.THREE_COLUMN_VIEW
                                          ? AppTheme.titleMedium
                                          : AppTheme.titleMediumScaled,
                                      textAlign: TextAlign.left,
                                    )),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      viewModel.itemId,
                                      style: viewState ==
                                              ViewState.THREE_COLUMN_VIEW
                                          ? AppTheme.subTitleMedium
                                          : AppTheme.subTitleMediumScaled,
                                      textAlign: TextAlign.left,
                                    ))
                              ],
                            )),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(
                                  viewState == ViewState.TWO_COLUMN_VIEW
                                      ? _padding
                                      : 0),
                              child: RawMaterialButton(
                                  constraints: BoxConstraints(),
                                  padding: EdgeInsets.all(_padding),
                                  onPressed: () => onAddedInCart(viewModel),
                                  child: Padding(
                                      padding: EdgeInsets.all(_padding),
                                      child: Image.asset(prefix0.Icons.cartIcon,
                                          width: _iconImageSize,
                                          height: _iconImageSize)),
                                  shape: CircleBorder(),
                                  elevation: 1.0,
                                  fillColor: Color(0xff012340)),
                            )),
                      ])
                    ],
                  )
                ],
              ),
              getItemSummaryData(),
              Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(
                          left: 2 * _padding,
                          right: _padding,
                          top: 2 * _padding,
                          bottom: _padding),
                      child: Column(children: <Widget>[
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              Strings.sellingPrice,
                              style: viewState == ViewState.THREE_COLUMN_VIEW
                                  ? AppTheme.subTitleMedium
                                  : AppTheme.subTitleMediumScaled,
                              textAlign: TextAlign.left,
                            )),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "${Strings.dollarSymbol} ${viewModel.sellingPrice}",
                              style: viewState == ViewState.THREE_COLUMN_VIEW
                                  ? AppTheme.titleMedium
                                  : AppTheme.titleMediumScaled,
                              textAlign: TextAlign.left,
                            )),
                      ])),
                  Container(
                    color: ItemStatusHelper.getColor(viewModel.itemStatus),
                    height: _padding / 1.5,
                    width: double.infinity,
                  )
                ],
              )
            ])));
  }

  getItemSummaryData() {
    int summaryItemsCount = viewModel.infoData.length;
    if (summaryItemsCount == 0) {
      return Container();
    } else {
      int numberOfRows =
          summaryItemsCount ~/ 2 + (summaryItemsCount.isOdd ? 1 : 0);
      var tableRows = List<TableRow>();
      for (int i = 0; i < numberOfRows; i++) {
        tableRows.add(TableRow(
            children: [getKeyValueItem(i * 2), getKeyValueItem(i * 2 + 1)]));
      }
      return Table(
        border: TableBorder.all(width: 1.0, color: AppTheme.borderColor),
        children: tableRows,
      );
    }
  }

  KeyValueItem getKeyValueItem(int position) {
    if (position < viewModel.infoData.length) {
      return KeyValueItem(viewModel.infoData[position], viewState);
    } else {
      return KeyValueItem(KeyValueItemViewModel("", ""), viewState);
    }
  }
}
