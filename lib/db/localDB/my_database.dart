import 'package:flutter/material.dart' as prefix0;
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:tiara_app/ui/homepage/data/filter_objects_to_store_selected_values.dart';
import 'package:tiara_app/ui/viewmodel/filters_page_view_models.dart';

part 'my_database.g.dart';

@DataClassName("CollectionMapping")
class CollectionMappings extends Table {
  IntColumn get autoCollectionMappingID => integer().autoIncrement()();

  TextColumn get itemID => text().withLength(min: 1, max: 50)();

  TextColumn get collectionID => text().withLength(min: 1, max: 50)();

  TextColumn get lastUpdated => text().withLength(min: 0, max: 250)();

  TextColumn get row => text().nullable()();

//Set<Column> get primaryKey => {autoCollectionMappingID,itemID};
}

@DataClassName("Collection")
class Collections extends Table {
  IntColumn get autoCollectionID => integer().autoIncrement()();

  TextColumn get collectionID => text().withLength(min: 1, max: 50)();

  TextColumn get collectionERPKey => text().nullable()();

  TextColumn get collectionName => text().nullable()();

  TextColumn get isSet => text().nullable()();

  TextColumn get collectionDescription => text().nullable()();

  TextColumn get collectionImageName => text().nullable()();

  TextColumn get row => text().nullable()();

  TextColumn get reserved1 => text().nullable()();

  TextColumn get reserved2 => text().nullable()();

  TextColumn get reserved3 => text().nullable()();

  TextColumn get reserved4 => text().nullable()();

  TextColumn get reserved5 => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

// Set<Column> get primaryKey => {autoCollectionID,collectionID};
}

@DataClassName("Classification")
class Classifications extends Table {
  IntColumn get autoClassificationID => integer().autoIncrement()();

  TextColumn get classificationSettingsID => text().nullable()();

  TextColumn get enumColumnName => text().nullable()();

  TextColumn get enumFieldValue => text().nullable()();

  TextColumn get enumFieldValueDisplayName => text().nullable()();

  TextColumn get enumFieldValueImageName => text().nullable()();

  TextColumn get classificationHeader => text().nullable()();

  TextColumn get parentClassificationID => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get tableNameVal => text().nullable()();

// Set<Column> get primaryKey => {autoClassificationID,classificationSettingsID};
}

@DataClassName("Item")
class Items extends Table {
  IntColumn get autoItemID => integer().autoIncrement()();

  TextColumn get itemID => text().withLength(min: 1, max: 50)();

  TextColumn get rfidTag => text().withLength(min: 1, max: 250)();

  TextColumn get itemERPKey => text().nullable()();

  TextColumn get skuNumber => text().nullable()();

  TextColumn get designNumber => text().nullable()();

  TextColumn get imageName => text().nullable()();

  TextColumn get itemStatus => text().nullable()();

  //TextColumn get mappingStatus => text().nullable()();

  //TextColumn get materialID => text().nullable()();

  // TextColumn get materialCode => text().nullable()();

  //TextColumn get alloyWeight => text().nullable()();

  //TextColumn get materialPurity => text().nullable()();

  TextColumn get itemDescription => text().nullable()();

  TextColumn get itemType => text().nullable()();

  TextColumn get itemCategory => text().nullable()();

  //TextColumn get collectionID => text().nullable()();

  TextColumn get size => text().nullable()();

  //TextColumn get stoneID => text().nullable()();

  //TextColumn get stoneCount => text().nullable()();

  //TextColumn get centerStoneID => text().nullable()();

  //TextColumn get centerStoneCount => text().nullable()();

  //TextColumn get laborID => text().nullable()();

  //TextColumn get sfID => text().nullable()();

  TextColumn get otherWeight => text().nullable()();

  RealColumn get netWeight => real().nullable()();

  TextColumn get company => text().nullable()();

  TextColumn get locationID => text().nullable()();

  // TextColumn get binID => text().nullable()();

  TextColumn get uom => text().nullable()();

  TextColumn get uomRef => text().nullable()();

  IntColumn get quantity => integer().nullable()();

  IntColumn get costPrice => integer().nullable()();

  IntColumn get listPrice => integer().nullable()();

  TextColumn get markUp => text().nullable()();

  TextColumn get reserved1 => text().nullable()();

  TextColumn get reserved2 => text().nullable()();

  TextColumn get reserved3 => text().nullable()();

  TextColumn get reserved4 => text().nullable()();

  TextColumn get reserved5 => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get defaultImageName => text().nullable()();

  TextColumn get row => text().nullable()();

// Set<Column> get primaryKey => {autoItemID,itemID};
}

@DataClassName("Stone")
class Stones extends Table {
  IntColumn get autoStoneID => integer().autoIncrement()();

  TextColumn get stoneID => text().nullable()();

  TextColumn get stoneERPKey => text().nullable()();

  TextColumn get stoneType => text().nullable()();

  TextColumn get stoneCode => text().nullable()();

  BoolColumn get isDiamond => boolean().nullable()();

  TextColumn get stoneDescription => text().nullable()();

  TextColumn get uom => text().nullable()();

  TextColumn get uomRef => text().nullable()();

  TextColumn get stoneCarats => text().nullable()();

  TextColumn get caratsOnHand => text().nullable()();

  TextColumn get caratsOnApproval => text().nullable()();

  TextColumn get stoneCaratRange => text().nullable()();

  TextColumn get rangeCostPrice => text().nullable()();

  TextColumn get rangeListPrice => text().nullable()();

  TextColumn get stoneClarity => text().nullable()();

  TextColumn get stoneSize => text().nullable()();

  TextColumn get stoneColor => text().nullable()();

  TextColumn get stoneCut => text().nullable()();

  TextColumn get stoneShape => text().nullable()();

  TextColumn get lab => text().nullable()();

  TextColumn get certificateNumber => text().nullable()();

  TextColumn get certificateDate => text().nullable()();

  TextColumn get certificateImage => text().nullable()();

  TextColumn get lotNumber => text().nullable()();

  TextColumn get stoneQuantity => text().nullable()();

  TextColumn get status => text().nullable()();

  TextColumn get stockAccountCode => text().nullable()();

  TextColumn get length => text().nullable()();

  TextColumn get width => text().nullable()();

  TextColumn get depth => text().nullable()();

  TextColumn get depthPercentage => text().nullable()();

  TextColumn get tabPercentage => text().nullable()();

  TextColumn get girdCond => text().nullable()();

  TextColumn get girdMin => text().nullable()();

  TextColumn get girdMax => text().nullable()();

  TextColumn get polish => text().nullable()();

  TextColumn get symm => text().nullable()();

  TextColumn get fluo => text().nullable()();

  TextColumn get crownAngle => text().nullable()();

  TextColumn get crownHeight => text().nullable()();

  TextColumn get pavilionAngle => text().nullable()();

  TextColumn get pavilionDepth => text().nullable()();

  TextColumn get culet => text().nullable()();

  TextColumn get costPrice => text().nullable()();

  TextColumn get listPrice => text().nullable()();

  TextColumn get owner1 => text().nullable()();

  TextColumn get owner2 => text().nullable()();

  TextColumn get location => text().nullable()();

  TextColumn get boxNumber => text().nullable()();

  TextColumn get remarks => text().nullable()();

  TextColumn get reserved1 => text().nullable()();

  TextColumn get reserved2 => text().nullable()();

  TextColumn get reserved3 => text().nullable()();

  TextColumn get reserved4 => text().nullable()();

  TextColumn get reserved5 => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("StoneMapping")
class StoneMappings extends Table {
  IntColumn get autoStoneMappingID => integer().autoIncrement()();

  TextColumn get itemID => text().nullable()();

  TextColumn get stoneID => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("SemiFinished")
class SemiFinisheds extends Table {
  IntColumn get autoSemiFinishedID => integer().autoIncrement()();

  TextColumn get sfID => text().nullable()();

  TextColumn get sfERPKey => text().nullable()();

  //TextColumn get ItemID => text().nullable()();

  TextColumn get sfType => text().nullable()();

  TextColumn get sfDescription => text().nullable()();

//  TextColumn get materialID => text().nullable()();
//
//  TextColumn get stoneID => text().nullable()();
//
//  TextColumn get laborID => text().nullable()();

  TextColumn get uom => text().nullable()();

  TextColumn get uomRef => text().nullable()();

  TextColumn get costPrice => text().nullable()();

  TextColumn get listPrice => text().nullable()();

  TextColumn get reserved1 => text().nullable()();

  TextColumn get reserved2 => text().nullable()();

  TextColumn get reserved3 => text().nullable()();

  TextColumn get reserved4 => text().nullable()();

  TextColumn get reserved5 => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("SemiFinishedMapping")
class SemiFinishedMappings extends Table {
  IntColumn get autoSemiFinishedMappingID => integer().autoIncrement()();

  TextColumn get itemID => text().nullable()();

  TextColumn get sfID => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("Material")
class Materials extends Table {
  IntColumn get autoMaterialID => integer().autoIncrement()();

  TextColumn get materialID => text().nullable()();

  TextColumn get materialERPKey => text().nullable()();

  TextColumn get materialName => text().nullable()();

  TextColumn get materialCode => text().nullable()();

  TextColumn get isAlloy => text().nullable()();

  TextColumn get materialPurity => text().nullable()();

  TextColumn get materialDescription1 => text().nullable()();

  TextColumn get materialDescription2 => text().nullable()();

  TextColumn get uom => text().nullable()();

  TextColumn get uomRef => text().nullable()();

  TextColumn get costPrice => text().nullable()();

  TextColumn get listPrice => text().nullable()();

  TextColumn get rateID => text().nullable()();

  TextColumn get reserved1 => text().nullable()();

  TextColumn get reserved2 => text().nullable()();

  TextColumn get reserved3 => text().nullable()();

  TextColumn get reserved4 => text().nullable()();

  TextColumn get reserved5 => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("MaterialMapping")
class MaterialMappings extends Table {
  IntColumn get autoMaterialMappingID => integer().autoIncrement()();

  TextColumn get itemID => text().nullable()();

  TextColumn get materialID => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("Labor")
class Labors extends Table {
  IntColumn get autoLaborID => integer().autoIncrement()();

  TextColumn get laborID => text().nullable()();

  TextColumn get laborERPKey => text().nullable()();

  TextColumn get processName => text().nullable()();

  TextColumn get processCode => text().nullable()();

  TextColumn get processDescription => text().nullable()();

  TextColumn get uom => text().nullable()();

  TextColumn get uomRef => text().nullable()();

  TextColumn get costPrice => text().nullable()();

  TextColumn get listPrice => text().nullable()();

  TextColumn get reserved1 => text().nullable()();

  TextColumn get reserved2 => text().nullable()();

  TextColumn get reserved3 => text().nullable()();

  TextColumn get reserved4 => text().nullable()();

  TextColumn get reserved5 => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("LaborMapping")
class LaborMappings extends Table {
  IntColumn get autoLaborMappingID => integer().autoIncrement()();

  TextColumn get itemID => text().nullable()();

  TextColumn get laborID => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("Miscellaneous")
class Miscellaneouses extends Table {
  IntColumn get autoMiscellaneousID => integer().autoIncrement()();

  TextColumn get miscellaneousID => text().nullable()();

  TextColumn get miscellaneousERPKey => text().nullable()();

  TextColumn get miscellaneousType => text().nullable()();

  TextColumn get miscellaneousDescription => text().nullable()();

  TextColumn get uom => text().nullable()();

  TextColumn get uomRef => text().nullable()();

  TextColumn get quantity => text().nullable()();

  TextColumn get costPrice => text().nullable()();

  TextColumn get listPrice => text().nullable()();

  TextColumn get reserved1 => text().nullable()();

  TextColumn get reserved2 => text().nullable()();

  TextColumn get reserved3 => text().nullable()();

  TextColumn get reserved4 => text().nullable()();

  TextColumn get reserved5 => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("MiscellaneousMapping")
class MiscellaneousMappings extends Table {
  IntColumn get autoMiscellaneousMappingID => integer().autoIncrement()();

  TextColumn get itemID => text().nullable()();

  TextColumn get miscellaneousID => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("Bin")
class Bins extends Table {
  IntColumn get autoBinID => integer().autoIncrement()();

  TextColumn get binID => text().nullable()();

  TextColumn get binERPKey => text().nullable()();

  TextColumn get binCode => text().nullable()();

  TextColumn get binName => text().nullable()();

  TextColumn get binDescription => text().nullable()();

  TextColumn get trayID => text().nullable()();

  TextColumn get trayDescription => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("BinMapping")
class BinMappings extends Table {
  IntColumn get auroBinMappingID => integer().autoIncrement()();

  TextColumn get itemID => text().nullable()();

  TextColumn get binID => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get row => text().nullable()();
}

@DataClassName("Cart")
class Carts extends Table {
  IntColumn get autoCartId => integer().autoIncrement()();

  TextColumn get itemId => text().nullable()();

  TextColumn get itemName => text().nullable()();

  TextColumn get infoData => text().nullable()();

  TextColumn get itemStatus => text().nullable()();

  RealColumn get sellingPrice => real().nullable()();

  IntColumn get leftCount => integer().nullable()();

  TextColumn get itemImagePath => text().nullable()();

  IntColumn get quantity => integer().nullable()();
}

@DataClassName("ColumnSetting")
class ColumnSettings extends Table {
  TextColumn get columnID => text().nullable()();

  TextColumn get tableNameVal => text().nullable()();

  TextColumn get fieldName => text().nullable()();

  BoolColumn get displayEnabled => boolean().nullable()();

  TextColumn get customDisplayName => text().nullable()();

  TextColumn get priorityOrder => text().nullable()();

  BoolColumn get filter => boolean().nullable()();

  TextColumn get filterType => text().nullable()();

  TextColumn get filterPriorityOrder => text().nullable()();

  BoolColumn get variationsEnabled => boolean().nullable()();

  TextColumn get variationPriorityOrder => text().nullable()();

  BoolColumn get summaryEnabled => boolean().nullable()();

  TextColumn get summaryPriorityOrder => text().nullable()();

  TextColumn get lastUpdated => text().nullable()();

  TextColumn get defaultDisplayName => text().nullable()();

  BoolColumn get orderByEnabled => boolean().nullable()();

  TextColumn get orderBy => text().nullable()();
}

class ClassificationWithItems {
  final Classification classification;
  final Item item;

  ClassificationWithItems(this.classification, this.item);
}

class ItemsWithStones {
  final Item items;
  final Stone stones;

  ItemsWithStones(this.items, this.stones);
}

class MainItemManager {
  final String itemsCode;
  final String stones;
  final String materials;

  MainItemManager({this.itemsCode, this.stones, this.materials});
}

@UseMoor(tables: [
  CollectionMappings,
  Collections,
  Classifications,
  Items,
  Stones,
  StoneMappings,
  SemiFinisheds,
  SemiFinishedMappings,
  Materials,
  MaterialMappings,
  Labors,
  LaborMappings,
  Miscellaneouses,
  MiscellaneousMappings,
  Bins,
  BinMappings,
  Carts,
  ColumnSettings,
], daos: [
  CollectionMappingDao,
  CollectionDao,
  ClassificationDao,
  ItemDao,
  StoneDao,
  StoneMappingDao,
  SemiFinishedDao,
  SemiFinishedMappingsDao,
  MaterialDao,
  MaterialMappingDao,
  LaborDao,
  LaborMappingDao,
  MiscellaneousDao,
  MiscellaneousMappingDao,
  BinDao,
  BinMappingDao,
  CartDao,
  FilterDao,
  ColumnSettingDao,
], queries: {
  'parentData':
      "select * from classifications where parent_classification_i_d IS '' ",
  'categoryData':
      "select * from classifications where parent_classification_i_d IS '0' and classification_header IS ''"
})
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'dbsql.sqlite', logStatements: true));

  Future<List<CollectionMapping>> getItemID(String bannerCollectionID) {
    return (select(collectionMappings)
          ..where((t) => t.collectionID.equals(bannerCollectionID)))
        .get();
  }

  Future<List<Item>> fetchedItemsForBanner(String itemIDS) async {
    return (select(items)..where((t) => t.itemID.equals(itemIDS))).get();
  }

  Future<List<ClassificationWithItems>> loadClassificationData() async {
    final query = await select((items)).join([
      innerJoin(classifications,
          classifications.enumFieldValue.equalsExp(items.itemType)),
    ]).get();

    return query.map((resultRow) {
      return ClassificationWithItems(
        resultRow.readTable(classifications),
        resultRow.readTable(items),
      );
    }).toList();
  }

  Future<List<Item>> fetchedItemsForCategories(String categoryType) async {
    return (select(items)..where((t) => t.itemCategory.equals(categoryType)))
        .get();
  }

  Future<List<Item>> fetchItemsForClassification(String itemType) async {
    return (select(items)..where((t) => t.itemType.equals(itemType))).get();
  }

  Future<List<CollectionMapping>> getDynamicResults(
      String tableName, String columnName, String columnVal) {
    final query = customSelectQuery(
            "select * from $tableName where $columnName = $columnVal")
        .get();
    prefix0.debugPrint("${query.toString()}");
  }

  Future<String> getDynamicIDFromMappingTable(
      String column, String mappingTable, String itemID) async {
    final query =
        'SELECT $column FROM $mappingTable WHERE item_I_D = \'$itemID\' LIMIT 1';
    List<String> dynamicIDs = await customSelectQuery(query)
        .map((row) => row.readString(column))
        .get();
    return dynamicIDs.length > 0 ? dynamicIDs[0] : "";
  }

  Future<String> getActualValueFromDynamicID(
      String column, String table, String mappingID, String dynamicID) async {
    final query =
        'SELECT $column FROM $table WHERE $mappingID = \'$dynamicID\' LIMIT 1';
    List<String> actualValues = await customSelectQuery(query)
        .map((row) => row.readString(column))
        .get();
    return actualValues.length > 0 ? actualValues[0] : "";
  }

//  Stream<List<ItemsWithStones>> filterMappingJoins(
//      var lowValue, var highValue, var itemType) {
//    final query = select(items).join([
//      leftOuterJoin(stones, stones.stoneID.equalsExp(items.stoneID)),
//    ]);
//    return query.watch().map((rows) {
//      return rows.map((row) {
//        return ItemsWithStones(
//          row.readTable(items),
//          row.readTable(stones),
//        );
//      }).toList();
//    });
//  }

//  Future<List> getItems(String tableName, String columnName, String value) {
//    final table = allTables.singleWhere((t) => t.$tableName == tableName);
//    final column = table.columnsByName[columnName];
//    assert(column != null);
//
//    final query = select(table)
//      ..where((row) => column.equalsExp(Variable.withString(value)));
//
//    return query.get();
//  }

  Future<List<String>> getFilteringValuesonCall(String column, String table) {
    final query = 'SELECT DISTINCT $column FROM $table ';
    return customSelectQuery(query).map((row) => row.readString(column)).get();
  }

  Future<List<MainItemManager>> filterMappingJoining() async {
//Map<String, List<Variable>> values
    final query = await ((selectOnly(items)..addColumns([items.itemID])).join([
      leftOuterJoin(
          stoneMappings, stoneMappings.itemID.equalsExp(items.itemID)),
      leftOuterJoin(stones, stones.stoneID.equalsExp(stoneMappings.stoneID)),
      leftOuterJoin(
          materialMappings, materialMappings.itemID.equalsExp(items.itemID)),
      leftOuterJoin(materials,
          materials.materialID.equalsExp(materialMappings.materialID)),
      leftOuterJoin(miscellaneousMappings,
          miscellaneousMappings.itemID.equalsExp(items.itemID)),
      leftOuterJoin(
          miscellaneouses,
          miscellaneouses.miscellaneousID
              .equalsExp(miscellaneousMappings.miscellaneousID)),
    ])
          ..where(items.costPrice.isBetweenValues(0, 20000)))
        .get();

    return query.map((result) {
      return MainItemManager(
          itemsCode: result.read(items.itemID),
          stones: result.read(stones.stoneID),
          materials: result.read(materials.materialID));
    }).toList();
  }

  Future<List<MainItemManager>> testOperationForSelectedFilter(
      List<StoreSelectedFilterValues> filterValues) async {
    final query = await ((selectOnly(items)..addColumns([items.itemID]))
      ..join([
        leftOuterJoin(
            stoneMappings, stoneMappings.itemID.equalsExp(items.itemID)),
        leftOuterJoin(stones, stones.stoneID.equalsExp(stoneMappings.stoneID)),
        leftOuterJoin(
            materialMappings, materialMappings.itemID.equalsExp(items.itemID)),
        leftOuterJoin(materials,
            materials.materialID.equalsExp(materialMappings.materialID)),
        leftOuterJoin(miscellaneousMappings,
            miscellaneousMappings.itemID.equalsExp(items.itemID)),
        leftOuterJoin(
            miscellaneouses,
            miscellaneouses.miscellaneousID
                .equalsExp(miscellaneousMappings.miscellaneousID)),
      ]));

    for (final filter in filterValues) {
      final table =
          allTables.singleWhere((t) => t.actualTableName == filter.tableName);
      final predicate = filter.valuesforSelectedFilters.entries
          .fold<Expression<bool, BoolType>>(null, (condition, element) {
        String columnRefine = (element.key).toString();
        // var temp = columnRefine.split("(");
        //temp = temp[1].split(")");
        final column = table.columnsByName[columnRefine];
        assert(column != null);

        final predicateForColumn = column.isIn(element.value);
        return condition == null
            ? predicateForColumn
            : condition | predicateForColumn;
      });
      query.where(predicate);
    }

    final results = await query.get();
    return results.map((result) {
      return MainItemManager(
          itemsCode: result.read(items.itemID),
          stones: result.read(stones.stoneID),
          materials: result.read(materials.materialID));
    }).toList();
  }

  Future<List<String>> getFiltersSelection(
      List<FilterItemViewModel> filterValues) async {
    final query = await ((selectOnly(items)..addColumns([items.itemID]))
      ..join([
        leftOuterJoin(
            stoneMappings, stoneMappings.itemID.equalsExp(items.itemID)),
        leftOuterJoin(stones, stones.stoneID.equalsExp(stoneMappings.stoneID)),
        leftOuterJoin(
            materialMappings, materialMappings.itemID.equalsExp(items.itemID)),
        leftOuterJoin(materials,
            materials.materialID.equalsExp(materialMappings.materialID)),
        leftOuterJoin(miscellaneousMappings,
            miscellaneousMappings.itemID.equalsExp(items.itemID)),
        leftOuterJoin(
            miscellaneouses,
            miscellaneouses.miscellaneousID
                .equalsExp(miscellaneousMappings.miscellaneousID)),
      ]));

    for (final filterItem in filterValues) {
      if (filterItem is MultipleValueSelectionViewModel) {
        MultipleValueSelectionViewModel multipleValueModel =
            filterItem as MultipleValueSelectionViewModel;
        final table = allTables.singleWhere(
            (t) => t.actualTableName == multipleValueModel.tableName);

        final predicate = multipleValueModel.selection
            .fold<Expression<bool, BoolType>>(null, (condition, element) {
          final column = table.columnsByName[multipleValueModel.columnName];
          assert(column != null);

          final predicateForColumn = column.isIn(multipleValueModel.selection);
          return condition == null
              ? predicateForColumn
              : condition | predicateForColumn;
        });
        query.where(predicate);
      }
    }

    final results = await query.get();
    return results.map((result) {
      return result.read(items.itemID).toString();
    }).toList();
  }

  @override
  int get schemaVersion => 1;
}

//CollectionMappings operations are seprated by Daos, use (DatabaseObject.CollectionMappingDao) to perform operations on specific Table

@UseDao(tables: [CollectionMappings])
class CollectionMappingDao extends DatabaseAccessor<AppDatabase>
    with _$CollectionMappingDaoMixin {
  final AppDatabase db;

  CollectionMappingDao(this.db) : super(db);

  Future<List<CollectionMapping>> getAllCollectionMappingDetails() =>
      select(collectionMappings).get();

  Future<void> insertCollectionMappingData(
          List<CollectionMapping> collectionMapping) =>
      into(collectionMappings).insertAll(collectionMapping);

  Future<int> deleteAllCollectionMapping() {
    return customUpdate(
      'delete from collection_mappings',
      variables: [],
      updates: {collectionMappings},
    );
  }

  Future<List<CollectionMapping>> getCollectionMappingID(
      String collectionMappingID) {
    prefix0
        .debugPrint("Database output Collection ID Recv:$collectionMappingID");
    return (select(collectionMappings)
          ..where((t) => t.collectionID?.equals(collectionMappingID)))
        .get();
  }
}

//Collections operations are seprated by Daos, use (DatabaseObject.CollectionDao) to perform operations on specific Table

@UseDao(tables: [Collections])
class CollectionDao extends DatabaseAccessor<AppDatabase>
    with _$CollectionDaoMixin {
  final AppDatabase db;

  CollectionDao(this.db) : super(db);

  Future<Collection> getCollectionById(String collectionId) {
    return (select(collections)
          ..where((collection) => collection.collectionID.equals(collectionId)))
        .getSingle();
  }

  Future<List<Collection>> getAllCollectionDetails() =>
      select(collections).get();

  Future<void> insertCollectionData(List<Collection> collection) =>
      into(collections).insertAll(collection);

  Future<int> deleteAllCollection() {
    return customUpdate(
      'delete from collections',
      variables: [],
      updates: {collections},
    );
  }
}

//Classifications operations are seprated by Daos, use (DatabaseObject.ClassificationDao) to perform operations on specific Table

@UseDao(tables: [Classifications])
class ClassificationDao extends DatabaseAccessor<AppDatabase>
    with _$ClassificationDaoMixin {
  final AppDatabase db;

  ClassificationDao(this.db) : super(db);

  Future<List<Classification>> getAllClassificationDetails() =>
      select(classifications).get();

  Future<void> insertClassificationData(List<Classification> classification) =>
      into(classifications).insertAll(classification);

  Future<int> deleteAllClassifications() {
    return customUpdate(
      'delete from classifications',
      variables: [],
      updates: {classifications},
    );
  }

  Future<List<Classification>> collectionDataBasedOnParentID(String parentID) {
    return (select(classifications)
          ..where((t) => t.parentClassificationID.equals(parentID)))
        .get();
  }
}

//Items operations are seprated by Daos, use (DatabaseObject.ItemDao) to perform operations on specific Table

@UseDao(tables: [Items])
class ItemDao extends DatabaseAccessor<AppDatabase> with _$ItemDaoMixin {
  final AppDatabase db;

  ItemDao(this.db) : super(db);

  Future<List<Item>> getAllItemDetails() => select(items).get();

  /*Future<Item> getItemMasterById(String rfidTag) {
    return (select(items)..where((item) => item.rfidTag.equals(rfidTag)))
        .getSingle();
  }*/

  Future<Item> getItemMasterFromItemID(String itemID) {
    return (select(items)..where((item) => item.itemID.equals(itemID)))
        .getSingle();
  }

  //Future<void> insertItemData(List<Item> item)=> into(items).insertAll(item);
  Future<void> insertItemData(List<Item> item) => into(items).insertAll(item);

  Future<int> deleteItemData() {
    return customUpdate(
      'delete from items',
      variables: [],
      updates: {items},
    );
  }

  Future<List<Item>> getBannerCollectionItems(String itemIDRcv) {
    prefix0.debugPrint(
        "Database log: Recieved Request for Banner Collection ID: $itemIDRcv");
    return (select(items)..where((t) => t.itemID.equals(itemIDRcv))).get();
  }

// Stream<List<ClassificationWithItems>> entriesWithCategory() {
//   final query = select(items).join([
//     leftOuterJoin(classifications,classifications.itemID.equalsExp(items.itemID )),
//   ]);

  Future<List<Item>> getClassificationsItemsOnClick(String itemType) {
    return (select(items)..where((t) => t.itemType.equals(itemType))).get();
  }
}
//Stones operations are seprated by Daos, use (DatabaseObject.StoneDao) to perform operations on specific Table

@UseDao(tables: [Stones])
class StoneDao extends DatabaseAccessor<AppDatabase> with _$StoneDaoMixin {
  final AppDatabase db;

  StoneDao(this.db) : super(db);

  Future<List<Stone>> getAllStoneDetails() => select(stones).get();

  Future<void> insertStoneData(List<Stone> stone) =>
      into(stones).insertAll(stone);

  Future<int> deleteStoneData() {
    return customUpdate(
      'delete from stones',
      variables: [],
      updates: {stones},
    );
  }
}

//StoneMappings operations are seprated by Daos, use (DatabaseObject.StoneMappingDao) to perform operations on specific Table

@UseDao(tables: [StoneMappings])
class StoneMappingDao extends DatabaseAccessor<AppDatabase>
    with _$StoneMappingDaoMixin {
  final AppDatabase db;

  StoneMappingDao(this.db) : super(db);

  Future<List<StoneMapping>> getAllStoneMappingDetails() =>
      select(stoneMappings).get();

  Future<void> insertStoneMappingData(List<StoneMapping> stoneMapping) =>
      into(stoneMappings).insertAll(stoneMapping);

  Future<int> deleteAllStoneMappings() {
    return customUpdate(
      'delete from stone_mappings',
      variables: [],
      updates: {stoneMappings},
    );
  }
}

//SemiFinisheds operations are seprated by Daos, use (DatabaseObject.SemiFinishedDao) to perform operations on specific Table

@UseDao(tables: [SemiFinisheds])
class SemiFinishedDao extends DatabaseAccessor<AppDatabase>
    with _$SemiFinishedDaoMixin {
  final AppDatabase db;

  SemiFinishedDao(this.db) : super(db);

  Future<List<SemiFinished>> getAllSemiFinishedDetails() =>
      select(semiFinisheds).get();

  Future<void> insertSemiFinishedData(List<SemiFinished> semiFinished) =>
      into(semiFinisheds).insertAll(semiFinished);

  Future<int> deleteAllSemiFinishedData() {
    return customUpdate(
      'delete from semi_finisheds',
      variables: [],
      updates: {semiFinisheds},
    );
  }
}

//SemiFinishedMappings operations are seprated by Daos, use (DatabaseObject.SemiFinishedMappingsDao) to perform operations on specific Table

@UseDao(tables: [SemiFinishedMappings])
class SemiFinishedMappingsDao extends DatabaseAccessor<AppDatabase>
    with _$SemiFinishedMappingsDaoMixin {
  final AppDatabase db;

  SemiFinishedMappingsDao(this.db) : super(db);

  Future<List<SemiFinishedMapping>> getAllSemiFinishedMappingDetails() =>
      select(semiFinishedMappings).get();

  Future<void> insertSemiFinishedMappingData(
          List<SemiFinishedMapping> semiFinishedMapping) =>
      into(semiFinishedMappings).insertAll(semiFinishedMapping);

  Future<int> deleteAllSemiFinishedMapping() {
    return customUpdate(
      'delete from semi_finished_mappings',
      variables: [],
      updates: {semiFinishedMappings},
    );
  }
}

//Materials operations are seprated by Daos, use (DatabaseObject.MaterialDao) to perform operations on specific Table

@UseDao(tables: [Materials])
class MaterialDao extends DatabaseAccessor<AppDatabase>
    with _$MaterialDaoMixin {
  final AppDatabase db;

  MaterialDao(this.db) : super(db);

  Future<List<Material>> getAllMaterialDetails() => select(materials).get();

  Future<void> insertMaterialData(List<Material> material) =>
      into(materials).insertAll(material);

  Future<int> deleteMaterialData() {
    return customUpdate(
      'delete from materials',
      variables: [],
      updates: {materials},
    );
  }
}

//MaterialMappings operations are seprated by Daos, use (DatabaseObject.MaterialMappingDao) to perform operations on specific Table

@UseDao(tables: [MaterialMappings])
class MaterialMappingDao extends DatabaseAccessor<AppDatabase>
    with _$MaterialMappingDaoMixin {
  final AppDatabase db;

  MaterialMappingDao(this.db) : super(db);

  Future<List<MaterialMapping>> getAllMaterialMappingDetails() =>
      select(materialMappings).get();

  Future<void> insertMaterialMappingData(
          List<MaterialMapping> materialMapping) =>
      into(materialMappings).insertAll(materialMapping);

  Future<int> deleteMaterialMapping() {
    return customUpdate(
      'delete from material_mappings',
      variables: [],
      updates: {materialMappings},
    );
  }
}

//Labors operations are seprated by Daos, use (DatabaseObject.LaborDao) to perform operations on specific Table

@UseDao(tables: [Labors])
class LaborDao extends DatabaseAccessor<AppDatabase> with _$LaborDaoMixin {
  final AppDatabase db;

  LaborDao(this.db) : super(db);

  Future<List<Labor>> getAllLaborDetails() => select(labors).get();

  Future<void> insertLaborData(List<Labor> labor) =>
      into(labors).insertAll(labor);

  Future<int> deleteAllLaborData() {
    return customUpdate(
      'delete from labors',
      variables: [],
      updates: {labors},
    );
  }
}

//LaborMappings operations are seprated by Daos, use (DatabaseObject.LaborMappingDao) to perform operations on specific Table

@UseDao(tables: [LaborMappings])
class LaborMappingDao extends DatabaseAccessor<AppDatabase>
    with _$LaborMappingDaoMixin {
  final AppDatabase db;

  LaborMappingDao(this.db) : super(db);

  Future<List<LaborMapping>> getAllLaborMappingDetails() =>
      select(laborMappings).get();

  Future<void> insertLaborMappingData(List<LaborMapping> laborMapping) =>
      into(laborMappings).insertAll(laborMapping);

  Future<int> deleteAllLaborMapping() {
    return customUpdate(
      'delete from labor_mappings',
      variables: [],
      updates: {laborMappings},
    );
  }
}

//Miscellaneouses operations are seprated by Daos, use (DatabaseObject.MiscellaneousDao) to perform operations on specific Table

@UseDao(tables: [Miscellaneouses])
class MiscellaneousDao extends DatabaseAccessor<AppDatabase>
    with _$MiscellaneousDaoMixin {
  final AppDatabase db;

  MiscellaneousDao(this.db) : super(db);

  Future<List<Miscellaneous>> getAllMiscellaneousDetails() =>
      select(miscellaneouses).get();

  Future<void> insertMiscellaneousData(List<Miscellaneous> miscellaneous) =>
      into(miscellaneouses).insertAll(miscellaneous);

  Future<int> deleteAllMiscellaneousData() {
    return customUpdate(
      'delete from miscellaneouses',
      variables: [],
      updates: {miscellaneouses},
    );
  }
}

//MiscellaneousMappings operations are seprated by Daos, use (DatabaseObject.MiscellaneousMappingDao) to perform operations on specific Table

@UseDao(tables: [MiscellaneousMappings])
class MiscellaneousMappingDao extends DatabaseAccessor<AppDatabase>
    with _$MiscellaneousMappingDaoMixin {
  final AppDatabase db;

  MiscellaneousMappingDao(this.db) : super(db);

  Future<List<MiscellaneousMapping>> getAllMiscellaneousMappingDetails() =>
      select(miscellaneousMappings).get();

  Future<void> insertMiscellaneousMappingData(
          List<MiscellaneousMapping> miscellaneousMapping) =>
      into(miscellaneousMappings).insertAll(miscellaneousMapping);

  Future<int> deleteAllMiscellaneousMapping() {
    return customUpdate(
      'delete from miscellaneous_mappings',
      variables: [],
      updates: {miscellaneousMappings},
    );
  }
}

//Bins Table operations are seprated by Daos, use (DatabaseObject.BinDao) to perform operations on specific Table

@UseDao(tables: [Bins])
class BinDao extends DatabaseAccessor<AppDatabase> with _$BinDaoMixin {
  final AppDatabase db;

  BinDao(this.db) : super(db);

  Future<List<Bin>> getAllBinDetails() => select(bins).get();

  Future<void> insertBinData(List<Bin> bin) => into(bins).insertAll(bin);

  Future<int> deleteAllBinData() {
    return customUpdate(
      'delete from bins',
      variables: [],
      updates: {bins},
    );
  }
}

//BinMappings Table operations are seprated by Daos, use (DatabaseObject.BinMappingDao) to perform operations on specific Table

@UseDao(tables: [BinMappings])
class BinMappingDao extends DatabaseAccessor<AppDatabase>
    with _$BinMappingDaoMixin {
  final AppDatabase db;

  BinMappingDao(this.db) : super(db);

  Future<List<BinMapping>> getAllBinMappingDetails() =>
      select(binMappings).get();

  Future<void> insertBinMappingData(List<BinMapping> binMapping) =>
      into(binMappings).insertAll(binMapping);

  Future<int> deleteAllBinMapping() {
    return customUpdate(
      'delete from bin_mappings',
      variables: [],
      updates: {binMappings},
    );
  }
}

@UseDao(tables: [Carts])
class CartDao extends DatabaseAccessor<AppDatabase> with _$CartDaoMixin {
  final AppDatabase db;

  CartDao(this.db) : super(db);

  Future<List<Cart>> getAllCartDetails() => select(carts).get();

  Future<void> insertCartData(Cart cartItem) => into(carts).insert(cartItem);

  Future<void> updateCartData(Cart cartItem) => update(carts).replace(cartItem);

  Future<void> deleteCartData(Cart cartItem) => delete(carts).delete(cartItem);

  Future<int> deleteAllCart() {
    return customUpdate(
      'delete from carts',
      variables: [],
      updates: {carts},
    );
  }
}

@UseDao(tables: [ColumnSettings])
class ColumnSettingDao extends DatabaseAccessor<AppDatabase>
    with _$ColumnSettingDaoMixin {
  final AppDatabase db;

  ColumnSettingDao(this.db) : super(db);

  Future<void> insertColumnSettingsData(List<ColumnSetting> columnSetting) =>
      into(columnSettings).insertAll(columnSetting);

  Future<List<ColumnSetting>> getAllFilterData() =>
      select(columnSettings).get();

  Future<List<ColumnSetting>> getAllSummaryEnabledColumn() {
    final query = select(columnSettings)
      ..where((t) => t.summaryEnabled.equals(true));
    return query.get();
  }

  Future<int> deleteColumnSettingsData() {
    return customUpdate(
      'delete from column_settings',
      variables: [],
      updates: {columnSettings},
    );
  }
}

@UseDao(tables: [Items, Stones])
class FilterDao extends DatabaseAccessor<AppDatabase> with _$FilterDaoMixin {
  final AppDatabase db;

  FilterDao(this.db) : super(db);

  Stream<List<Item>> pricingFilter(var lowValue, var highValue, var itemType) {
    final query = select(items)
      ..where((t) => t.costPrice.isBetweenValues(lowValue, highValue))
      ..where((t) => t.itemType.equals(itemType));
    prefix0.debugPrint("Calling values of filter Dao");
    return query.map((row) => row).watch();
  }

  Stream<List<String>> filterItemTypes() {
    final itemType = items.itemType;
    final query = selectOnly(items, distinct: true)..addColumns([itemType]);
    return query.map((row) => row.read(itemType)).watch();
  }

  Stream<List<String>> filterCategories() {
    final itemCategory = items.itemCategory;
    final query = selectOnly(items, distinct: true)..addColumns([itemCategory]);
    return query.map((row) => row.read(itemCategory)).watch();
  }

  Stream<List<String>> filterItemStatus() {
    final itemStatus = items.itemStatus;
    final query = selectOnly(items, distinct: true)..addColumns([itemStatus]);
    return query.map((row) => row.read(itemStatus)).watch();
  }

  Stream<List<Item>> applyItemType(var itemVal) {
    final query = select(items)..where((t) => t.itemType.equals(itemVal));
    prefix0.debugPrint("getting filter result of item type");
    return query.map((row) => row).watch();
  }

  Stream<List<Item>> applyItemCategory(var itemVal) {
    final query = select(items)..where((t) => t.itemCategory.equals(itemVal));
    prefix0.debugPrint("getting filter result of item category");
    return query.map((row) => row).watch();
  }

  Stream<List<Item>> applyItemStatus(var itemVal) {
    final query = select(items)..where((t) => t.itemStatus.equals(itemVal));
    prefix0.debugPrint("getting filter result of item Status");
    return query.map((row) => row).watch();
  }

  Stream<List<Item>> getAllFilterResult(var itemType, var itemStatus,
      var itemCategory, var lowValue, var highValue) {
    final query = select(items)
      ..where((t) => t.costPrice.isBetweenValues(lowValue, highValue))
      ..where((t) => t.itemType.equals(itemType))
      ..where((t) => t.itemCategory.equals(itemCategory))
      ..where((t) => t.itemStatus.equals(itemStatus));
    prefix0.debugPrint("Calling values of filter Dao");
    return query.map((row) => row).watch();
  }
}

//select * from items where itemId in ["v23qe"] and costPrice isbetween "lc" and  ''
