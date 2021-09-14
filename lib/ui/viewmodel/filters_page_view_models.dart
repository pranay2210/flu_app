import 'dart:collection';
import 'dart:core';

import 'package:flutter/material.dart';

class FilterItemViewModel {
  String title = "";
  String subTitle = "";
  String tableName = "";
  String columnName = "";

  FilterItemViewModel(
      this.title, this.subTitle, this.tableName, this.columnName);
}

class SingleValueSelectionViewModel extends FilterItemViewModel {
  List<String> values = List();
  String selection = "";

  SingleValueSelectionViewModel(
      {String title,
      String subTitle,
      String tableName,
      String columnName,
      this.values,
      this.selection})
      : super(title, subTitle, tableName, columnName);

  @override
  String toString() {
    return "{title: $title, subTitle: $subTitle, tableName: $tableName, columnName: $columnName, values: ${values.toString()}, selection: $selection}";
  }
}

class MultipleValueSelectionViewModel extends FilterItemViewModel {
  List<String> values = List();
  HashSet<String> selection = HashSet();

  MultipleValueSelectionViewModel(
      {String title,
      String subTitle,
      String tableName,
      String columnName,
      this.values,
      this.selection})
      : super(title, subTitle, tableName, columnName);

  @override
  String toString() {
    return "{title: $title, subTitle: $subTitle, tableName: $tableName, columnName: $columnName, values: ${values.toString()}, selection: ${selection.toString()}}";
  }
}

class PriceRangeSelectionViewModel extends FilterItemViewModel {
  double minPrice;
  double maxPrice;
  String unit;
  RangeValues selectedRange;

  PriceRangeSelectionViewModel(
      {String title,
      String subTitle,
      String tableName,
      String columnName,
      this.minPrice,
      this.maxPrice,
      this.unit,
      this.selectedRange})
      : super(title, subTitle, tableName, columnName);

  @override
  String toString() {
    return "{title: $title, subTitle: $subTitle, tableName: $tableName, columnName: $columnName, minPrice: $minPrice, maxPrice: $maxPrice, unit: $unit, selectedRange: ${selectedRange.toString()}}";
  }
}
