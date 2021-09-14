import 'package:flutter/material.dart';
import 'package:tiara_app/models/enum_types.dart';
import 'package:tiara_app/ui/config/resources.dart' as prefix0;
import 'package:tiara_app/ui/config/size_config.dart';
import 'package:tiara_app/ui/config/strings.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/viewmodel/cart_screen_view_models.dart';
import 'package:tiara_app/ui/viewmodel/key_value_item_view_model.dart';
import 'package:tiara_app/ui/widgets/key_value_item.dart';
import 'package:tiara_app/ui/widgets/number_count_view.dart';

typedef void CartItemRemoveCallback(CartItemViewModel cartItemViewModel);
typedef void CartItemQuantityChangedCallback(
    CartItemViewModel cartItemViewModel);

class CartItem extends StatefulWidget {
  CartItemViewModel viewModel;
  ViewState viewState;
  final CartItemRemoveCallback onItemRemove;
  final CartItemQuantityChangedCallback onQuantityChange;

  CartItem(
      {@required this.viewModel,
      @required this.viewState,
      @required this.onItemRemove,
      @required this.onQuantityChange});

  @override
  State<StatefulWidget> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  double _spacing;
  double _padding;
  double _iconImageSize;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    ViewState viewState =
        widget != null ? widget.viewState : ViewState.THREE_COLUMN_VIEW;
    _spacing = viewState == ViewState.THREE_COLUMN_VIEW ? 8 : 12;
    _padding = viewState == ViewState.THREE_COLUMN_VIEW ? 4 : 6;
    _iconImageSize = viewState == ViewState.THREE_COLUMN_VIEW
        ? 2 * SizeConfig.imageSizeMultiplier
        : 2 * 1.5 * SizeConfig.imageSizeMultiplier;

    return GridTile(
        child: Container(
            color: Colors.transparent,
            child: Container(
                color: Colors.transparent,
                margin: EdgeInsets.only(bottom: _iconImageSize),
                child: Stack(children: [
                  Card(
                      margin: EdgeInsets.all(_spacing),
                      color: Colors.white,
                      child: Column(children: <Widget>[
                        Stack(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 1,
                              child:
                                  Image.network(widget.viewModel.itemImagePath),
                            ),
                            Positioned(
                                left: 2 * _padding,
                                top: 2 * _padding,
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          widget.viewModel.itemName,
                                          style: viewState ==
                                                  ViewState.THREE_COLUMN_VIEW
                                              ? AppTheme.titleMedium
                                              : AppTheme.titleMediumScaled,
                                          textAlign: TextAlign.left,
                                        )),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          widget.viewModel.itemId,
                                          style: viewState ==
                                                  ViewState.THREE_COLUMN_VIEW
                                              ? AppTheme.subTitleMedium
                                              : AppTheme.subTitleMediumScaled,
                                          textAlign: TextAlign.left,
                                        ))
                                  ],
                                )),
                            Positioned(
                                top: 2 * _padding,
                                right: 2 * _padding,
                                child: RawMaterialButton(
                                    constraints: BoxConstraints(),
                                    padding: EdgeInsets.all(_padding),
                                    onPressed: () =>
                                        widget.onItemRemove(widget.viewModel),
                                    child: Padding(
                                        padding: EdgeInsets.all(_padding),
                                        child: Image.asset(
                                            prefix0.Icons.shoppingBagRemoveIcon,
                                            width: _iconImageSize,
                                            height: _iconImageSize)),
                                    shape: CircleBorder(),
                                    elevation: 1.0,
                                    fillColor: Color(0xff012340)))
                          ],
                        ),
                        getItemSummaryData(),
                        Table(
                          columnWidths: {
                            1: FractionColumnWidth(2 / 5),
                            2: FractionColumnWidth(3 / 5)
                          },
                          children: [
                            TableRow(children: [
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
                                          style: viewState ==
                                                  ViewState.THREE_COLUMN_VIEW
                                              ? AppTheme.subTitleMedium
                                              : AppTheme.subTitleMediumScaled,
                                          textAlign: TextAlign.left,
                                        )),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "\$ ${widget.viewModel.sellingPrice}",
                                          style: viewState ==
                                                  ViewState.THREE_COLUMN_VIEW
                                              ? AppTheme.titleMedium
                                              : AppTheme.titleMediumScaled,
                                          textAlign: TextAlign.left,
                                        )),
                                  ])),
                              Container(
                                margin: EdgeInsets.all(_padding),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: NumberCountView(
                                      initialValue: widget.viewModel.quantity,
                                      minValue: 1,
                                      maxValue: 10,
                                      step: 1,
                                      buttonSize: _iconImageSize,
                                      color: Colors.white,
                                      textStyle: viewState ==
                                              ViewState.THREE_COLUMN_VIEW
                                          ? AppTheme.subTitleRegular
                                          : AppTheme.subTitleRegularScaled,
                                      decimalPlaces: 0,
                                      onChanged: (value) {
                                        setState(() {
                                          widget.viewModel.quantity = value;
                                          widget.onQuantityChange(
                                              widget.viewModel);
                                        });
                                      },
                                    )),
                              )
                            ])
                          ],
                        ),
                        getMoreDetailsView(viewState)
                      ])),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                          child: SizedBox(
                        width: _iconImageSize * 2,
                        height: _iconImageSize * 2,
                        child: FloatingActionButton(
                            onPressed: () =>
                                setState(() => _isExpanded = !_isExpanded),
                            backgroundColor: Colors.white,
                            elevation: 1,
                            tooltip: _isExpanded ? 'Collapse' : "Expand",
                            child: _isExpanded
                                ? Image.asset(
                                    "assets/icons/minus-dark-blue.png",
                                    width: _iconImageSize,
                                    height: _iconImageSize)
                                : Image.asset("assets/icons/add-dark-blue.png",
                                    width: _iconImageSize,
                                    height: _iconImageSize)),
                      ))),
                ]))));
  }

  Widget getMoreDetailsView(ViewState viewState) {
    return _isExpanded
        ? Column(
            children: <Widget>[
              Container(height: 1.0, color: AppTheme.borderColor),
              Container(
                  margin: EdgeInsets.only(
                      left: 2 * _padding,
                      right: _padding,
                      top: 2 * _padding,
                      bottom: _padding),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Strings.labelMoreDetails,
                        style: viewState == ViewState.THREE_COLUMN_VIEW
                            ? AppTheme.titleMedium
                            : AppTheme.titleMediumScaled,
                        textAlign: TextAlign.left,
                      ))),
              getMoreItemSummaryData(),
              Container(
                  margin: EdgeInsets.only(bottom: _spacing),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Padding(
                              padding: EdgeInsets.all(_padding),
                              child: Column(
                                children: <Widget>[
                                  Text(Strings.editImage,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: viewState ==
                                              ViewState.THREE_COLUMN_VIEW
                                          ? AppTheme.subTitleRegular
                                          : AppTheme.subTitleRegularScaled),
                                  Padding(
                                      padding: EdgeInsets.all(_padding),
                                      child: AspectRatio(
                                          aspectRatio: 1,
                                          child: IconButton(
                                            onPressed: () => {},
                                            icon: Image.asset(
                                                "assets/icons/image-snippets.png"),
                                          )))
                                ],
                              ))),
                      Expanded(
                          flex: 1,
                          child: Padding(
                              padding: EdgeInsets.all(_padding),
                              child: Column(
                                children: <Widget>[
                                  Text(Strings.voiceSnippets,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: viewState ==
                                              ViewState.THREE_COLUMN_VIEW
                                          ? AppTheme.subTitleRegular
                                          : AppTheme.subTitleRegularScaled),
                                  Padding(
                                      padding: EdgeInsets.all(_padding),
                                      child: AspectRatio(
                                          aspectRatio: 1,
                                          child: IconButton(
                                            onPressed: () => {},
                                            icon: Image.asset(
                                                "assets/icons/voice-snippets.png"),
                                          )))
                                ],
                              ))),
                      Expanded(
                          flex: 1,
                          child: Padding(
                              padding: EdgeInsets.all(_padding),
                              child: Column(
                                children: <Widget>[
                                  Text(Strings.textSnippets,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: viewState ==
                                              ViewState.THREE_COLUMN_VIEW
                                          ? AppTheme.subTitleRegular
                                          : AppTheme.subTitleRegularScaled),
                                  Padding(
                                      padding: EdgeInsets.all(_padding),
                                      child: AspectRatio(
                                          aspectRatio: 1,
                                          child: IconButton(
                                            onPressed: () => {},
                                            icon: Image.asset(
                                                "assets/icons/text-snippets.png"),
                                          )))
                                ],
                              )))
                    ],
                  )),
              Container(
                color: ItemStatusHelper.getColor(widget.viewModel.itemStatus),
                height: _padding / 1.5,
                width: double.infinity,
              )
            ],
          )
        : Container(
            color: ItemStatusHelper.getColor(widget.viewModel.itemStatus),
            height: _padding / 1.5,
            width: double.infinity,
          );
  }

  getItemSummaryData() {
    int summaryItemsCount = widget.viewModel.infoData.length;
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
    if (position < widget.viewModel.infoData.length) {
      return KeyValueItem(
          widget.viewModel.infoData[position], widget.viewState);
    } else {
      return KeyValueItem(KeyValueItemViewModel("", ""), widget.viewState);
    }
  }

  getMoreItemSummaryData() {
    int summaryItemsCount = widget.viewModel.infoData.length;
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
}
