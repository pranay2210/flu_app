import 'dart:collection';

import 'package:tiara_app/adapters/db_adapter.dart';
import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/network/dataImportService/http_import_data_service.dart';
import 'package:tiara_app/ui/viewmodel/filters_page_view_models.dart';

class FilterProcess {
  Future<List<MultipleValueSelectionViewModel>>
      filterGenerateValuesForMenu() async {
    List<MultipleValueSelectionViewModel> multipleSelectionFilterItemsList =
        List();
    List<ColumnSetting> columnList =
        await appDatabase.columnSettingDao.getAllFilterData();
    for (var columnItem in columnList) {
      if (columnItem.filter) {
        List<String> filteringValues =
            await appDatabase.getFilteringValuesonCall(
                DBAdapter().adaptColumnName(columnItem.fieldName.toString()),
                DBAdapter().adaptTableName(columnItem.tableNameVal.toString()));
        multipleSelectionFilterItemsList.add(MultipleValueSelectionViewModel(
            title: columnItem.customDisplayName,
            subTitle: "",
            tableName: columnItem.tableNameVal,
            columnName: columnItem.fieldName,
            values: filteringValues,
            selection: HashSet()));
      }
    }
    return multipleSelectionFilterItemsList;
  }

  filterProcess() async {
    Map<String, List<String>> itemFilteredValuesForStones =
        Map<String, List<String>>();
    Map<String, List<String>> itemFilteredValuesForMaterial =
        Map<String, List<String>>();

    List<MainItemManager> itemManagersList =
        await appDatabase.filterMappingJoining();
    for (var itemManager in itemManagersList) {
      List<String> stoneIdsList =
          itemFilteredValuesForStones[itemManager.itemsCode];
      if (stoneIdsList == null) {
        stoneIdsList = List<String>();
      }
      stoneIdsList.add(itemManager.stones);
      itemFilteredValuesForStones[itemManager.itemsCode] = stoneIdsList;

      List<String> materialList =
          itemFilteredValuesForMaterial[itemManager.itemsCode];
      if (materialList == null) {
        materialList = List<String>();
      }
      materialList.add(itemManager.materials);
      itemFilteredValuesForMaterial[itemManager.itemsCode] = materialList;
    }
  }
}
