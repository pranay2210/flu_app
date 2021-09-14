import 'package:flutter/material.dart';
import 'package:tiara_app/models/enum_types.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/viewmodel/key_value_item_view_model.dart';

class KeyValueItem extends StatelessWidget {
  String strKey;
  String strValue;
  ViewState _viewState;
  double _padding;

  KeyValueItem(
      KeyValueItemViewModel keyValueItemViewModel, ViewState viewState) {
    this.strKey = keyValueItemViewModel.key;
    this.strValue = keyValueItemViewModel.value;
    this._viewState = viewState;
    this._padding = viewState == ViewState.THREE_COLUMN_VIEW ? 4 : 6;
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        1: FractionColumnWidth(3 / 10),
        2: FractionColumnWidth(7 / 10)
      },
      children: [
        TableRow(children: [
          Padding(
              padding: EdgeInsets.only(
                  left: 2 * _padding, top: _padding, bottom: _padding),
              child: Text(strKey,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: _viewState == ViewState.THREE_COLUMN_VIEW
                      ? AppTheme.subTitleRegular
                      : AppTheme.subTitleRegularScaled)),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(
                      top: _padding, bottom: _padding, right: 2 * _padding),
                  child: Text(
                    strValue,
                    textAlign: TextAlign.right,
                    style: _viewState == ViewState.THREE_COLUMN_VIEW
                        ? AppTheme.subTitleMedium
                        : AppTheme.subTitleMediumScaled,
                    overflow: TextOverflow.ellipsis,
                  )))
        ])
      ],
    );
  }
}
