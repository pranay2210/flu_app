import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/tag.dart';
import 'package:tiara_app/ui/config/strings.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/viewmodel/filters_page_view_models.dart';
import 'package:tiara_app/ui/widgets/appbar/appbar.dart';

import 'data/filter_process.dart';

typedef void ApplyFilterCallback(List<FilterItemViewModel> filtersData);

class FiltersPage extends StatefulWidget {
  List<FilterItemViewModel> filtersData;
  final ApplyFilterCallback onApplyFilter;

  FiltersPage({this.filtersData, this.onApplyFilter});

  @override
  State<StatefulWidget> createState() {
    return _FiltersPageState();
  }
}

class _FiltersPageState extends State<FiltersPage> {
  final Set<String> _tagsDataSet = HashSet();
  bool showChild = false;
  int filterIndex;

  @override
  void initState() {
    super.initState();
    loadFiltersData();
    filterIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(height: 58),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Column(children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(Strings.filtersPageTitle,
                                style: AppTheme.pageTitleStyle)),
                      )
                    ]),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      color: AppTheme.dividerColor,
                      height: 1,
                      width: double.infinity,
                    ),
                    getTagsData(),
                    getTagsConditionalDivider(),
                    getFiltersDataView()
                  ],
                ),
                Positioned(
                  child: new Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0),
                                side: BorderSide(
                                    color: AppTheme.rangeSliderColor)),
                            color: Colors.white,
                            textColor: AppTheme.rangeSliderColor,
                            padding: EdgeInsets.all(8.0),
                            onPressed: () => setState(() => clearAllFilters()),
                            child: Text(
                              Strings.buttonClearFilter,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0),
                                side: BorderSide(
                                    color: AppTheme.rangeSliderColor)),
                            onPressed: () {
                              widget.onApplyFilter(widget.filtersData);
                              if (Navigator.canPop(context))
                                Navigator.pop(context);
                            },
                            color: AppTheme.rangeSliderColor,
                            textColor: Colors.white,
                            child: Text(Strings.buttonApplyFilter,
                                style: TextStyle(fontSize: 14)),
                          ),
                        ],
                      )),
                )
              ],
            )));
  }

  Widget getTagsData() {
    _tagsDataSet.clear();
    for (FilterItemViewModel filterItem in widget.filtersData) {
      if (filterItem is MultipleValueSelectionViewModel) {
        MultipleValueSelectionViewModel multipleValueModel =
            filterItem as MultipleValueSelectionViewModel;
        _tagsDataSet.addAll(multipleValueModel.selection);
      } else {
        //TODO Nothing
      }
    }
    List<String> _items = _tagsDataSet.toList(growable: false);
    return Tags(
        itemCount: _items.length, // required
        itemBuilder: (int index) {
          final item = _items[index];
          return ItemTags(
              key: Key(index.toString()),
              index: index,
              // required
              title: item,
              active: true,
              activeColor: AppTheme.tagsBgColor,
              textColor: Colors.white,
              pressEnabled: false,
              removeButton: ItemTagsRemoveButton(
                  backgroundColor: Colors.white, color: AppTheme.tagsBgColor),
              onRemoved: () => setState(() {
                    for (FilterItemViewModel filterItem in widget.filtersData) {
                      if (filterItem is MultipleValueSelectionViewModel) {
                        MultipleValueSelectionViewModel multipleValueModel =
                            filterItem as MultipleValueSelectionViewModel;
                        if (multipleValueModel.selection
                            .contains(_items[index])) {
                          multipleValueModel.selection.remove(_items[index]);
                        }
                      }
                    }
                  }),
              textStyle: AppTheme.tagsTextStyle,
              color: AppTheme.tagsBgColor,
              combine: ItemTagsCombine.withTextBefore);
        });
  }

  Widget getTagsConditionalDivider() {
    if (_tagsDataSet.isNotEmpty) {
      return Container(
        margin: EdgeInsets.all(10),
        color: AppTheme.dividerColor,
        height: 1,
        width: double.infinity,
      );
    } else {
      return Container();
    }
  }

  Widget getFiltersDataView() {
    FilterItemViewModel filterItemViewModel =
        widget.filtersData.isNotEmpty ? widget.filtersData[filterIndex] : null;
    if (filterItemViewModel != null) {
      return Row(children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            height: 600,
            margin: EdgeInsets.all(5),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: AppTheme.dividerColor,
              ),
              itemCount: widget.filtersData.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(
                      widget.filtersData[index].title,
                      style: AppTheme.titleRegular,
                    ),
                    onTap: () => setState(() {
                          filterIndex = index;
                        }),
                    trailing:
                        index == filterIndex ? Icon(Icons.arrow_right) : null);
              },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 600,
            margin: EdgeInsets.all(5),
            child: getFilterItemWidget(filterItemViewModel),
          ),
        )
      ]);
      ;
    } else {
      return Container();
    }
  }

  Widget getFilterItemWidget(FilterItemViewModel filterItem) {
    if (filterItem != null) {
      if (filterItem is MultipleValueSelectionViewModel) {
        MultipleValueSelectionViewModel multipleValueModel =
            filterItem as MultipleValueSelectionViewModel;
        return ListView.builder(
            itemCount: multipleValueModel.values.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Row(children: <Widget>[
                  Expanded(
                    child: Text(
                      multipleValueModel.values[index],
                      style: AppTheme.titleRegular,
                    ),
                  ),
                  Checkbox(
                    activeColor: AppTheme.rangeSliderColor,
                    value: multipleValueModel.selection
                        .contains(multipleValueModel.values[index]),
                    onChanged: (bool isChecked) => setState(() {
                      if (isChecked) {
                        multipleValueModel.selection
                            .add(multipleValueModel.values[index]);
                      } else {
                        multipleValueModel.selection
                            .remove(multipleValueModel.values[index]);
                      }
                    }),
                  ),
                ]),
              );
            });
      } else {
        return Container();
      }
    } else {
      return Container();
    }
  }

  loadFiltersData() async {
    List<FilterItemViewModel> filtersModelList = widget.filtersData;
    if (filtersModelList == null) {
      filtersModelList = await FilterProcess().filterGenerateValuesForMenu();
      debugPrint(
          "size : ${filtersModelList.length}, data : ${filtersModelList.toString()}");
    }
    setState(() {
      widget.filtersData = filtersModelList;
    });
  }

  clearAllFilters() {
    for (FilterItemViewModel filterItem in widget.filtersData) {
      if (filterItem is MultipleValueSelectionViewModel) {
        MultipleValueSelectionViewModel multipleValueModel =
            filterItem as MultipleValueSelectionViewModel;
        multipleValueModel.selection.clear();
      }
    }
  }
}
