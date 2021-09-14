import 'package:recase/recase.dart';

class DBAdapter {
  String adaptTableName(String tableName) {
    switch (tableName) {
      case "iItemMasterBOM":
        return "items";
        break;

      case "iStoneMaster":
        return "stones";
        break;

      case "iItemStoneMapping":
        return "stone_mappings";
        break;

      case "iMaterialMaster":
        return "materials";
        break;

      case "iItemMaterialMapping":
        return "material_mappings";
        break;

      case "iMiscellaneousMaster":
        return "miscellaneouses";
        break;

      case "iItemMiscellaneousMaster":
        return "miscellaneous_mappings";
        break;

      case "iLaborMaster":
        return "labors";
        break;

      case "iItemLaborMapping":
        return "labor_mappings";
        break;

      case "iCollectionMaster":
        return "collections";
        break;

      case "iItemCollectionMapping":
        return "collection_mappings";
        break;

      case "iBinMaster":
        return "bins";
        break;

      case "iItemBinMapping":
        return "bin_mappings";
        break;
    }
  }

  String adaptMappingTableName(String tableName) {
    switch (tableName) {
      case "iItemMasterBOM":
        return "items";
        break;

      case "iStoneMaster":
        return "stone_mappings";
        break;

      case "iMaterialMaster":
        return "material_mappings";
        break;

      case "iSemifinishedMaster":
        return "semifinished_mappings";
        break;

      case "iMiscellaneousMaster":
        return "miscellaneous_mappings";
        break;

      case "iLaborMaster":
        return "labor_mappings";
        break;

      case "iCollectionMaster":
        return "collection_mappings";
        break;

      case "iBinMaster":
        return "bin_mappings";
        break;
    }
  }

  String adaptMappingIDName(String tableName) {
    switch (tableName) {
      case "iStoneMaster":
        return "stone_i_d";
        break;

      case "iMaterialMaster":
        return "material_i_d";
        break;

      case "iSemifinishedMaster":
        return "sf_i_d";
        break;

      case "iMiscellaneousMaster":
        return "miscellaneous_i_d";
        break;

      case "iLaborMaster":
        return "labor_i_d";
        break;

      case "iCollectionMaster":
        return "collection_i_d";
        break;

      case "iBinMaster":
        return "bin_i_d";
        break;
    }
  }

  String adaptColumnName(String columnName) {
    ReCase rc = new ReCase(columnName);
    return rc.snakeCase;
  }
}
