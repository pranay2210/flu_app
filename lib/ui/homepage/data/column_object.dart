class ColumnField {
  String columnName;
  String columnValue;

  ColumnField(this.columnName, this.columnValue);

  @override
  String toString() {
    return "[ColumnName : $columnName, ColumnValue : $columnValue]";
  }
}
