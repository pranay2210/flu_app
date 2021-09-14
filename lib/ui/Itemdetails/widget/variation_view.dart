import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/mockdata/MockDataSource.dart';
import 'package:tiara_app/models/variations_view.dart';

import '../item_details_page.dart';

var _isBasicInformationExpanded = true;
bool _isMetalDetailsExpanded = true;
bool _isStoneDetailsExpanded = true;
bool _isPricingDetailsExpanded = true;
bool _isFindingExpanded = true;

class VariationsWidget extends StatefulWidget {
  final Item _item;

  VariationsWidget(this._item);

  _VariationsWidgetState createState() => _VariationsWidgetState(_item);
}

TableCell tableCell(String value) {
  return TableCell(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Text(
        value,
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    ),
  );
}

class _VariationsWidgetState extends State<VariationsWidget> {
  final Item _item;

  _VariationsWidgetState(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Variations',
            style: headerTestStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            /*decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 0.5)),*/
            child: SingleChildScrollView(
//              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 38,
                    padding: const EdgeInsets.only(left: 8.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 229, 229),
                        border: Border.all(color: Colors.grey, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Basic Information',
                          style: headerTestStyle,
                        ),
                        IconButton(
                          icon: Icon(_isBasicInformationExpanded
                              ? Icons.remove
                              : Icons.add),
                          onPressed: () {
                            setState(() {
                              _isBasicInformationExpanded =
                                  !_isBasicInformationExpanded;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Visibility(
                    visible: _isBasicInformationExpanded,
                    child: createBasicDetails(),
                  ),
                  Visibility(
                    visible: _isBasicInformationExpanded,
                    child: SizedBox(
                      height: 8,
                    ),
                  ),
                  Container(
                    height: 38,
                    padding: const EdgeInsets.only(left: 8.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 229, 229),
                        border: Border.all(color: Colors.grey, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Metal Details',
                          style: headerTestStyle,
                        ),
                        IconButton(
                          icon: Icon(_isMetalDetailsExpanded
                              ? Icons.remove
                              : Icons.add),
                          onPressed: () {
                            setState(() {
                              _isMetalDetailsExpanded =
                                  !_isMetalDetailsExpanded;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Visibility(
                    visible: _isMetalDetailsExpanded,
                    child: createBasicDetails(),
                  ),
                  Visibility(
                    visible: _isMetalDetailsExpanded,
                    child: SizedBox(
                      height: 8,
                    ),
                  ),
                  Container(
                    height: 38,
                    padding: const EdgeInsets.only(left: 8.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 229, 229),
                        border: Border.all(color: Colors.grey, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Stone Details',
                          style: headerTestStyle,
                        ),
                        IconButton(
                          icon: Icon(_isStoneDetailsExpanded
                              ? Icons.remove
                              : Icons.add),
                          onPressed: () {
                            setState(() {
                              _isStoneDetailsExpanded =
                                  !_isStoneDetailsExpanded;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(),
                  Visibility(
                    visible: _isStoneDetailsExpanded,
                    child: createBasicDetails(),
                  ),
                  Visibility(
                    visible: _isStoneDetailsExpanded,
                    child: verticalSpace(),
                  ),
                  Container(
                    height: 38,
                    padding: const EdgeInsets.only(left: 8.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 229, 229),
                        border: Border.all(color: Colors.grey, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Pricing Details',
                          style: headerTestStyle,
                        ),
                        IconButton(
                          icon: Icon(_isPricingDetailsExpanded
                              ? Icons.remove
                              : Icons.add),
                          onPressed: () {
                            setState(() {
                              _isPricingDetailsExpanded =
                                  !_isPricingDetailsExpanded;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(),
                  Visibility(
                    visible: _isPricingDetailsExpanded,
                    child: createBasicDetails(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Table createBasicDetails() {
    List<TableRow> basicDetailsRows = [];

    List<VariationsView> dataViews = MockDataSource.getMockVariationView();

    for (VariationsView data in dataViews) {
      List<TableCell> cells = [];
      cells.add(tableCell(data.name));
      for (String value in data.values) {
        cells.add(tableCell(value));
      }
      basicDetailsRows.add(TableRow(children: cells));
    }
    return Table(
        border: TableBorder.all(width: 1.0, color: Colors.black),
        children: basicDetailsRows);
  }

  SizedBox verticalSpace() {
    return SizedBox(
      height: 8,
    );
  }
}
