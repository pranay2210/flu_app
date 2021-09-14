// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class CollectionMapping extends DataClass
    implements Insertable<CollectionMapping> {
  final int autoCollectionMappingID;
  final String itemID;
  final String collectionID;
  final String lastUpdated;
  final String row;

  CollectionMapping(
      {@required this.autoCollectionMappingID,
      @required this.itemID,
      @required this.collectionID,
      @required this.lastUpdated,
      this.row});

  factory CollectionMapping.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return CollectionMapping(
      autoCollectionMappingID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_collection_mapping_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      collectionID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}collection_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory CollectionMapping.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CollectionMapping(
      autoCollectionMappingID:
          serializer.fromJson<int>(json['autoCollectionMappingID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      collectionID: serializer.fromJson<String>(json['collectionID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoCollectionMappingID':
          serializer.toJson<int>(autoCollectionMappingID),
      'itemID': serializer.toJson<String>(itemID),
      'collectionID': serializer.toJson<String>(collectionID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  CollectionMappingsCompanion createCompanion(bool nullToAbsent) {
    return CollectionMappingsCompanion(
      autoCollectionMappingID: autoCollectionMappingID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoCollectionMappingID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      collectionID: collectionID == null && nullToAbsent
          ? const Value.absent()
          : Value(collectionID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  CollectionMapping copyWith(
          {int autoCollectionMappingID,
          String itemID,
          String collectionID,
          String lastUpdated,
          String row}) =>
      CollectionMapping(
        autoCollectionMappingID:
            autoCollectionMappingID ?? this.autoCollectionMappingID,
        itemID: itemID ?? this.itemID,
        collectionID: collectionID ?? this.collectionID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('CollectionMapping(')
          ..write('autoCollectionMappingID: $autoCollectionMappingID, ')
          ..write('itemID: $itemID, ')
          ..write('collectionID: $collectionID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoCollectionMappingID.hashCode,
      $mrjc(
          itemID.hashCode,
          $mrjc(collectionID.hashCode,
              $mrjc(lastUpdated.hashCode, row.hashCode)))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CollectionMapping &&
          other.autoCollectionMappingID == this.autoCollectionMappingID &&
          other.itemID == this.itemID &&
          other.collectionID == this.collectionID &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class CollectionMappingsCompanion extends UpdateCompanion<CollectionMapping> {
  final Value<int> autoCollectionMappingID;
  final Value<String> itemID;
  final Value<String> collectionID;
  final Value<String> lastUpdated;
  final Value<String> row;

  const CollectionMappingsCompanion({
    this.autoCollectionMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.collectionID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  CollectionMappingsCompanion.insert({
    this.autoCollectionMappingID = const Value.absent(),
    @required String itemID,
    @required String collectionID,
    @required String lastUpdated,
    this.row = const Value.absent(),
  })  : itemID = Value(itemID),
        collectionID = Value(collectionID),
        lastUpdated = Value(lastUpdated);

  CollectionMappingsCompanion copyWith(
      {Value<int> autoCollectionMappingID,
      Value<String> itemID,
      Value<String> collectionID,
      Value<String> lastUpdated,
      Value<String> row}) {
    return CollectionMappingsCompanion(
      autoCollectionMappingID:
          autoCollectionMappingID ?? this.autoCollectionMappingID,
      itemID: itemID ?? this.itemID,
      collectionID: collectionID ?? this.collectionID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $CollectionMappingsTable extends CollectionMappings
    with TableInfo<$CollectionMappingsTable, CollectionMapping> {
  final GeneratedDatabase _db;
  final String _alias;

  $CollectionMappingsTable(this._db, [this._alias]);

  final VerificationMeta _autoCollectionMappingIDMeta =
      const VerificationMeta('autoCollectionMappingID');
  GeneratedIntColumn _autoCollectionMappingID;

  @override
  GeneratedIntColumn get autoCollectionMappingID =>
      _autoCollectionMappingID ??= _constructAutoCollectionMappingID();

  GeneratedIntColumn _constructAutoCollectionMappingID() {
    return GeneratedIntColumn('auto_collection_mapping_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn('item_i_d', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _collectionIDMeta =
      const VerificationMeta('collectionID');
  GeneratedTextColumn _collectionID;

  @override
  GeneratedTextColumn get collectionID =>
      _collectionID ??= _constructCollectionID();

  GeneratedTextColumn _constructCollectionID() {
    return GeneratedTextColumn('collection_i_d', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn('last_updated', $tableName, false,
        minTextLength: 0, maxTextLength: 250);
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [autoCollectionMappingID, itemID, collectionID, lastUpdated, row];

  @override
  $CollectionMappingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'collection_mappings';
  @override
  final String actualTableName = 'collection_mappings';

  @override
  VerificationContext validateIntegrity(CollectionMappingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoCollectionMappingID.present) {
      context.handle(
          _autoCollectionMappingIDMeta,
          autoCollectionMappingID.isAcceptableValue(
              d.autoCollectionMappingID.value, _autoCollectionMappingIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    } else if (isInserting) {
      context.missing(_itemIDMeta);
    }
    if (d.collectionID.present) {
      context.handle(
          _collectionIDMeta,
          collectionID.isAcceptableValue(
              d.collectionID.value, _collectionIDMeta));
    } else if (isInserting) {
      context.missing(_collectionIDMeta);
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoCollectionMappingID};

  @override
  CollectionMapping map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CollectionMapping.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CollectionMappingsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoCollectionMappingID.present) {
      map['auto_collection_mapping_i_d'] =
          Variable<int, IntType>(d.autoCollectionMappingID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.collectionID.present) {
      map['collection_i_d'] =
          Variable<String, StringType>(d.collectionID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $CollectionMappingsTable createAlias(String alias) {
    return $CollectionMappingsTable(_db, alias);
  }
}

class Collection extends DataClass implements Insertable<Collection> {
  final int autoCollectionID;
  final String collectionID;
  final String collectionERPKey;
  final String collectionName;
  final String isSet;
  final String collectionDescription;
  final String collectionImageName;
  final String row;
  final String reserved1;
  final String reserved2;
  final String reserved3;
  final String reserved4;
  final String reserved5;
  final String lastUpdated;

  Collection(
      {@required this.autoCollectionID,
      @required this.collectionID,
      this.collectionERPKey,
      this.collectionName,
      this.isSet,
      this.collectionDescription,
      this.collectionImageName,
      this.row,
      this.reserved1,
      this.reserved2,
      this.reserved3,
      this.reserved4,
      this.reserved5,
      this.lastUpdated});

  factory Collection.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Collection(
      autoCollectionID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_collection_i_d']),
      collectionID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}collection_i_d']),
      collectionERPKey: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}collection_e_r_p_key']),
      collectionName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}collection_name']),
      isSet:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}is_set']),
      collectionDescription: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}collection_description']),
      collectionImageName: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}collection_image_name']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
      reserved1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved1']),
      reserved2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved2']),
      reserved3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved3']),
      reserved4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved4']),
      reserved5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved5']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
    );
  }

  factory Collection.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Collection(
      autoCollectionID: serializer.fromJson<int>(json['autoCollectionID']),
      collectionID: serializer.fromJson<String>(json['collectionID']),
      collectionERPKey: serializer.fromJson<String>(json['collectionERPKey']),
      collectionName: serializer.fromJson<String>(json['collectionName']),
      isSet: serializer.fromJson<String>(json['isSet']),
      collectionDescription:
          serializer.fromJson<String>(json['collectionDescription']),
      collectionImageName:
          serializer.fromJson<String>(json['collectionImageName']),
      row: serializer.fromJson<String>(json['row']),
      reserved1: serializer.fromJson<String>(json['reserved1']),
      reserved2: serializer.fromJson<String>(json['reserved2']),
      reserved3: serializer.fromJson<String>(json['reserved3']),
      reserved4: serializer.fromJson<String>(json['reserved4']),
      reserved5: serializer.fromJson<String>(json['reserved5']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoCollectionID': serializer.toJson<int>(autoCollectionID),
      'collectionID': serializer.toJson<String>(collectionID),
      'collectionERPKey': serializer.toJson<String>(collectionERPKey),
      'collectionName': serializer.toJson<String>(collectionName),
      'isSet': serializer.toJson<String>(isSet),
      'collectionDescription': serializer.toJson<String>(collectionDescription),
      'collectionImageName': serializer.toJson<String>(collectionImageName),
      'row': serializer.toJson<String>(row),
      'reserved1': serializer.toJson<String>(reserved1),
      'reserved2': serializer.toJson<String>(reserved2),
      'reserved3': serializer.toJson<String>(reserved3),
      'reserved4': serializer.toJson<String>(reserved4),
      'reserved5': serializer.toJson<String>(reserved5),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
    };
  }

  @override
  CollectionsCompanion createCompanion(bool nullToAbsent) {
    return CollectionsCompanion(
      autoCollectionID: autoCollectionID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoCollectionID),
      collectionID: collectionID == null && nullToAbsent
          ? const Value.absent()
          : Value(collectionID),
      collectionERPKey: collectionERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(collectionERPKey),
      collectionName: collectionName == null && nullToAbsent
          ? const Value.absent()
          : Value(collectionName),
      isSet:
          isSet == null && nullToAbsent ? const Value.absent() : Value(isSet),
      collectionDescription: collectionDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(collectionDescription),
      collectionImageName: collectionImageName == null && nullToAbsent
          ? const Value.absent()
          : Value(collectionImageName),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
      reserved1: reserved1 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved1),
      reserved2: reserved2 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved2),
      reserved3: reserved3 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved3),
      reserved4: reserved4 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved4),
      reserved5: reserved5 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved5),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
    );
  }

  Collection copyWith(
          {int autoCollectionID,
          String collectionID,
          String collectionERPKey,
          String collectionName,
          String isSet,
          String collectionDescription,
          String collectionImageName,
          String row,
          String reserved1,
          String reserved2,
          String reserved3,
          String reserved4,
          String reserved5,
          String lastUpdated}) =>
      Collection(
        autoCollectionID: autoCollectionID ?? this.autoCollectionID,
        collectionID: collectionID ?? this.collectionID,
        collectionERPKey: collectionERPKey ?? this.collectionERPKey,
        collectionName: collectionName ?? this.collectionName,
        isSet: isSet ?? this.isSet,
        collectionDescription:
            collectionDescription ?? this.collectionDescription,
        collectionImageName: collectionImageName ?? this.collectionImageName,
        row: row ?? this.row,
        reserved1: reserved1 ?? this.reserved1,
        reserved2: reserved2 ?? this.reserved2,
        reserved3: reserved3 ?? this.reserved3,
        reserved4: reserved4 ?? this.reserved4,
        reserved5: reserved5 ?? this.reserved5,
        lastUpdated: lastUpdated ?? this.lastUpdated,
      );

  @override
  String toString() {
    return (StringBuffer('Collection(')
          ..write('autoCollectionID: $autoCollectionID, ')
          ..write('collectionID: $collectionID, ')
          ..write('collectionERPKey: $collectionERPKey, ')
          ..write('collectionName: $collectionName, ')
          ..write('isSet: $isSet, ')
          ..write('collectionDescription: $collectionDescription, ')
          ..write('collectionImageName: $collectionImageName, ')
          ..write('row: $row, ')
          ..write('reserved1: $reserved1, ')
          ..write('reserved2: $reserved2, ')
          ..write('reserved3: $reserved3, ')
          ..write('reserved4: $reserved4, ')
          ..write('reserved5: $reserved5, ')
          ..write('lastUpdated: $lastUpdated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoCollectionID.hashCode,
      $mrjc(
          collectionID.hashCode,
          $mrjc(
              collectionERPKey.hashCode,
              $mrjc(
                  collectionName.hashCode,
                  $mrjc(
                      isSet.hashCode,
                      $mrjc(
                          collectionDescription.hashCode,
                          $mrjc(
                              collectionImageName.hashCode,
                              $mrjc(
                                  row.hashCode,
                                  $mrjc(
                                      reserved1.hashCode,
                                      $mrjc(
                                          reserved2.hashCode,
                                          $mrjc(
                                              reserved3.hashCode,
                                              $mrjc(
                                                  reserved4.hashCode,
                                                  $mrjc(
                                                      reserved5.hashCode,
                                                      lastUpdated
                                                          .hashCode))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Collection &&
          other.autoCollectionID == this.autoCollectionID &&
          other.collectionID == this.collectionID &&
          other.collectionERPKey == this.collectionERPKey &&
          other.collectionName == this.collectionName &&
          other.isSet == this.isSet &&
          other.collectionDescription == this.collectionDescription &&
          other.collectionImageName == this.collectionImageName &&
          other.row == this.row &&
          other.reserved1 == this.reserved1 &&
          other.reserved2 == this.reserved2 &&
          other.reserved3 == this.reserved3 &&
          other.reserved4 == this.reserved4 &&
          other.reserved5 == this.reserved5 &&
          other.lastUpdated == this.lastUpdated);
}

class CollectionsCompanion extends UpdateCompanion<Collection> {
  final Value<int> autoCollectionID;
  final Value<String> collectionID;
  final Value<String> collectionERPKey;
  final Value<String> collectionName;
  final Value<String> isSet;
  final Value<String> collectionDescription;
  final Value<String> collectionImageName;
  final Value<String> row;
  final Value<String> reserved1;
  final Value<String> reserved2;
  final Value<String> reserved3;
  final Value<String> reserved4;
  final Value<String> reserved5;
  final Value<String> lastUpdated;

  const CollectionsCompanion({
    this.autoCollectionID = const Value.absent(),
    this.collectionID = const Value.absent(),
    this.collectionERPKey = const Value.absent(),
    this.collectionName = const Value.absent(),
    this.isSet = const Value.absent(),
    this.collectionDescription = const Value.absent(),
    this.collectionImageName = const Value.absent(),
    this.row = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
  });

  CollectionsCompanion.insert({
    this.autoCollectionID = const Value.absent(),
    @required String collectionID,
    this.collectionERPKey = const Value.absent(),
    this.collectionName = const Value.absent(),
    this.isSet = const Value.absent(),
    this.collectionDescription = const Value.absent(),
    this.collectionImageName = const Value.absent(),
    this.row = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
  }) : collectionID = Value(collectionID);

  CollectionsCompanion copyWith(
      {Value<int> autoCollectionID,
      Value<String> collectionID,
      Value<String> collectionERPKey,
      Value<String> collectionName,
      Value<String> isSet,
      Value<String> collectionDescription,
      Value<String> collectionImageName,
      Value<String> row,
      Value<String> reserved1,
      Value<String> reserved2,
      Value<String> reserved3,
      Value<String> reserved4,
      Value<String> reserved5,
      Value<String> lastUpdated}) {
    return CollectionsCompanion(
      autoCollectionID: autoCollectionID ?? this.autoCollectionID,
      collectionID: collectionID ?? this.collectionID,
      collectionERPKey: collectionERPKey ?? this.collectionERPKey,
      collectionName: collectionName ?? this.collectionName,
      isSet: isSet ?? this.isSet,
      collectionDescription:
          collectionDescription ?? this.collectionDescription,
      collectionImageName: collectionImageName ?? this.collectionImageName,
      row: row ?? this.row,
      reserved1: reserved1 ?? this.reserved1,
      reserved2: reserved2 ?? this.reserved2,
      reserved3: reserved3 ?? this.reserved3,
      reserved4: reserved4 ?? this.reserved4,
      reserved5: reserved5 ?? this.reserved5,
      lastUpdated: lastUpdated ?? this.lastUpdated,
    );
  }
}

class $CollectionsTable extends Collections
    with TableInfo<$CollectionsTable, Collection> {
  final GeneratedDatabase _db;
  final String _alias;

  $CollectionsTable(this._db, [this._alias]);

  final VerificationMeta _autoCollectionIDMeta =
      const VerificationMeta('autoCollectionID');
  GeneratedIntColumn _autoCollectionID;

  @override
  GeneratedIntColumn get autoCollectionID =>
      _autoCollectionID ??= _constructAutoCollectionID();

  GeneratedIntColumn _constructAutoCollectionID() {
    return GeneratedIntColumn('auto_collection_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _collectionIDMeta =
      const VerificationMeta('collectionID');
  GeneratedTextColumn _collectionID;

  @override
  GeneratedTextColumn get collectionID =>
      _collectionID ??= _constructCollectionID();

  GeneratedTextColumn _constructCollectionID() {
    return GeneratedTextColumn('collection_i_d', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _collectionERPKeyMeta =
      const VerificationMeta('collectionERPKey');
  GeneratedTextColumn _collectionERPKey;

  @override
  GeneratedTextColumn get collectionERPKey =>
      _collectionERPKey ??= _constructCollectionERPKey();

  GeneratedTextColumn _constructCollectionERPKey() {
    return GeneratedTextColumn(
      'collection_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _collectionNameMeta =
      const VerificationMeta('collectionName');
  GeneratedTextColumn _collectionName;

  @override
  GeneratedTextColumn get collectionName =>
      _collectionName ??= _constructCollectionName();

  GeneratedTextColumn _constructCollectionName() {
    return GeneratedTextColumn(
      'collection_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isSetMeta = const VerificationMeta('isSet');
  GeneratedTextColumn _isSet;

  @override
  GeneratedTextColumn get isSet => _isSet ??= _constructIsSet();

  GeneratedTextColumn _constructIsSet() {
    return GeneratedTextColumn(
      'is_set',
      $tableName,
      true,
    );
  }

  final VerificationMeta _collectionDescriptionMeta =
      const VerificationMeta('collectionDescription');
  GeneratedTextColumn _collectionDescription;

  @override
  GeneratedTextColumn get collectionDescription =>
      _collectionDescription ??= _constructCollectionDescription();

  GeneratedTextColumn _constructCollectionDescription() {
    return GeneratedTextColumn(
      'collection_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _collectionImageNameMeta =
      const VerificationMeta('collectionImageName');
  GeneratedTextColumn _collectionImageName;

  @override
  GeneratedTextColumn get collectionImageName =>
      _collectionImageName ??= _constructCollectionImageName();

  GeneratedTextColumn _constructCollectionImageName() {
    return GeneratedTextColumn(
      'collection_image_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved1Meta = const VerificationMeta('reserved1');
  GeneratedTextColumn _reserved1;

  @override
  GeneratedTextColumn get reserved1 => _reserved1 ??= _constructReserved1();

  GeneratedTextColumn _constructReserved1() {
    return GeneratedTextColumn(
      'reserved1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved2Meta = const VerificationMeta('reserved2');
  GeneratedTextColumn _reserved2;

  @override
  GeneratedTextColumn get reserved2 => _reserved2 ??= _constructReserved2();

  GeneratedTextColumn _constructReserved2() {
    return GeneratedTextColumn(
      'reserved2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved3Meta = const VerificationMeta('reserved3');
  GeneratedTextColumn _reserved3;

  @override
  GeneratedTextColumn get reserved3 => _reserved3 ??= _constructReserved3();

  GeneratedTextColumn _constructReserved3() {
    return GeneratedTextColumn(
      'reserved3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved4Meta = const VerificationMeta('reserved4');
  GeneratedTextColumn _reserved4;

  @override
  GeneratedTextColumn get reserved4 => _reserved4 ??= _constructReserved4();

  GeneratedTextColumn _constructReserved4() {
    return GeneratedTextColumn(
      'reserved4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved5Meta = const VerificationMeta('reserved5');
  GeneratedTextColumn _reserved5;

  @override
  GeneratedTextColumn get reserved5 => _reserved5 ??= _constructReserved5();

  GeneratedTextColumn _constructReserved5() {
    return GeneratedTextColumn(
      'reserved5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoCollectionID,
        collectionID,
        collectionERPKey,
        collectionName,
        isSet,
        collectionDescription,
        collectionImageName,
        row,
        reserved1,
        reserved2,
        reserved3,
        reserved4,
        reserved5,
        lastUpdated
      ];

  @override
  $CollectionsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'collections';
  @override
  final String actualTableName = 'collections';

  @override
  VerificationContext validateIntegrity(CollectionsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoCollectionID.present) {
      context.handle(
          _autoCollectionIDMeta,
          autoCollectionID.isAcceptableValue(
              d.autoCollectionID.value, _autoCollectionIDMeta));
    }
    if (d.collectionID.present) {
      context.handle(
          _collectionIDMeta,
          collectionID.isAcceptableValue(
              d.collectionID.value, _collectionIDMeta));
    } else if (isInserting) {
      context.missing(_collectionIDMeta);
    }
    if (d.collectionERPKey.present) {
      context.handle(
          _collectionERPKeyMeta,
          collectionERPKey.isAcceptableValue(
              d.collectionERPKey.value, _collectionERPKeyMeta));
    }
    if (d.collectionName.present) {
      context.handle(
          _collectionNameMeta,
          collectionName.isAcceptableValue(
              d.collectionName.value, _collectionNameMeta));
    }
    if (d.isSet.present) {
      context.handle(
          _isSetMeta, isSet.isAcceptableValue(d.isSet.value, _isSetMeta));
    }
    if (d.collectionDescription.present) {
      context.handle(
          _collectionDescriptionMeta,
          collectionDescription.isAcceptableValue(
              d.collectionDescription.value, _collectionDescriptionMeta));
    }
    if (d.collectionImageName.present) {
      context.handle(
          _collectionImageNameMeta,
          collectionImageName.isAcceptableValue(
              d.collectionImageName.value, _collectionImageNameMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    if (d.reserved1.present) {
      context.handle(_reserved1Meta,
          reserved1.isAcceptableValue(d.reserved1.value, _reserved1Meta));
    }
    if (d.reserved2.present) {
      context.handle(_reserved2Meta,
          reserved2.isAcceptableValue(d.reserved2.value, _reserved2Meta));
    }
    if (d.reserved3.present) {
      context.handle(_reserved3Meta,
          reserved3.isAcceptableValue(d.reserved3.value, _reserved3Meta));
    }
    if (d.reserved4.present) {
      context.handle(_reserved4Meta,
          reserved4.isAcceptableValue(d.reserved4.value, _reserved4Meta));
    }
    if (d.reserved5.present) {
      context.handle(_reserved5Meta,
          reserved5.isAcceptableValue(d.reserved5.value, _reserved5Meta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoCollectionID};

  @override
  Collection map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Collection.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CollectionsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoCollectionID.present) {
      map['auto_collection_i_d'] =
          Variable<int, IntType>(d.autoCollectionID.value);
    }
    if (d.collectionID.present) {
      map['collection_i_d'] =
          Variable<String, StringType>(d.collectionID.value);
    }
    if (d.collectionERPKey.present) {
      map['collection_e_r_p_key'] =
          Variable<String, StringType>(d.collectionERPKey.value);
    }
    if (d.collectionName.present) {
      map['collection_name'] =
          Variable<String, StringType>(d.collectionName.value);
    }
    if (d.isSet.present) {
      map['is_set'] = Variable<String, StringType>(d.isSet.value);
    }
    if (d.collectionDescription.present) {
      map['collection_description'] =
          Variable<String, StringType>(d.collectionDescription.value);
    }
    if (d.collectionImageName.present) {
      map['collection_image_name'] =
          Variable<String, StringType>(d.collectionImageName.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    if (d.reserved1.present) {
      map['reserved1'] = Variable<String, StringType>(d.reserved1.value);
    }
    if (d.reserved2.present) {
      map['reserved2'] = Variable<String, StringType>(d.reserved2.value);
    }
    if (d.reserved3.present) {
      map['reserved3'] = Variable<String, StringType>(d.reserved3.value);
    }
    if (d.reserved4.present) {
      map['reserved4'] = Variable<String, StringType>(d.reserved4.value);
    }
    if (d.reserved5.present) {
      map['reserved5'] = Variable<String, StringType>(d.reserved5.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    return map;
  }

  @override
  $CollectionsTable createAlias(String alias) {
    return $CollectionsTable(_db, alias);
  }
}

class Classification extends DataClass implements Insertable<Classification> {
  final int autoClassificationID;
  final String classificationSettingsID;
  final String enumColumnName;
  final String enumFieldValue;
  final String enumFieldValueDisplayName;
  final String enumFieldValueImageName;
  final String classificationHeader;
  final String parentClassificationID;
  final String lastUpdated;
  final String tableNameVal;

  Classification(
      {@required this.autoClassificationID,
      this.classificationSettingsID,
      this.enumColumnName,
      this.enumFieldValue,
      this.enumFieldValueDisplayName,
      this.enumFieldValueImageName,
      this.classificationHeader,
      this.parentClassificationID,
      this.lastUpdated,
      this.tableNameVal});

  factory Classification.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Classification(
      autoClassificationID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_classification_i_d']),
      classificationSettingsID: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}classification_settings_i_d']),
      enumColumnName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}enum_column_name']),
      enumFieldValue: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}enum_field_value']),
      enumFieldValueDisplayName: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}enum_field_value_display_name']),
      enumFieldValueImageName: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}enum_field_value_image_name']),
      classificationHeader: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}classification_header']),
      parentClassificationID: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}parent_classification_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      tableNameVal: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}table_name_val']),
    );
  }

  factory Classification.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Classification(
      autoClassificationID:
          serializer.fromJson<int>(json['autoClassificationID']),
      classificationSettingsID:
          serializer.fromJson<String>(json['classificationSettingsID']),
      enumColumnName: serializer.fromJson<String>(json['enumColumnName']),
      enumFieldValue: serializer.fromJson<String>(json['enumFieldValue']),
      enumFieldValueDisplayName:
          serializer.fromJson<String>(json['enumFieldValueDisplayName']),
      enumFieldValueImageName:
          serializer.fromJson<String>(json['enumFieldValueImageName']),
      classificationHeader:
          serializer.fromJson<String>(json['classificationHeader']),
      parentClassificationID:
          serializer.fromJson<String>(json['parentClassificationID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      tableNameVal: serializer.fromJson<String>(json['tableNameVal']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoClassificationID': serializer.toJson<int>(autoClassificationID),
      'classificationSettingsID':
          serializer.toJson<String>(classificationSettingsID),
      'enumColumnName': serializer.toJson<String>(enumColumnName),
      'enumFieldValue': serializer.toJson<String>(enumFieldValue),
      'enumFieldValueDisplayName':
          serializer.toJson<String>(enumFieldValueDisplayName),
      'enumFieldValueImageName':
          serializer.toJson<String>(enumFieldValueImageName),
      'classificationHeader': serializer.toJson<String>(classificationHeader),
      'parentClassificationID':
          serializer.toJson<String>(parentClassificationID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'tableNameVal': serializer.toJson<String>(tableNameVal),
    };
  }

  @override
  ClassificationsCompanion createCompanion(bool nullToAbsent) {
    return ClassificationsCompanion(
      autoClassificationID: autoClassificationID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoClassificationID),
      classificationSettingsID: classificationSettingsID == null && nullToAbsent
          ? const Value.absent()
          : Value(classificationSettingsID),
      enumColumnName: enumColumnName == null && nullToAbsent
          ? const Value.absent()
          : Value(enumColumnName),
      enumFieldValue: enumFieldValue == null && nullToAbsent
          ? const Value.absent()
          : Value(enumFieldValue),
      enumFieldValueDisplayName:
          enumFieldValueDisplayName == null && nullToAbsent
              ? const Value.absent()
              : Value(enumFieldValueDisplayName),
      enumFieldValueImageName: enumFieldValueImageName == null && nullToAbsent
          ? const Value.absent()
          : Value(enumFieldValueImageName),
      classificationHeader: classificationHeader == null && nullToAbsent
          ? const Value.absent()
          : Value(classificationHeader),
      parentClassificationID: parentClassificationID == null && nullToAbsent
          ? const Value.absent()
          : Value(parentClassificationID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      tableNameVal: tableNameVal == null && nullToAbsent
          ? const Value.absent()
          : Value(tableNameVal),
    );
  }

  Classification copyWith(
          {int autoClassificationID,
          String classificationSettingsID,
          String enumColumnName,
          String enumFieldValue,
          String enumFieldValueDisplayName,
          String enumFieldValueImageName,
          String classificationHeader,
          String parentClassificationID,
          String lastUpdated,
          String tableNameVal}) =>
      Classification(
        autoClassificationID: autoClassificationID ?? this.autoClassificationID,
        classificationSettingsID:
            classificationSettingsID ?? this.classificationSettingsID,
        enumColumnName: enumColumnName ?? this.enumColumnName,
        enumFieldValue: enumFieldValue ?? this.enumFieldValue,
        enumFieldValueDisplayName:
            enumFieldValueDisplayName ?? this.enumFieldValueDisplayName,
        enumFieldValueImageName:
            enumFieldValueImageName ?? this.enumFieldValueImageName,
        classificationHeader: classificationHeader ?? this.classificationHeader,
        parentClassificationID:
            parentClassificationID ?? this.parentClassificationID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        tableNameVal: tableNameVal ?? this.tableNameVal,
      );

  @override
  String toString() {
    return (StringBuffer('Classification(')
          ..write('autoClassificationID: $autoClassificationID, ')
          ..write('classificationSettingsID: $classificationSettingsID, ')
          ..write('enumColumnName: $enumColumnName, ')
          ..write('enumFieldValue: $enumFieldValue, ')
          ..write('enumFieldValueDisplayName: $enumFieldValueDisplayName, ')
          ..write('enumFieldValueImageName: $enumFieldValueImageName, ')
          ..write('classificationHeader: $classificationHeader, ')
          ..write('parentClassificationID: $parentClassificationID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('tableNameVal: $tableNameVal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoClassificationID.hashCode,
      $mrjc(
          classificationSettingsID.hashCode,
          $mrjc(
              enumColumnName.hashCode,
              $mrjc(
                  enumFieldValue.hashCode,
                  $mrjc(
                      enumFieldValueDisplayName.hashCode,
                      $mrjc(
                          enumFieldValueImageName.hashCode,
                          $mrjc(
                              classificationHeader.hashCode,
                              $mrjc(
                                  parentClassificationID.hashCode,
                                  $mrjc(lastUpdated.hashCode,
                                      tableNameVal.hashCode))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Classification &&
          other.autoClassificationID == this.autoClassificationID &&
          other.classificationSettingsID == this.classificationSettingsID &&
          other.enumColumnName == this.enumColumnName &&
          other.enumFieldValue == this.enumFieldValue &&
          other.enumFieldValueDisplayName == this.enumFieldValueDisplayName &&
          other.enumFieldValueImageName == this.enumFieldValueImageName &&
          other.classificationHeader == this.classificationHeader &&
          other.parentClassificationID == this.parentClassificationID &&
          other.lastUpdated == this.lastUpdated &&
          other.tableNameVal == this.tableNameVal);
}

class ClassificationsCompanion extends UpdateCompanion<Classification> {
  final Value<int> autoClassificationID;
  final Value<String> classificationSettingsID;
  final Value<String> enumColumnName;
  final Value<String> enumFieldValue;
  final Value<String> enumFieldValueDisplayName;
  final Value<String> enumFieldValueImageName;
  final Value<String> classificationHeader;
  final Value<String> parentClassificationID;
  final Value<String> lastUpdated;
  final Value<String> tableNameVal;

  const ClassificationsCompanion({
    this.autoClassificationID = const Value.absent(),
    this.classificationSettingsID = const Value.absent(),
    this.enumColumnName = const Value.absent(),
    this.enumFieldValue = const Value.absent(),
    this.enumFieldValueDisplayName = const Value.absent(),
    this.enumFieldValueImageName = const Value.absent(),
    this.classificationHeader = const Value.absent(),
    this.parentClassificationID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.tableNameVal = const Value.absent(),
  });

  ClassificationsCompanion.insert({
    this.autoClassificationID = const Value.absent(),
    this.classificationSettingsID = const Value.absent(),
    this.enumColumnName = const Value.absent(),
    this.enumFieldValue = const Value.absent(),
    this.enumFieldValueDisplayName = const Value.absent(),
    this.enumFieldValueImageName = const Value.absent(),
    this.classificationHeader = const Value.absent(),
    this.parentClassificationID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.tableNameVal = const Value.absent(),
  });

  ClassificationsCompanion copyWith(
      {Value<int> autoClassificationID,
      Value<String> classificationSettingsID,
      Value<String> enumColumnName,
      Value<String> enumFieldValue,
      Value<String> enumFieldValueDisplayName,
      Value<String> enumFieldValueImageName,
      Value<String> classificationHeader,
      Value<String> parentClassificationID,
      Value<String> lastUpdated,
      Value<String> tableNameVal}) {
    return ClassificationsCompanion(
      autoClassificationID: autoClassificationID ?? this.autoClassificationID,
      classificationSettingsID:
          classificationSettingsID ?? this.classificationSettingsID,
      enumColumnName: enumColumnName ?? this.enumColumnName,
      enumFieldValue: enumFieldValue ?? this.enumFieldValue,
      enumFieldValueDisplayName:
          enumFieldValueDisplayName ?? this.enumFieldValueDisplayName,
      enumFieldValueImageName:
          enumFieldValueImageName ?? this.enumFieldValueImageName,
      classificationHeader: classificationHeader ?? this.classificationHeader,
      parentClassificationID:
          parentClassificationID ?? this.parentClassificationID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      tableNameVal: tableNameVal ?? this.tableNameVal,
    );
  }
}

class $ClassificationsTable extends Classifications
    with TableInfo<$ClassificationsTable, Classification> {
  final GeneratedDatabase _db;
  final String _alias;

  $ClassificationsTable(this._db, [this._alias]);

  final VerificationMeta _autoClassificationIDMeta =
      const VerificationMeta('autoClassificationID');
  GeneratedIntColumn _autoClassificationID;

  @override
  GeneratedIntColumn get autoClassificationID =>
      _autoClassificationID ??= _constructAutoClassificationID();

  GeneratedIntColumn _constructAutoClassificationID() {
    return GeneratedIntColumn('auto_classification_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _classificationSettingsIDMeta =
      const VerificationMeta('classificationSettingsID');
  GeneratedTextColumn _classificationSettingsID;

  @override
  GeneratedTextColumn get classificationSettingsID =>
      _classificationSettingsID ??= _constructClassificationSettingsID();

  GeneratedTextColumn _constructClassificationSettingsID() {
    return GeneratedTextColumn(
      'classification_settings_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _enumColumnNameMeta =
      const VerificationMeta('enumColumnName');
  GeneratedTextColumn _enumColumnName;

  @override
  GeneratedTextColumn get enumColumnName =>
      _enumColumnName ??= _constructEnumColumnName();

  GeneratedTextColumn _constructEnumColumnName() {
    return GeneratedTextColumn(
      'enum_column_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _enumFieldValueMeta =
      const VerificationMeta('enumFieldValue');
  GeneratedTextColumn _enumFieldValue;

  @override
  GeneratedTextColumn get enumFieldValue =>
      _enumFieldValue ??= _constructEnumFieldValue();

  GeneratedTextColumn _constructEnumFieldValue() {
    return GeneratedTextColumn(
      'enum_field_value',
      $tableName,
      true,
    );
  }

  final VerificationMeta _enumFieldValueDisplayNameMeta =
      const VerificationMeta('enumFieldValueDisplayName');
  GeneratedTextColumn _enumFieldValueDisplayName;

  @override
  GeneratedTextColumn get enumFieldValueDisplayName =>
      _enumFieldValueDisplayName ??= _constructEnumFieldValueDisplayName();

  GeneratedTextColumn _constructEnumFieldValueDisplayName() {
    return GeneratedTextColumn(
      'enum_field_value_display_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _enumFieldValueImageNameMeta =
      const VerificationMeta('enumFieldValueImageName');
  GeneratedTextColumn _enumFieldValueImageName;

  @override
  GeneratedTextColumn get enumFieldValueImageName =>
      _enumFieldValueImageName ??= _constructEnumFieldValueImageName();

  GeneratedTextColumn _constructEnumFieldValueImageName() {
    return GeneratedTextColumn(
      'enum_field_value_image_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _classificationHeaderMeta =
      const VerificationMeta('classificationHeader');
  GeneratedTextColumn _classificationHeader;

  @override
  GeneratedTextColumn get classificationHeader =>
      _classificationHeader ??= _constructClassificationHeader();

  GeneratedTextColumn _constructClassificationHeader() {
    return GeneratedTextColumn(
      'classification_header',
      $tableName,
      true,
    );
  }

  final VerificationMeta _parentClassificationIDMeta =
      const VerificationMeta('parentClassificationID');
  GeneratedTextColumn _parentClassificationID;

  @override
  GeneratedTextColumn get parentClassificationID =>
      _parentClassificationID ??= _constructParentClassificationID();

  GeneratedTextColumn _constructParentClassificationID() {
    return GeneratedTextColumn(
      'parent_classification_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tableNameValMeta =
      const VerificationMeta('tableNameVal');
  GeneratedTextColumn _tableNameVal;

  @override
  GeneratedTextColumn get tableNameVal =>
      _tableNameVal ??= _constructTableNameVal();

  GeneratedTextColumn _constructTableNameVal() {
    return GeneratedTextColumn(
      'table_name_val',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoClassificationID,
        classificationSettingsID,
        enumColumnName,
        enumFieldValue,
        enumFieldValueDisplayName,
        enumFieldValueImageName,
        classificationHeader,
        parentClassificationID,
        lastUpdated,
        tableNameVal
      ];

  @override
  $ClassificationsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'classifications';
  @override
  final String actualTableName = 'classifications';

  @override
  VerificationContext validateIntegrity(ClassificationsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoClassificationID.present) {
      context.handle(
          _autoClassificationIDMeta,
          autoClassificationID.isAcceptableValue(
              d.autoClassificationID.value, _autoClassificationIDMeta));
    }
    if (d.classificationSettingsID.present) {
      context.handle(
          _classificationSettingsIDMeta,
          classificationSettingsID.isAcceptableValue(
              d.classificationSettingsID.value, _classificationSettingsIDMeta));
    }
    if (d.enumColumnName.present) {
      context.handle(
          _enumColumnNameMeta,
          enumColumnName.isAcceptableValue(
              d.enumColumnName.value, _enumColumnNameMeta));
    }
    if (d.enumFieldValue.present) {
      context.handle(
          _enumFieldValueMeta,
          enumFieldValue.isAcceptableValue(
              d.enumFieldValue.value, _enumFieldValueMeta));
    }
    if (d.enumFieldValueDisplayName.present) {
      context.handle(
          _enumFieldValueDisplayNameMeta,
          enumFieldValueDisplayName.isAcceptableValue(
              d.enumFieldValueDisplayName.value,
              _enumFieldValueDisplayNameMeta));
    }
    if (d.enumFieldValueImageName.present) {
      context.handle(
          _enumFieldValueImageNameMeta,
          enumFieldValueImageName.isAcceptableValue(
              d.enumFieldValueImageName.value, _enumFieldValueImageNameMeta));
    }
    if (d.classificationHeader.present) {
      context.handle(
          _classificationHeaderMeta,
          classificationHeader.isAcceptableValue(
              d.classificationHeader.value, _classificationHeaderMeta));
    }
    if (d.parentClassificationID.present) {
      context.handle(
          _parentClassificationIDMeta,
          parentClassificationID.isAcceptableValue(
              d.parentClassificationID.value, _parentClassificationIDMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.tableNameVal.present) {
      context.handle(
          _tableNameValMeta,
          tableNameVal.isAcceptableValue(
              d.tableNameVal.value, _tableNameValMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoClassificationID};

  @override
  Classification map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Classification.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ClassificationsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoClassificationID.present) {
      map['auto_classification_i_d'] =
          Variable<int, IntType>(d.autoClassificationID.value);
    }
    if (d.classificationSettingsID.present) {
      map['classification_settings_i_d'] =
          Variable<String, StringType>(d.classificationSettingsID.value);
    }
    if (d.enumColumnName.present) {
      map['enum_column_name'] =
          Variable<String, StringType>(d.enumColumnName.value);
    }
    if (d.enumFieldValue.present) {
      map['enum_field_value'] =
          Variable<String, StringType>(d.enumFieldValue.value);
    }
    if (d.enumFieldValueDisplayName.present) {
      map['enum_field_value_display_name'] =
          Variable<String, StringType>(d.enumFieldValueDisplayName.value);
    }
    if (d.enumFieldValueImageName.present) {
      map['enum_field_value_image_name'] =
          Variable<String, StringType>(d.enumFieldValueImageName.value);
    }
    if (d.classificationHeader.present) {
      map['classification_header'] =
          Variable<String, StringType>(d.classificationHeader.value);
    }
    if (d.parentClassificationID.present) {
      map['parent_classification_i_d'] =
          Variable<String, StringType>(d.parentClassificationID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.tableNameVal.present) {
      map['table_name_val'] =
          Variable<String, StringType>(d.tableNameVal.value);
    }
    return map;
  }

  @override
  $ClassificationsTable createAlias(String alias) {
    return $ClassificationsTable(_db, alias);
  }
}

class Item extends DataClass implements Insertable<Item> {
  final int autoItemID;
  final String itemID;
  final String rfidTag;
  final String itemERPKey;
  final String skuNumber;
  final String designNumber;
  final String imageName;
  final String itemStatus;
  final String itemDescription;
  final String itemType;
  final String itemCategory;
  final String size;
  final String otherWeight;
  final double netWeight;
  final String company;
  final String locationID;
  final String uom;
  final String uomRef;
  final int quantity;
  final int costPrice;
  final int listPrice;
  final String markUp;
  final String reserved1;
  final String reserved2;
  final String reserved3;
  final String reserved4;
  final String reserved5;
  final String lastUpdated;
  final String defaultImageName;
  final String row;

  Item(
      {@required this.autoItemID,
      @required this.itemID,
      @required this.rfidTag,
      this.itemERPKey,
      this.skuNumber,
      this.designNumber,
      this.imageName,
      this.itemStatus,
      this.itemDescription,
      this.itemType,
      this.itemCategory,
      this.size,
      this.otherWeight,
      this.netWeight,
      this.company,
      this.locationID,
      this.uom,
      this.uomRef,
      this.quantity,
      this.costPrice,
      this.listPrice,
      this.markUp,
      this.reserved1,
      this.reserved2,
      this.reserved3,
      this.reserved4,
      this.reserved5,
      this.lastUpdated,
      this.defaultImageName,
      this.row});

  factory Item.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Item(
      autoItemID: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}auto_item_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      rfidTag: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}rfid_tag']),
      itemERPKey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_e_r_p_key']),
      skuNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sku_number']),
      designNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}design_number']),
      imageName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_name']),
      itemStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_status']),
      itemDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_description']),
      itemType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_type']),
      itemCategory: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_category']),
      size: stringType.mapFromDatabaseResponse(data['${effectivePrefix}size']),
      otherWeight: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}other_weight']),
      netWeight: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}net_weight']),
      company:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}company']),
      locationID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}location_i_d']),
      uom: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom']),
      uomRef:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom_ref']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      costPrice:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}cost_price']),
      listPrice:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}list_price']),
      markUp:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}mark_up']),
      reserved1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved1']),
      reserved2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved2']),
      reserved3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved3']),
      reserved4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved4']),
      reserved5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved5']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      defaultImageName: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}default_image_name']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory Item.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Item(
      autoItemID: serializer.fromJson<int>(json['autoItemID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      rfidTag: serializer.fromJson<String>(json['rfidTag']),
      itemERPKey: serializer.fromJson<String>(json['itemERPKey']),
      skuNumber: serializer.fromJson<String>(json['skuNumber']),
      designNumber: serializer.fromJson<String>(json['designNumber']),
      imageName: serializer.fromJson<String>(json['imageName']),
      itemStatus: serializer.fromJson<String>(json['itemStatus']),
      itemDescription: serializer.fromJson<String>(json['itemDescription']),
      itemType: serializer.fromJson<String>(json['itemType']),
      itemCategory: serializer.fromJson<String>(json['itemCategory']),
      size: serializer.fromJson<String>(json['size']),
      otherWeight: serializer.fromJson<String>(json['otherWeight']),
      netWeight: serializer.fromJson<double>(json['netWeight']),
      company: serializer.fromJson<String>(json['company']),
      locationID: serializer.fromJson<String>(json['locationID']),
      uom: serializer.fromJson<String>(json['uom']),
      uomRef: serializer.fromJson<String>(json['uomRef']),
      quantity: serializer.fromJson<int>(json['quantity']),
      costPrice: serializer.fromJson<int>(json['costPrice']),
      listPrice: serializer.fromJson<int>(json['listPrice']),
      markUp: serializer.fromJson<String>(json['markUp']),
      reserved1: serializer.fromJson<String>(json['reserved1']),
      reserved2: serializer.fromJson<String>(json['reserved2']),
      reserved3: serializer.fromJson<String>(json['reserved3']),
      reserved4: serializer.fromJson<String>(json['reserved4']),
      reserved5: serializer.fromJson<String>(json['reserved5']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      defaultImageName: serializer.fromJson<String>(json['defaultImageName']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoItemID': serializer.toJson<int>(autoItemID),
      'itemID': serializer.toJson<String>(itemID),
      'rfidTag': serializer.toJson<String>(rfidTag),
      'itemERPKey': serializer.toJson<String>(itemERPKey),
      'skuNumber': serializer.toJson<String>(skuNumber),
      'designNumber': serializer.toJson<String>(designNumber),
      'imageName': serializer.toJson<String>(imageName),
      'itemStatus': serializer.toJson<String>(itemStatus),
      'itemDescription': serializer.toJson<String>(itemDescription),
      'itemType': serializer.toJson<String>(itemType),
      'itemCategory': serializer.toJson<String>(itemCategory),
      'size': serializer.toJson<String>(size),
      'otherWeight': serializer.toJson<String>(otherWeight),
      'netWeight': serializer.toJson<double>(netWeight),
      'company': serializer.toJson<String>(company),
      'locationID': serializer.toJson<String>(locationID),
      'uom': serializer.toJson<String>(uom),
      'uomRef': serializer.toJson<String>(uomRef),
      'quantity': serializer.toJson<int>(quantity),
      'costPrice': serializer.toJson<int>(costPrice),
      'listPrice': serializer.toJson<int>(listPrice),
      'markUp': serializer.toJson<String>(markUp),
      'reserved1': serializer.toJson<String>(reserved1),
      'reserved2': serializer.toJson<String>(reserved2),
      'reserved3': serializer.toJson<String>(reserved3),
      'reserved4': serializer.toJson<String>(reserved4),
      'reserved5': serializer.toJson<String>(reserved5),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'defaultImageName': serializer.toJson<String>(defaultImageName),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  ItemsCompanion createCompanion(bool nullToAbsent) {
    return ItemsCompanion(
      autoItemID: autoItemID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoItemID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      rfidTag: rfidTag == null && nullToAbsent
          ? const Value.absent()
          : Value(rfidTag),
      itemERPKey: itemERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(itemERPKey),
      skuNumber: skuNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(skuNumber),
      designNumber: designNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(designNumber),
      imageName: imageName == null && nullToAbsent
          ? const Value.absent()
          : Value(imageName),
      itemStatus: itemStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(itemStatus),
      itemDescription: itemDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(itemDescription),
      itemType: itemType == null && nullToAbsent
          ? const Value.absent()
          : Value(itemType),
      itemCategory: itemCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(itemCategory),
      size: size == null && nullToAbsent ? const Value.absent() : Value(size),
      otherWeight: otherWeight == null && nullToAbsent
          ? const Value.absent()
          : Value(otherWeight),
      netWeight: netWeight == null && nullToAbsent
          ? const Value.absent()
          : Value(netWeight),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      locationID: locationID == null && nullToAbsent
          ? const Value.absent()
          : Value(locationID),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      uomRef:
          uomRef == null && nullToAbsent ? const Value.absent() : Value(uomRef),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      costPrice: costPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(costPrice),
      listPrice: listPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(listPrice),
      markUp:
          markUp == null && nullToAbsent ? const Value.absent() : Value(markUp),
      reserved1: reserved1 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved1),
      reserved2: reserved2 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved2),
      reserved3: reserved3 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved3),
      reserved4: reserved4 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved4),
      reserved5: reserved5 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved5),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      defaultImageName: defaultImageName == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultImageName),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  Item copyWith(
          {int autoItemID,
          String itemID,
          String rfidTag,
          String itemERPKey,
          String skuNumber,
          String designNumber,
          String imageName,
          String itemStatus,
          String itemDescription,
          String itemType,
          String itemCategory,
          String size,
          String otherWeight,
          double netWeight,
          String company,
          String locationID,
          String uom,
          String uomRef,
          int quantity,
          int costPrice,
          int listPrice,
          String markUp,
          String reserved1,
          String reserved2,
          String reserved3,
          String reserved4,
          String reserved5,
          String lastUpdated,
          String defaultImageName,
          String row}) =>
      Item(
        autoItemID: autoItemID ?? this.autoItemID,
        itemID: itemID ?? this.itemID,
        rfidTag: rfidTag ?? this.rfidTag,
        itemERPKey: itemERPKey ?? this.itemERPKey,
        skuNumber: skuNumber ?? this.skuNumber,
        designNumber: designNumber ?? this.designNumber,
        imageName: imageName ?? this.imageName,
        itemStatus: itemStatus ?? this.itemStatus,
        itemDescription: itemDescription ?? this.itemDescription,
        itemType: itemType ?? this.itemType,
        itemCategory: itemCategory ?? this.itemCategory,
        size: size ?? this.size,
        otherWeight: otherWeight ?? this.otherWeight,
        netWeight: netWeight ?? this.netWeight,
        company: company ?? this.company,
        locationID: locationID ?? this.locationID,
        uom: uom ?? this.uom,
        uomRef: uomRef ?? this.uomRef,
        quantity: quantity ?? this.quantity,
        costPrice: costPrice ?? this.costPrice,
        listPrice: listPrice ?? this.listPrice,
        markUp: markUp ?? this.markUp,
        reserved1: reserved1 ?? this.reserved1,
        reserved2: reserved2 ?? this.reserved2,
        reserved3: reserved3 ?? this.reserved3,
        reserved4: reserved4 ?? this.reserved4,
        reserved5: reserved5 ?? this.reserved5,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        defaultImageName: defaultImageName ?? this.defaultImageName,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('autoItemID: $autoItemID, ')
          ..write('itemID: $itemID, ')
          ..write('rfidTag: $rfidTag, ')
          ..write('itemERPKey: $itemERPKey, ')
          ..write('skuNumber: $skuNumber, ')
          ..write('designNumber: $designNumber, ')
          ..write('imageName: $imageName, ')
          ..write('itemStatus: $itemStatus, ')
          ..write('itemDescription: $itemDescription, ')
          ..write('itemType: $itemType, ')
          ..write('itemCategory: $itemCategory, ')
          ..write('size: $size, ')
          ..write('otherWeight: $otherWeight, ')
          ..write('netWeight: $netWeight, ')
          ..write('company: $company, ')
          ..write('locationID: $locationID, ')
          ..write('uom: $uom, ')
          ..write('uomRef: $uomRef, ')
          ..write('quantity: $quantity, ')
          ..write('costPrice: $costPrice, ')
          ..write('listPrice: $listPrice, ')
          ..write('markUp: $markUp, ')
          ..write('reserved1: $reserved1, ')
          ..write('reserved2: $reserved2, ')
          ..write('reserved3: $reserved3, ')
          ..write('reserved4: $reserved4, ')
          ..write('reserved5: $reserved5, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('defaultImageName: $defaultImageName, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoItemID.hashCode,
      $mrjc(
          itemID.hashCode,
          $mrjc(
              rfidTag.hashCode,
              $mrjc(
                  itemERPKey.hashCode,
                  $mrjc(
                      skuNumber.hashCode,
                      $mrjc(
                          designNumber.hashCode,
                          $mrjc(
                              imageName.hashCode,
                              $mrjc(
                                  itemStatus.hashCode,
                                  $mrjc(
                                      itemDescription.hashCode,
                                      $mrjc(
                                          itemType.hashCode,
                                          $mrjc(
                                              itemCategory.hashCode,
                                              $mrjc(
                                                  size.hashCode,
                                                  $mrjc(
                                                      otherWeight.hashCode,
                                                      $mrjc(
                                                          netWeight.hashCode,
                                                          $mrjc(
                                                              company.hashCode,
                                                              $mrjc(
                                                                  locationID
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      uom
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          uomRef
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              quantity.hashCode,
                                                                              $mrjc(costPrice.hashCode, $mrjc(listPrice.hashCode, $mrjc(markUp.hashCode, $mrjc(reserved1.hashCode, $mrjc(reserved2.hashCode, $mrjc(reserved3.hashCode, $mrjc(reserved4.hashCode, $mrjc(reserved5.hashCode, $mrjc(lastUpdated.hashCode, $mrjc(defaultImageName.hashCode, row.hashCode))))))))))))))))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Item &&
          other.autoItemID == this.autoItemID &&
          other.itemID == this.itemID &&
          other.rfidTag == this.rfidTag &&
          other.itemERPKey == this.itemERPKey &&
          other.skuNumber == this.skuNumber &&
          other.designNumber == this.designNumber &&
          other.imageName == this.imageName &&
          other.itemStatus == this.itemStatus &&
          other.itemDescription == this.itemDescription &&
          other.itemType == this.itemType &&
          other.itemCategory == this.itemCategory &&
          other.size == this.size &&
          other.otherWeight == this.otherWeight &&
          other.netWeight == this.netWeight &&
          other.company == this.company &&
          other.locationID == this.locationID &&
          other.uom == this.uom &&
          other.uomRef == this.uomRef &&
          other.quantity == this.quantity &&
          other.costPrice == this.costPrice &&
          other.listPrice == this.listPrice &&
          other.markUp == this.markUp &&
          other.reserved1 == this.reserved1 &&
          other.reserved2 == this.reserved2 &&
          other.reserved3 == this.reserved3 &&
          other.reserved4 == this.reserved4 &&
          other.reserved5 == this.reserved5 &&
          other.lastUpdated == this.lastUpdated &&
          other.defaultImageName == this.defaultImageName &&
          other.row == this.row);
}

class ItemsCompanion extends UpdateCompanion<Item> {
  final Value<int> autoItemID;
  final Value<String> itemID;
  final Value<String> rfidTag;
  final Value<String> itemERPKey;
  final Value<String> skuNumber;
  final Value<String> designNumber;
  final Value<String> imageName;
  final Value<String> itemStatus;
  final Value<String> itemDescription;
  final Value<String> itemType;
  final Value<String> itemCategory;
  final Value<String> size;
  final Value<String> otherWeight;
  final Value<double> netWeight;
  final Value<String> company;
  final Value<String> locationID;
  final Value<String> uom;
  final Value<String> uomRef;
  final Value<int> quantity;
  final Value<int> costPrice;
  final Value<int> listPrice;
  final Value<String> markUp;
  final Value<String> reserved1;
  final Value<String> reserved2;
  final Value<String> reserved3;
  final Value<String> reserved4;
  final Value<String> reserved5;
  final Value<String> lastUpdated;
  final Value<String> defaultImageName;
  final Value<String> row;

  const ItemsCompanion({
    this.autoItemID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.rfidTag = const Value.absent(),
    this.itemERPKey = const Value.absent(),
    this.skuNumber = const Value.absent(),
    this.designNumber = const Value.absent(),
    this.imageName = const Value.absent(),
    this.itemStatus = const Value.absent(),
    this.itemDescription = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemCategory = const Value.absent(),
    this.size = const Value.absent(),
    this.otherWeight = const Value.absent(),
    this.netWeight = const Value.absent(),
    this.company = const Value.absent(),
    this.locationID = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.quantity = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.markUp = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.defaultImageName = const Value.absent(),
    this.row = const Value.absent(),
  });

  ItemsCompanion.insert({
    this.autoItemID = const Value.absent(),
    @required String itemID,
    @required String rfidTag,
    this.itemERPKey = const Value.absent(),
    this.skuNumber = const Value.absent(),
    this.designNumber = const Value.absent(),
    this.imageName = const Value.absent(),
    this.itemStatus = const Value.absent(),
    this.itemDescription = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemCategory = const Value.absent(),
    this.size = const Value.absent(),
    this.otherWeight = const Value.absent(),
    this.netWeight = const Value.absent(),
    this.company = const Value.absent(),
    this.locationID = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.quantity = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.markUp = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.defaultImageName = const Value.absent(),
    this.row = const Value.absent(),
  })  : itemID = Value(itemID),
        rfidTag = Value(rfidTag);

  ItemsCompanion copyWith(
      {Value<int> autoItemID,
      Value<String> itemID,
      Value<String> rfidTag,
      Value<String> itemERPKey,
      Value<String> skuNumber,
      Value<String> designNumber,
      Value<String> imageName,
      Value<String> itemStatus,
      Value<String> itemDescription,
      Value<String> itemType,
      Value<String> itemCategory,
      Value<String> size,
      Value<String> otherWeight,
      Value<double> netWeight,
      Value<String> company,
      Value<String> locationID,
      Value<String> uom,
      Value<String> uomRef,
      Value<int> quantity,
      Value<int> costPrice,
      Value<int> listPrice,
      Value<String> markUp,
      Value<String> reserved1,
      Value<String> reserved2,
      Value<String> reserved3,
      Value<String> reserved4,
      Value<String> reserved5,
      Value<String> lastUpdated,
      Value<String> defaultImageName,
      Value<String> row}) {
    return ItemsCompanion(
      autoItemID: autoItemID ?? this.autoItemID,
      itemID: itemID ?? this.itemID,
      rfidTag: rfidTag ?? this.rfidTag,
      itemERPKey: itemERPKey ?? this.itemERPKey,
      skuNumber: skuNumber ?? this.skuNumber,
      designNumber: designNumber ?? this.designNumber,
      imageName: imageName ?? this.imageName,
      itemStatus: itemStatus ?? this.itemStatus,
      itemDescription: itemDescription ?? this.itemDescription,
      itemType: itemType ?? this.itemType,
      itemCategory: itemCategory ?? this.itemCategory,
      size: size ?? this.size,
      otherWeight: otherWeight ?? this.otherWeight,
      netWeight: netWeight ?? this.netWeight,
      company: company ?? this.company,
      locationID: locationID ?? this.locationID,
      uom: uom ?? this.uom,
      uomRef: uomRef ?? this.uomRef,
      quantity: quantity ?? this.quantity,
      costPrice: costPrice ?? this.costPrice,
      listPrice: listPrice ?? this.listPrice,
      markUp: markUp ?? this.markUp,
      reserved1: reserved1 ?? this.reserved1,
      reserved2: reserved2 ?? this.reserved2,
      reserved3: reserved3 ?? this.reserved3,
      reserved4: reserved4 ?? this.reserved4,
      reserved5: reserved5 ?? this.reserved5,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      defaultImageName: defaultImageName ?? this.defaultImageName,
      row: row ?? this.row,
    );
  }
}

class $ItemsTable extends Items with TableInfo<$ItemsTable, Item> {
  final GeneratedDatabase _db;
  final String _alias;

  $ItemsTable(this._db, [this._alias]);

  final VerificationMeta _autoItemIDMeta = const VerificationMeta('autoItemID');
  GeneratedIntColumn _autoItemID;

  @override
  GeneratedIntColumn get autoItemID => _autoItemID ??= _constructAutoItemID();

  GeneratedIntColumn _constructAutoItemID() {
    return GeneratedIntColumn('auto_item_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn('item_i_d', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _rfidTagMeta = const VerificationMeta('rfidTag');
  GeneratedTextColumn _rfidTag;

  @override
  GeneratedTextColumn get rfidTag => _rfidTag ??= _constructRfidTag();

  GeneratedTextColumn _constructRfidTag() {
    return GeneratedTextColumn('rfid_tag', $tableName, false,
        minTextLength: 1, maxTextLength: 250);
  }

  final VerificationMeta _itemERPKeyMeta = const VerificationMeta('itemERPKey');
  GeneratedTextColumn _itemERPKey;

  @override
  GeneratedTextColumn get itemERPKey => _itemERPKey ??= _constructItemERPKey();

  GeneratedTextColumn _constructItemERPKey() {
    return GeneratedTextColumn(
      'item_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _skuNumberMeta = const VerificationMeta('skuNumber');
  GeneratedTextColumn _skuNumber;

  @override
  GeneratedTextColumn get skuNumber => _skuNumber ??= _constructSkuNumber();

  GeneratedTextColumn _constructSkuNumber() {
    return GeneratedTextColumn(
      'sku_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _designNumberMeta =
      const VerificationMeta('designNumber');
  GeneratedTextColumn _designNumber;

  @override
  GeneratedTextColumn get designNumber =>
      _designNumber ??= _constructDesignNumber();

  GeneratedTextColumn _constructDesignNumber() {
    return GeneratedTextColumn(
      'design_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _imageNameMeta = const VerificationMeta('imageName');
  GeneratedTextColumn _imageName;

  @override
  GeneratedTextColumn get imageName => _imageName ??= _constructImageName();

  GeneratedTextColumn _constructImageName() {
    return GeneratedTextColumn(
      'image_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _itemStatusMeta = const VerificationMeta('itemStatus');
  GeneratedTextColumn _itemStatus;

  @override
  GeneratedTextColumn get itemStatus => _itemStatus ??= _constructItemStatus();

  GeneratedTextColumn _constructItemStatus() {
    return GeneratedTextColumn(
      'item_status',
      $tableName,
      true,
    );
  }

  final VerificationMeta _itemDescriptionMeta =
      const VerificationMeta('itemDescription');
  GeneratedTextColumn _itemDescription;

  @override
  GeneratedTextColumn get itemDescription =>
      _itemDescription ??= _constructItemDescription();

  GeneratedTextColumn _constructItemDescription() {
    return GeneratedTextColumn(
      'item_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _itemTypeMeta = const VerificationMeta('itemType');
  GeneratedTextColumn _itemType;

  @override
  GeneratedTextColumn get itemType => _itemType ??= _constructItemType();

  GeneratedTextColumn _constructItemType() {
    return GeneratedTextColumn(
      'item_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _itemCategoryMeta =
      const VerificationMeta('itemCategory');
  GeneratedTextColumn _itemCategory;

  @override
  GeneratedTextColumn get itemCategory =>
      _itemCategory ??= _constructItemCategory();

  GeneratedTextColumn _constructItemCategory() {
    return GeneratedTextColumn(
      'item_category',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sizeMeta = const VerificationMeta('size');
  GeneratedTextColumn _size;

  @override
  GeneratedTextColumn get size => _size ??= _constructSize();

  GeneratedTextColumn _constructSize() {
    return GeneratedTextColumn(
      'size',
      $tableName,
      true,
    );
  }

  final VerificationMeta _otherWeightMeta =
      const VerificationMeta('otherWeight');
  GeneratedTextColumn _otherWeight;

  @override
  GeneratedTextColumn get otherWeight =>
      _otherWeight ??= _constructOtherWeight();

  GeneratedTextColumn _constructOtherWeight() {
    return GeneratedTextColumn(
      'other_weight',
      $tableName,
      true,
    );
  }

  final VerificationMeta _netWeightMeta = const VerificationMeta('netWeight');
  GeneratedRealColumn _netWeight;

  @override
  GeneratedRealColumn get netWeight => _netWeight ??= _constructNetWeight();

  GeneratedRealColumn _constructNetWeight() {
    return GeneratedRealColumn(
      'net_weight',
      $tableName,
      true,
    );
  }

  final VerificationMeta _companyMeta = const VerificationMeta('company');
  GeneratedTextColumn _company;

  @override
  GeneratedTextColumn get company => _company ??= _constructCompany();

  GeneratedTextColumn _constructCompany() {
    return GeneratedTextColumn(
      'company',
      $tableName,
      true,
    );
  }

  final VerificationMeta _locationIDMeta = const VerificationMeta('locationID');
  GeneratedTextColumn _locationID;

  @override
  GeneratedTextColumn get locationID => _locationID ??= _constructLocationID();

  GeneratedTextColumn _constructLocationID() {
    return GeneratedTextColumn(
      'location_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomMeta = const VerificationMeta('uom');
  GeneratedTextColumn _uom;

  @override
  GeneratedTextColumn get uom => _uom ??= _constructUom();

  GeneratedTextColumn _constructUom() {
    return GeneratedTextColumn(
      'uom',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomRefMeta = const VerificationMeta('uomRef');
  GeneratedTextColumn _uomRef;

  @override
  GeneratedTextColumn get uomRef => _uomRef ??= _constructUomRef();

  GeneratedTextColumn _constructUomRef() {
    return GeneratedTextColumn(
      'uom_ref',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;

  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();

  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn(
      'quantity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _costPriceMeta = const VerificationMeta('costPrice');
  GeneratedIntColumn _costPrice;

  @override
  GeneratedIntColumn get costPrice => _costPrice ??= _constructCostPrice();

  GeneratedIntColumn _constructCostPrice() {
    return GeneratedIntColumn(
      'cost_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _listPriceMeta = const VerificationMeta('listPrice');
  GeneratedIntColumn _listPrice;

  @override
  GeneratedIntColumn get listPrice => _listPrice ??= _constructListPrice();

  GeneratedIntColumn _constructListPrice() {
    return GeneratedIntColumn(
      'list_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _markUpMeta = const VerificationMeta('markUp');
  GeneratedTextColumn _markUp;

  @override
  GeneratedTextColumn get markUp => _markUp ??= _constructMarkUp();

  GeneratedTextColumn _constructMarkUp() {
    return GeneratedTextColumn(
      'mark_up',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved1Meta = const VerificationMeta('reserved1');
  GeneratedTextColumn _reserved1;

  @override
  GeneratedTextColumn get reserved1 => _reserved1 ??= _constructReserved1();

  GeneratedTextColumn _constructReserved1() {
    return GeneratedTextColumn(
      'reserved1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved2Meta = const VerificationMeta('reserved2');
  GeneratedTextColumn _reserved2;

  @override
  GeneratedTextColumn get reserved2 => _reserved2 ??= _constructReserved2();

  GeneratedTextColumn _constructReserved2() {
    return GeneratedTextColumn(
      'reserved2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved3Meta = const VerificationMeta('reserved3');
  GeneratedTextColumn _reserved3;

  @override
  GeneratedTextColumn get reserved3 => _reserved3 ??= _constructReserved3();

  GeneratedTextColumn _constructReserved3() {
    return GeneratedTextColumn(
      'reserved3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved4Meta = const VerificationMeta('reserved4');
  GeneratedTextColumn _reserved4;

  @override
  GeneratedTextColumn get reserved4 => _reserved4 ??= _constructReserved4();

  GeneratedTextColumn _constructReserved4() {
    return GeneratedTextColumn(
      'reserved4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved5Meta = const VerificationMeta('reserved5');
  GeneratedTextColumn _reserved5;

  @override
  GeneratedTextColumn get reserved5 => _reserved5 ??= _constructReserved5();

  GeneratedTextColumn _constructReserved5() {
    return GeneratedTextColumn(
      'reserved5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _defaultImageNameMeta =
      const VerificationMeta('defaultImageName');
  GeneratedTextColumn _defaultImageName;

  @override
  GeneratedTextColumn get defaultImageName =>
      _defaultImageName ??= _constructDefaultImageName();

  GeneratedTextColumn _constructDefaultImageName() {
    return GeneratedTextColumn(
      'default_image_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoItemID,
        itemID,
        rfidTag,
        itemERPKey,
        skuNumber,
        designNumber,
        imageName,
        itemStatus,
        itemDescription,
        itemType,
        itemCategory,
        size,
        otherWeight,
        netWeight,
        company,
        locationID,
        uom,
        uomRef,
        quantity,
        costPrice,
        listPrice,
        markUp,
        reserved1,
        reserved2,
        reserved3,
        reserved4,
        reserved5,
        lastUpdated,
        defaultImageName,
        row
      ];

  @override
  $ItemsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'items';
  @override
  final String actualTableName = 'items';

  @override
  VerificationContext validateIntegrity(ItemsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoItemID.present) {
      context.handle(_autoItemIDMeta,
          autoItemID.isAcceptableValue(d.autoItemID.value, _autoItemIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    } else if (isInserting) {
      context.missing(_itemIDMeta);
    }
    if (d.rfidTag.present) {
      context.handle(_rfidTagMeta,
          rfidTag.isAcceptableValue(d.rfidTag.value, _rfidTagMeta));
    } else if (isInserting) {
      context.missing(_rfidTagMeta);
    }
    if (d.itemERPKey.present) {
      context.handle(_itemERPKeyMeta,
          itemERPKey.isAcceptableValue(d.itemERPKey.value, _itemERPKeyMeta));
    }
    if (d.skuNumber.present) {
      context.handle(_skuNumberMeta,
          skuNumber.isAcceptableValue(d.skuNumber.value, _skuNumberMeta));
    }
    if (d.designNumber.present) {
      context.handle(
          _designNumberMeta,
          designNumber.isAcceptableValue(
              d.designNumber.value, _designNumberMeta));
    }
    if (d.imageName.present) {
      context.handle(_imageNameMeta,
          imageName.isAcceptableValue(d.imageName.value, _imageNameMeta));
    }
    if (d.itemStatus.present) {
      context.handle(_itemStatusMeta,
          itemStatus.isAcceptableValue(d.itemStatus.value, _itemStatusMeta));
    }
    if (d.itemDescription.present) {
      context.handle(
          _itemDescriptionMeta,
          itemDescription.isAcceptableValue(
              d.itemDescription.value, _itemDescriptionMeta));
    }
    if (d.itemType.present) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableValue(d.itemType.value, _itemTypeMeta));
    }
    if (d.itemCategory.present) {
      context.handle(
          _itemCategoryMeta,
          itemCategory.isAcceptableValue(
              d.itemCategory.value, _itemCategoryMeta));
    }
    if (d.size.present) {
      context.handle(
          _sizeMeta, size.isAcceptableValue(d.size.value, _sizeMeta));
    }
    if (d.otherWeight.present) {
      context.handle(_otherWeightMeta,
          otherWeight.isAcceptableValue(d.otherWeight.value, _otherWeightMeta));
    }
    if (d.netWeight.present) {
      context.handle(_netWeightMeta,
          netWeight.isAcceptableValue(d.netWeight.value, _netWeightMeta));
    }
    if (d.company.present) {
      context.handle(_companyMeta,
          company.isAcceptableValue(d.company.value, _companyMeta));
    }
    if (d.locationID.present) {
      context.handle(_locationIDMeta,
          locationID.isAcceptableValue(d.locationID.value, _locationIDMeta));
    }
    if (d.uom.present) {
      context.handle(_uomMeta, uom.isAcceptableValue(d.uom.value, _uomMeta));
    }
    if (d.uomRef.present) {
      context.handle(
          _uomRefMeta, uomRef.isAcceptableValue(d.uomRef.value, _uomRefMeta));
    }
    if (d.quantity.present) {
      context.handle(_quantityMeta,
          quantity.isAcceptableValue(d.quantity.value, _quantityMeta));
    }
    if (d.costPrice.present) {
      context.handle(_costPriceMeta,
          costPrice.isAcceptableValue(d.costPrice.value, _costPriceMeta));
    }
    if (d.listPrice.present) {
      context.handle(_listPriceMeta,
          listPrice.isAcceptableValue(d.listPrice.value, _listPriceMeta));
    }
    if (d.markUp.present) {
      context.handle(
          _markUpMeta, markUp.isAcceptableValue(d.markUp.value, _markUpMeta));
    }
    if (d.reserved1.present) {
      context.handle(_reserved1Meta,
          reserved1.isAcceptableValue(d.reserved1.value, _reserved1Meta));
    }
    if (d.reserved2.present) {
      context.handle(_reserved2Meta,
          reserved2.isAcceptableValue(d.reserved2.value, _reserved2Meta));
    }
    if (d.reserved3.present) {
      context.handle(_reserved3Meta,
          reserved3.isAcceptableValue(d.reserved3.value, _reserved3Meta));
    }
    if (d.reserved4.present) {
      context.handle(_reserved4Meta,
          reserved4.isAcceptableValue(d.reserved4.value, _reserved4Meta));
    }
    if (d.reserved5.present) {
      context.handle(_reserved5Meta,
          reserved5.isAcceptableValue(d.reserved5.value, _reserved5Meta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.defaultImageName.present) {
      context.handle(
          _defaultImageNameMeta,
          defaultImageName.isAcceptableValue(
              d.defaultImageName.value, _defaultImageNameMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoItemID};

  @override
  Item map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Item.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ItemsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoItemID.present) {
      map['auto_item_i_d'] = Variable<int, IntType>(d.autoItemID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.rfidTag.present) {
      map['rfid_tag'] = Variable<String, StringType>(d.rfidTag.value);
    }
    if (d.itemERPKey.present) {
      map['item_e_r_p_key'] = Variable<String, StringType>(d.itemERPKey.value);
    }
    if (d.skuNumber.present) {
      map['sku_number'] = Variable<String, StringType>(d.skuNumber.value);
    }
    if (d.designNumber.present) {
      map['design_number'] = Variable<String, StringType>(d.designNumber.value);
    }
    if (d.imageName.present) {
      map['image_name'] = Variable<String, StringType>(d.imageName.value);
    }
    if (d.itemStatus.present) {
      map['item_status'] = Variable<String, StringType>(d.itemStatus.value);
    }
    if (d.itemDescription.present) {
      map['item_description'] =
          Variable<String, StringType>(d.itemDescription.value);
    }
    if (d.itemType.present) {
      map['item_type'] = Variable<String, StringType>(d.itemType.value);
    }
    if (d.itemCategory.present) {
      map['item_category'] = Variable<String, StringType>(d.itemCategory.value);
    }
    if (d.size.present) {
      map['size'] = Variable<String, StringType>(d.size.value);
    }
    if (d.otherWeight.present) {
      map['other_weight'] = Variable<String, StringType>(d.otherWeight.value);
    }
    if (d.netWeight.present) {
      map['net_weight'] = Variable<double, RealType>(d.netWeight.value);
    }
    if (d.company.present) {
      map['company'] = Variable<String, StringType>(d.company.value);
    }
    if (d.locationID.present) {
      map['location_i_d'] = Variable<String, StringType>(d.locationID.value);
    }
    if (d.uom.present) {
      map['uom'] = Variable<String, StringType>(d.uom.value);
    }
    if (d.uomRef.present) {
      map['uom_ref'] = Variable<String, StringType>(d.uomRef.value);
    }
    if (d.quantity.present) {
      map['quantity'] = Variable<int, IntType>(d.quantity.value);
    }
    if (d.costPrice.present) {
      map['cost_price'] = Variable<int, IntType>(d.costPrice.value);
    }
    if (d.listPrice.present) {
      map['list_price'] = Variable<int, IntType>(d.listPrice.value);
    }
    if (d.markUp.present) {
      map['mark_up'] = Variable<String, StringType>(d.markUp.value);
    }
    if (d.reserved1.present) {
      map['reserved1'] = Variable<String, StringType>(d.reserved1.value);
    }
    if (d.reserved2.present) {
      map['reserved2'] = Variable<String, StringType>(d.reserved2.value);
    }
    if (d.reserved3.present) {
      map['reserved3'] = Variable<String, StringType>(d.reserved3.value);
    }
    if (d.reserved4.present) {
      map['reserved4'] = Variable<String, StringType>(d.reserved4.value);
    }
    if (d.reserved5.present) {
      map['reserved5'] = Variable<String, StringType>(d.reserved5.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.defaultImageName.present) {
      map['default_image_name'] =
          Variable<String, StringType>(d.defaultImageName.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $ItemsTable createAlias(String alias) {
    return $ItemsTable(_db, alias);
  }
}

class Stone extends DataClass implements Insertable<Stone> {
  final int autoStoneID;
  final String stoneID;
  final String stoneERPKey;
  final String stoneType;
  final String stoneCode;
  final bool isDiamond;
  final String stoneDescription;
  final String uom;
  final String uomRef;
  final String stoneCarats;
  final String caratsOnHand;
  final String caratsOnApproval;
  final String stoneCaratRange;
  final String rangeCostPrice;
  final String rangeListPrice;
  final String stoneClarity;
  final String stoneSize;
  final String stoneColor;
  final String stoneCut;
  final String stoneShape;
  final String lab;
  final String certificateNumber;
  final String certificateDate;
  final String certificateImage;
  final String lotNumber;
  final String stoneQuantity;
  final String status;
  final String stockAccountCode;
  final String length;
  final String width;
  final String depth;
  final String depthPercentage;
  final String tabPercentage;
  final String girdCond;
  final String girdMin;
  final String girdMax;
  final String polish;
  final String symm;
  final String fluo;
  final String crownAngle;
  final String crownHeight;
  final String pavilionAngle;
  final String pavilionDepth;
  final String culet;
  final String costPrice;
  final String listPrice;
  final String owner1;
  final String owner2;
  final String location;
  final String boxNumber;
  final String remarks;
  final String reserved1;
  final String reserved2;
  final String reserved3;
  final String reserved4;
  final String reserved5;
  final String lastUpdated;
  final String row;

  Stone(
      {@required this.autoStoneID,
      this.stoneID,
      this.stoneERPKey,
      this.stoneType,
      this.stoneCode,
      this.isDiamond,
      this.stoneDescription,
      this.uom,
      this.uomRef,
      this.stoneCarats,
      this.caratsOnHand,
      this.caratsOnApproval,
      this.stoneCaratRange,
      this.rangeCostPrice,
      this.rangeListPrice,
      this.stoneClarity,
      this.stoneSize,
      this.stoneColor,
      this.stoneCut,
      this.stoneShape,
      this.lab,
      this.certificateNumber,
      this.certificateDate,
      this.certificateImage,
      this.lotNumber,
      this.stoneQuantity,
      this.status,
      this.stockAccountCode,
      this.length,
      this.width,
      this.depth,
      this.depthPercentage,
      this.tabPercentage,
      this.girdCond,
      this.girdMin,
      this.girdMax,
      this.polish,
      this.symm,
      this.fluo,
      this.crownAngle,
      this.crownHeight,
      this.pavilionAngle,
      this.pavilionDepth,
      this.culet,
      this.costPrice,
      this.listPrice,
      this.owner1,
      this.owner2,
      this.location,
      this.boxNumber,
      this.remarks,
      this.reserved1,
      this.reserved2,
      this.reserved3,
      this.reserved4,
      this.reserved5,
      this.lastUpdated,
      this.row});

  factory Stone.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Stone(
      autoStoneID: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}auto_stone_i_d']),
      stoneID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_i_d']),
      stoneERPKey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_e_r_p_key']),
      stoneType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_type']),
      stoneCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_code']),
      isDiamond: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_diamond']),
      stoneDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_description']),
      uom: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom']),
      uomRef:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom_ref']),
      stoneCarats: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_carats']),
      caratsOnHand: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}carats_on_hand']),
      caratsOnApproval: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}carats_on_approval']),
      stoneCaratRange: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_carat_range']),
      rangeCostPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}range_cost_price']),
      rangeListPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}range_list_price']),
      stoneClarity: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_clarity']),
      stoneSize: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_size']),
      stoneColor: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_color']),
      stoneCut: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_cut']),
      stoneShape: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_shape']),
      lab: stringType.mapFromDatabaseResponse(data['${effectivePrefix}lab']),
      certificateNumber: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}certificate_number']),
      certificateDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}certificate_date']),
      certificateImage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}certificate_image']),
      lotNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}lot_number']),
      stoneQuantity: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_quantity']),
      status:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}status']),
      stockAccountCode: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}stock_account_code']),
      length:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}length']),
      width:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}width']),
      depth:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}depth']),
      depthPercentage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}depth_percentage']),
      tabPercentage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tab_percentage']),
      girdCond: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}gird_cond']),
      girdMin: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}gird_min']),
      girdMax: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}gird_max']),
      polish:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}polish']),
      symm: stringType.mapFromDatabaseResponse(data['${effectivePrefix}symm']),
      fluo: stringType.mapFromDatabaseResponse(data['${effectivePrefix}fluo']),
      crownAngle: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}crown_angle']),
      crownHeight: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}crown_height']),
      pavilionAngle: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}pavilion_angle']),
      pavilionDepth: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}pavilion_depth']),
      culet:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}culet']),
      costPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cost_price']),
      listPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}list_price']),
      owner1:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}owner1']),
      owner2:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}owner2']),
      location: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}location']),
      boxNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}box_number']),
      remarks:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}remarks']),
      reserved1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved1']),
      reserved2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved2']),
      reserved3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved3']),
      reserved4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved4']),
      reserved5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved5']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory Stone.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Stone(
      autoStoneID: serializer.fromJson<int>(json['autoStoneID']),
      stoneID: serializer.fromJson<String>(json['stoneID']),
      stoneERPKey: serializer.fromJson<String>(json['stoneERPKey']),
      stoneType: serializer.fromJson<String>(json['stoneType']),
      stoneCode: serializer.fromJson<String>(json['stoneCode']),
      isDiamond: serializer.fromJson<bool>(json['isDiamond']),
      stoneDescription: serializer.fromJson<String>(json['stoneDescription']),
      uom: serializer.fromJson<String>(json['uom']),
      uomRef: serializer.fromJson<String>(json['uomRef']),
      stoneCarats: serializer.fromJson<String>(json['stoneCarats']),
      caratsOnHand: serializer.fromJson<String>(json['caratsOnHand']),
      caratsOnApproval: serializer.fromJson<String>(json['caratsOnApproval']),
      stoneCaratRange: serializer.fromJson<String>(json['stoneCaratRange']),
      rangeCostPrice: serializer.fromJson<String>(json['rangeCostPrice']),
      rangeListPrice: serializer.fromJson<String>(json['rangeListPrice']),
      stoneClarity: serializer.fromJson<String>(json['stoneClarity']),
      stoneSize: serializer.fromJson<String>(json['stoneSize']),
      stoneColor: serializer.fromJson<String>(json['stoneColor']),
      stoneCut: serializer.fromJson<String>(json['stoneCut']),
      stoneShape: serializer.fromJson<String>(json['stoneShape']),
      lab: serializer.fromJson<String>(json['lab']),
      certificateNumber: serializer.fromJson<String>(json['certificateNumber']),
      certificateDate: serializer.fromJson<String>(json['certificateDate']),
      certificateImage: serializer.fromJson<String>(json['certificateImage']),
      lotNumber: serializer.fromJson<String>(json['lotNumber']),
      stoneQuantity: serializer.fromJson<String>(json['stoneQuantity']),
      status: serializer.fromJson<String>(json['status']),
      stockAccountCode: serializer.fromJson<String>(json['stockAccountCode']),
      length: serializer.fromJson<String>(json['length']),
      width: serializer.fromJson<String>(json['width']),
      depth: serializer.fromJson<String>(json['depth']),
      depthPercentage: serializer.fromJson<String>(json['depthPercentage']),
      tabPercentage: serializer.fromJson<String>(json['tabPercentage']),
      girdCond: serializer.fromJson<String>(json['girdCond']),
      girdMin: serializer.fromJson<String>(json['girdMin']),
      girdMax: serializer.fromJson<String>(json['girdMax']),
      polish: serializer.fromJson<String>(json['polish']),
      symm: serializer.fromJson<String>(json['symm']),
      fluo: serializer.fromJson<String>(json['fluo']),
      crownAngle: serializer.fromJson<String>(json['crownAngle']),
      crownHeight: serializer.fromJson<String>(json['crownHeight']),
      pavilionAngle: serializer.fromJson<String>(json['pavilionAngle']),
      pavilionDepth: serializer.fromJson<String>(json['pavilionDepth']),
      culet: serializer.fromJson<String>(json['culet']),
      costPrice: serializer.fromJson<String>(json['costPrice']),
      listPrice: serializer.fromJson<String>(json['listPrice']),
      owner1: serializer.fromJson<String>(json['owner1']),
      owner2: serializer.fromJson<String>(json['owner2']),
      location: serializer.fromJson<String>(json['location']),
      boxNumber: serializer.fromJson<String>(json['boxNumber']),
      remarks: serializer.fromJson<String>(json['remarks']),
      reserved1: serializer.fromJson<String>(json['reserved1']),
      reserved2: serializer.fromJson<String>(json['reserved2']),
      reserved3: serializer.fromJson<String>(json['reserved3']),
      reserved4: serializer.fromJson<String>(json['reserved4']),
      reserved5: serializer.fromJson<String>(json['reserved5']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoStoneID': serializer.toJson<int>(autoStoneID),
      'stoneID': serializer.toJson<String>(stoneID),
      'stoneERPKey': serializer.toJson<String>(stoneERPKey),
      'stoneType': serializer.toJson<String>(stoneType),
      'stoneCode': serializer.toJson<String>(stoneCode),
      'isDiamond': serializer.toJson<bool>(isDiamond),
      'stoneDescription': serializer.toJson<String>(stoneDescription),
      'uom': serializer.toJson<String>(uom),
      'uomRef': serializer.toJson<String>(uomRef),
      'stoneCarats': serializer.toJson<String>(stoneCarats),
      'caratsOnHand': serializer.toJson<String>(caratsOnHand),
      'caratsOnApproval': serializer.toJson<String>(caratsOnApproval),
      'stoneCaratRange': serializer.toJson<String>(stoneCaratRange),
      'rangeCostPrice': serializer.toJson<String>(rangeCostPrice),
      'rangeListPrice': serializer.toJson<String>(rangeListPrice),
      'stoneClarity': serializer.toJson<String>(stoneClarity),
      'stoneSize': serializer.toJson<String>(stoneSize),
      'stoneColor': serializer.toJson<String>(stoneColor),
      'stoneCut': serializer.toJson<String>(stoneCut),
      'stoneShape': serializer.toJson<String>(stoneShape),
      'lab': serializer.toJson<String>(lab),
      'certificateNumber': serializer.toJson<String>(certificateNumber),
      'certificateDate': serializer.toJson<String>(certificateDate),
      'certificateImage': serializer.toJson<String>(certificateImage),
      'lotNumber': serializer.toJson<String>(lotNumber),
      'stoneQuantity': serializer.toJson<String>(stoneQuantity),
      'status': serializer.toJson<String>(status),
      'stockAccountCode': serializer.toJson<String>(stockAccountCode),
      'length': serializer.toJson<String>(length),
      'width': serializer.toJson<String>(width),
      'depth': serializer.toJson<String>(depth),
      'depthPercentage': serializer.toJson<String>(depthPercentage),
      'tabPercentage': serializer.toJson<String>(tabPercentage),
      'girdCond': serializer.toJson<String>(girdCond),
      'girdMin': serializer.toJson<String>(girdMin),
      'girdMax': serializer.toJson<String>(girdMax),
      'polish': serializer.toJson<String>(polish),
      'symm': serializer.toJson<String>(symm),
      'fluo': serializer.toJson<String>(fluo),
      'crownAngle': serializer.toJson<String>(crownAngle),
      'crownHeight': serializer.toJson<String>(crownHeight),
      'pavilionAngle': serializer.toJson<String>(pavilionAngle),
      'pavilionDepth': serializer.toJson<String>(pavilionDepth),
      'culet': serializer.toJson<String>(culet),
      'costPrice': serializer.toJson<String>(costPrice),
      'listPrice': serializer.toJson<String>(listPrice),
      'owner1': serializer.toJson<String>(owner1),
      'owner2': serializer.toJson<String>(owner2),
      'location': serializer.toJson<String>(location),
      'boxNumber': serializer.toJson<String>(boxNumber),
      'remarks': serializer.toJson<String>(remarks),
      'reserved1': serializer.toJson<String>(reserved1),
      'reserved2': serializer.toJson<String>(reserved2),
      'reserved3': serializer.toJson<String>(reserved3),
      'reserved4': serializer.toJson<String>(reserved4),
      'reserved5': serializer.toJson<String>(reserved5),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  StonesCompanion createCompanion(bool nullToAbsent) {
    return StonesCompanion(
      autoStoneID: autoStoneID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoStoneID),
      stoneID: stoneID == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneID),
      stoneERPKey: stoneERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneERPKey),
      stoneType: stoneType == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneType),
      stoneCode: stoneCode == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneCode),
      isDiamond: isDiamond == null && nullToAbsent
          ? const Value.absent()
          : Value(isDiamond),
      stoneDescription: stoneDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneDescription),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      uomRef:
          uomRef == null && nullToAbsent ? const Value.absent() : Value(uomRef),
      stoneCarats: stoneCarats == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneCarats),
      caratsOnHand: caratsOnHand == null && nullToAbsent
          ? const Value.absent()
          : Value(caratsOnHand),
      caratsOnApproval: caratsOnApproval == null && nullToAbsent
          ? const Value.absent()
          : Value(caratsOnApproval),
      stoneCaratRange: stoneCaratRange == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneCaratRange),
      rangeCostPrice: rangeCostPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(rangeCostPrice),
      rangeListPrice: rangeListPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(rangeListPrice),
      stoneClarity: stoneClarity == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneClarity),
      stoneSize: stoneSize == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneSize),
      stoneColor: stoneColor == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneColor),
      stoneCut: stoneCut == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneCut),
      stoneShape: stoneShape == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneShape),
      lab: lab == null && nullToAbsent ? const Value.absent() : Value(lab),
      certificateNumber: certificateNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(certificateNumber),
      certificateDate: certificateDate == null && nullToAbsent
          ? const Value.absent()
          : Value(certificateDate),
      certificateImage: certificateImage == null && nullToAbsent
          ? const Value.absent()
          : Value(certificateImage),
      lotNumber: lotNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(lotNumber),
      stoneQuantity: stoneQuantity == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneQuantity),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      stockAccountCode: stockAccountCode == null && nullToAbsent
          ? const Value.absent()
          : Value(stockAccountCode),
      length:
          length == null && nullToAbsent ? const Value.absent() : Value(length),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      depth:
          depth == null && nullToAbsent ? const Value.absent() : Value(depth),
      depthPercentage: depthPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(depthPercentage),
      tabPercentage: tabPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(tabPercentage),
      girdCond: girdCond == null && nullToAbsent
          ? const Value.absent()
          : Value(girdCond),
      girdMin: girdMin == null && nullToAbsent
          ? const Value.absent()
          : Value(girdMin),
      girdMax: girdMax == null && nullToAbsent
          ? const Value.absent()
          : Value(girdMax),
      polish:
          polish == null && nullToAbsent ? const Value.absent() : Value(polish),
      symm: symm == null && nullToAbsent ? const Value.absent() : Value(symm),
      fluo: fluo == null && nullToAbsent ? const Value.absent() : Value(fluo),
      crownAngle: crownAngle == null && nullToAbsent
          ? const Value.absent()
          : Value(crownAngle),
      crownHeight: crownHeight == null && nullToAbsent
          ? const Value.absent()
          : Value(crownHeight),
      pavilionAngle: pavilionAngle == null && nullToAbsent
          ? const Value.absent()
          : Value(pavilionAngle),
      pavilionDepth: pavilionDepth == null && nullToAbsent
          ? const Value.absent()
          : Value(pavilionDepth),
      culet:
          culet == null && nullToAbsent ? const Value.absent() : Value(culet),
      costPrice: costPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(costPrice),
      listPrice: listPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(listPrice),
      owner1:
          owner1 == null && nullToAbsent ? const Value.absent() : Value(owner1),
      owner2:
          owner2 == null && nullToAbsent ? const Value.absent() : Value(owner2),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      boxNumber: boxNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(boxNumber),
      remarks: remarks == null && nullToAbsent
          ? const Value.absent()
          : Value(remarks),
      reserved1: reserved1 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved1),
      reserved2: reserved2 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved2),
      reserved3: reserved3 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved3),
      reserved4: reserved4 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved4),
      reserved5: reserved5 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved5),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  Stone copyWith(
          {int autoStoneID,
          String stoneID,
          String stoneERPKey,
          String stoneType,
          String stoneCode,
          bool isDiamond,
          String stoneDescription,
          String uom,
          String uomRef,
          String stoneCarats,
          String caratsOnHand,
          String caratsOnApproval,
          String stoneCaratRange,
          String rangeCostPrice,
          String rangeListPrice,
          String stoneClarity,
          String stoneSize,
          String stoneColor,
          String stoneCut,
          String stoneShape,
          String lab,
          String certificateNumber,
          String certificateDate,
          String certificateImage,
          String lotNumber,
          String stoneQuantity,
          String status,
          String stockAccountCode,
          String length,
          String width,
          String depth,
          String depthPercentage,
          String tabPercentage,
          String girdCond,
          String girdMin,
          String girdMax,
          String polish,
          String symm,
          String fluo,
          String crownAngle,
          String crownHeight,
          String pavilionAngle,
          String pavilionDepth,
          String culet,
          String costPrice,
          String listPrice,
          String owner1,
          String owner2,
          String location,
          String boxNumber,
          String remarks,
          String reserved1,
          String reserved2,
          String reserved3,
          String reserved4,
          String reserved5,
          String lastUpdated,
          String row}) =>
      Stone(
        autoStoneID: autoStoneID ?? this.autoStoneID,
        stoneID: stoneID ?? this.stoneID,
        stoneERPKey: stoneERPKey ?? this.stoneERPKey,
        stoneType: stoneType ?? this.stoneType,
        stoneCode: stoneCode ?? this.stoneCode,
        isDiamond: isDiamond ?? this.isDiamond,
        stoneDescription: stoneDescription ?? this.stoneDescription,
        uom: uom ?? this.uom,
        uomRef: uomRef ?? this.uomRef,
        stoneCarats: stoneCarats ?? this.stoneCarats,
        caratsOnHand: caratsOnHand ?? this.caratsOnHand,
        caratsOnApproval: caratsOnApproval ?? this.caratsOnApproval,
        stoneCaratRange: stoneCaratRange ?? this.stoneCaratRange,
        rangeCostPrice: rangeCostPrice ?? this.rangeCostPrice,
        rangeListPrice: rangeListPrice ?? this.rangeListPrice,
        stoneClarity: stoneClarity ?? this.stoneClarity,
        stoneSize: stoneSize ?? this.stoneSize,
        stoneColor: stoneColor ?? this.stoneColor,
        stoneCut: stoneCut ?? this.stoneCut,
        stoneShape: stoneShape ?? this.stoneShape,
        lab: lab ?? this.lab,
        certificateNumber: certificateNumber ?? this.certificateNumber,
        certificateDate: certificateDate ?? this.certificateDate,
        certificateImage: certificateImage ?? this.certificateImage,
        lotNumber: lotNumber ?? this.lotNumber,
        stoneQuantity: stoneQuantity ?? this.stoneQuantity,
        status: status ?? this.status,
        stockAccountCode: stockAccountCode ?? this.stockAccountCode,
        length: length ?? this.length,
        width: width ?? this.width,
        depth: depth ?? this.depth,
        depthPercentage: depthPercentage ?? this.depthPercentage,
        tabPercentage: tabPercentage ?? this.tabPercentage,
        girdCond: girdCond ?? this.girdCond,
        girdMin: girdMin ?? this.girdMin,
        girdMax: girdMax ?? this.girdMax,
        polish: polish ?? this.polish,
        symm: symm ?? this.symm,
        fluo: fluo ?? this.fluo,
        crownAngle: crownAngle ?? this.crownAngle,
        crownHeight: crownHeight ?? this.crownHeight,
        pavilionAngle: pavilionAngle ?? this.pavilionAngle,
        pavilionDepth: pavilionDepth ?? this.pavilionDepth,
        culet: culet ?? this.culet,
        costPrice: costPrice ?? this.costPrice,
        listPrice: listPrice ?? this.listPrice,
        owner1: owner1 ?? this.owner1,
        owner2: owner2 ?? this.owner2,
        location: location ?? this.location,
        boxNumber: boxNumber ?? this.boxNumber,
        remarks: remarks ?? this.remarks,
        reserved1: reserved1 ?? this.reserved1,
        reserved2: reserved2 ?? this.reserved2,
        reserved3: reserved3 ?? this.reserved3,
        reserved4: reserved4 ?? this.reserved4,
        reserved5: reserved5 ?? this.reserved5,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('Stone(')
          ..write('autoStoneID: $autoStoneID, ')
          ..write('stoneID: $stoneID, ')
          ..write('stoneERPKey: $stoneERPKey, ')
          ..write('stoneType: $stoneType, ')
          ..write('stoneCode: $stoneCode, ')
          ..write('isDiamond: $isDiamond, ')
          ..write('stoneDescription: $stoneDescription, ')
          ..write('uom: $uom, ')
          ..write('uomRef: $uomRef, ')
          ..write('stoneCarats: $stoneCarats, ')
          ..write('caratsOnHand: $caratsOnHand, ')
          ..write('caratsOnApproval: $caratsOnApproval, ')
          ..write('stoneCaratRange: $stoneCaratRange, ')
          ..write('rangeCostPrice: $rangeCostPrice, ')
          ..write('rangeListPrice: $rangeListPrice, ')
          ..write('stoneClarity: $stoneClarity, ')
          ..write('stoneSize: $stoneSize, ')
          ..write('stoneColor: $stoneColor, ')
          ..write('stoneCut: $stoneCut, ')
          ..write('stoneShape: $stoneShape, ')
          ..write('lab: $lab, ')
          ..write('certificateNumber: $certificateNumber, ')
          ..write('certificateDate: $certificateDate, ')
          ..write('certificateImage: $certificateImage, ')
          ..write('lotNumber: $lotNumber, ')
          ..write('stoneQuantity: $stoneQuantity, ')
          ..write('status: $status, ')
          ..write('stockAccountCode: $stockAccountCode, ')
          ..write('length: $length, ')
          ..write('width: $width, ')
          ..write('depth: $depth, ')
          ..write('depthPercentage: $depthPercentage, ')
          ..write('tabPercentage: $tabPercentage, ')
          ..write('girdCond: $girdCond, ')
          ..write('girdMin: $girdMin, ')
          ..write('girdMax: $girdMax, ')
          ..write('polish: $polish, ')
          ..write('symm: $symm, ')
          ..write('fluo: $fluo, ')
          ..write('crownAngle: $crownAngle, ')
          ..write('crownHeight: $crownHeight, ')
          ..write('pavilionAngle: $pavilionAngle, ')
          ..write('pavilionDepth: $pavilionDepth, ')
          ..write('culet: $culet, ')
          ..write('costPrice: $costPrice, ')
          ..write('listPrice: $listPrice, ')
          ..write('owner1: $owner1, ')
          ..write('owner2: $owner2, ')
          ..write('location: $location, ')
          ..write('boxNumber: $boxNumber, ')
          ..write('remarks: $remarks, ')
          ..write('reserved1: $reserved1, ')
          ..write('reserved2: $reserved2, ')
          ..write('reserved3: $reserved3, ')
          ..write('reserved4: $reserved4, ')
          ..write('reserved5: $reserved5, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoStoneID.hashCode,
      $mrjc(
          stoneID.hashCode,
          $mrjc(
              stoneERPKey.hashCode,
              $mrjc(
                  stoneType.hashCode,
                  $mrjc(
                      stoneCode.hashCode,
                      $mrjc(
                          isDiamond.hashCode,
                          $mrjc(
                              stoneDescription.hashCode,
                              $mrjc(
                                  uom.hashCode,
                                  $mrjc(
                                      uomRef.hashCode,
                                      $mrjc(
                                          stoneCarats.hashCode,
                                          $mrjc(
                                              caratsOnHand.hashCode,
                                              $mrjc(
                                                  caratsOnApproval.hashCode,
                                                  $mrjc(
                                                      stoneCaratRange.hashCode,
                                                      $mrjc(
                                                          rangeCostPrice
                                                              .hashCode,
                                                          $mrjc(
                                                              rangeListPrice
                                                                  .hashCode,
                                                              $mrjc(
                                                                  stoneClarity
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      stoneSize
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          stoneColor
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              stoneCut.hashCode,
                                                                              $mrjc(stoneShape.hashCode, $mrjc(lab.hashCode, $mrjc(certificateNumber.hashCode, $mrjc(certificateDate.hashCode, $mrjc(certificateImage.hashCode, $mrjc(lotNumber.hashCode, $mrjc(stoneQuantity.hashCode, $mrjc(status.hashCode, $mrjc(stockAccountCode.hashCode, $mrjc(length.hashCode, $mrjc(width.hashCode, $mrjc(depth.hashCode, $mrjc(depthPercentage.hashCode, $mrjc(tabPercentage.hashCode, $mrjc(girdCond.hashCode, $mrjc(girdMin.hashCode, $mrjc(girdMax.hashCode, $mrjc(polish.hashCode, $mrjc(symm.hashCode, $mrjc(fluo.hashCode, $mrjc(crownAngle.hashCode, $mrjc(crownHeight.hashCode, $mrjc(pavilionAngle.hashCode, $mrjc(pavilionDepth.hashCode, $mrjc(culet.hashCode, $mrjc(costPrice.hashCode, $mrjc(listPrice.hashCode, $mrjc(owner1.hashCode, $mrjc(owner2.hashCode, $mrjc(location.hashCode, $mrjc(boxNumber.hashCode, $mrjc(remarks.hashCode, $mrjc(reserved1.hashCode, $mrjc(reserved2.hashCode, $mrjc(reserved3.hashCode, $mrjc(reserved4.hashCode, $mrjc(reserved5.hashCode, $mrjc(lastUpdated.hashCode, row.hashCode))))))))))))))))))))))))))))))))))))))))))))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Stone &&
          other.autoStoneID == this.autoStoneID &&
          other.stoneID == this.stoneID &&
          other.stoneERPKey == this.stoneERPKey &&
          other.stoneType == this.stoneType &&
          other.stoneCode == this.stoneCode &&
          other.isDiamond == this.isDiamond &&
          other.stoneDescription == this.stoneDescription &&
          other.uom == this.uom &&
          other.uomRef == this.uomRef &&
          other.stoneCarats == this.stoneCarats &&
          other.caratsOnHand == this.caratsOnHand &&
          other.caratsOnApproval == this.caratsOnApproval &&
          other.stoneCaratRange == this.stoneCaratRange &&
          other.rangeCostPrice == this.rangeCostPrice &&
          other.rangeListPrice == this.rangeListPrice &&
          other.stoneClarity == this.stoneClarity &&
          other.stoneSize == this.stoneSize &&
          other.stoneColor == this.stoneColor &&
          other.stoneCut == this.stoneCut &&
          other.stoneShape == this.stoneShape &&
          other.lab == this.lab &&
          other.certificateNumber == this.certificateNumber &&
          other.certificateDate == this.certificateDate &&
          other.certificateImage == this.certificateImage &&
          other.lotNumber == this.lotNumber &&
          other.stoneQuantity == this.stoneQuantity &&
          other.status == this.status &&
          other.stockAccountCode == this.stockAccountCode &&
          other.length == this.length &&
          other.width == this.width &&
          other.depth == this.depth &&
          other.depthPercentage == this.depthPercentage &&
          other.tabPercentage == this.tabPercentage &&
          other.girdCond == this.girdCond &&
          other.girdMin == this.girdMin &&
          other.girdMax == this.girdMax &&
          other.polish == this.polish &&
          other.symm == this.symm &&
          other.fluo == this.fluo &&
          other.crownAngle == this.crownAngle &&
          other.crownHeight == this.crownHeight &&
          other.pavilionAngle == this.pavilionAngle &&
          other.pavilionDepth == this.pavilionDepth &&
          other.culet == this.culet &&
          other.costPrice == this.costPrice &&
          other.listPrice == this.listPrice &&
          other.owner1 == this.owner1 &&
          other.owner2 == this.owner2 &&
          other.location == this.location &&
          other.boxNumber == this.boxNumber &&
          other.remarks == this.remarks &&
          other.reserved1 == this.reserved1 &&
          other.reserved2 == this.reserved2 &&
          other.reserved3 == this.reserved3 &&
          other.reserved4 == this.reserved4 &&
          other.reserved5 == this.reserved5 &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class StonesCompanion extends UpdateCompanion<Stone> {
  final Value<int> autoStoneID;
  final Value<String> stoneID;
  final Value<String> stoneERPKey;
  final Value<String> stoneType;
  final Value<String> stoneCode;
  final Value<bool> isDiamond;
  final Value<String> stoneDescription;
  final Value<String> uom;
  final Value<String> uomRef;
  final Value<String> stoneCarats;
  final Value<String> caratsOnHand;
  final Value<String> caratsOnApproval;
  final Value<String> stoneCaratRange;
  final Value<String> rangeCostPrice;
  final Value<String> rangeListPrice;
  final Value<String> stoneClarity;
  final Value<String> stoneSize;
  final Value<String> stoneColor;
  final Value<String> stoneCut;
  final Value<String> stoneShape;
  final Value<String> lab;
  final Value<String> certificateNumber;
  final Value<String> certificateDate;
  final Value<String> certificateImage;
  final Value<String> lotNumber;
  final Value<String> stoneQuantity;
  final Value<String> status;
  final Value<String> stockAccountCode;
  final Value<String> length;
  final Value<String> width;
  final Value<String> depth;
  final Value<String> depthPercentage;
  final Value<String> tabPercentage;
  final Value<String> girdCond;
  final Value<String> girdMin;
  final Value<String> girdMax;
  final Value<String> polish;
  final Value<String> symm;
  final Value<String> fluo;
  final Value<String> crownAngle;
  final Value<String> crownHeight;
  final Value<String> pavilionAngle;
  final Value<String> pavilionDepth;
  final Value<String> culet;
  final Value<String> costPrice;
  final Value<String> listPrice;
  final Value<String> owner1;
  final Value<String> owner2;
  final Value<String> location;
  final Value<String> boxNumber;
  final Value<String> remarks;
  final Value<String> reserved1;
  final Value<String> reserved2;
  final Value<String> reserved3;
  final Value<String> reserved4;
  final Value<String> reserved5;
  final Value<String> lastUpdated;
  final Value<String> row;

  const StonesCompanion({
    this.autoStoneID = const Value.absent(),
    this.stoneID = const Value.absent(),
    this.stoneERPKey = const Value.absent(),
    this.stoneType = const Value.absent(),
    this.stoneCode = const Value.absent(),
    this.isDiamond = const Value.absent(),
    this.stoneDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.stoneCarats = const Value.absent(),
    this.caratsOnHand = const Value.absent(),
    this.caratsOnApproval = const Value.absent(),
    this.stoneCaratRange = const Value.absent(),
    this.rangeCostPrice = const Value.absent(),
    this.rangeListPrice = const Value.absent(),
    this.stoneClarity = const Value.absent(),
    this.stoneSize = const Value.absent(),
    this.stoneColor = const Value.absent(),
    this.stoneCut = const Value.absent(),
    this.stoneShape = const Value.absent(),
    this.lab = const Value.absent(),
    this.certificateNumber = const Value.absent(),
    this.certificateDate = const Value.absent(),
    this.certificateImage = const Value.absent(),
    this.lotNumber = const Value.absent(),
    this.stoneQuantity = const Value.absent(),
    this.status = const Value.absent(),
    this.stockAccountCode = const Value.absent(),
    this.length = const Value.absent(),
    this.width = const Value.absent(),
    this.depth = const Value.absent(),
    this.depthPercentage = const Value.absent(),
    this.tabPercentage = const Value.absent(),
    this.girdCond = const Value.absent(),
    this.girdMin = const Value.absent(),
    this.girdMax = const Value.absent(),
    this.polish = const Value.absent(),
    this.symm = const Value.absent(),
    this.fluo = const Value.absent(),
    this.crownAngle = const Value.absent(),
    this.crownHeight = const Value.absent(),
    this.pavilionAngle = const Value.absent(),
    this.pavilionDepth = const Value.absent(),
    this.culet = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.owner1 = const Value.absent(),
    this.owner2 = const Value.absent(),
    this.location = const Value.absent(),
    this.boxNumber = const Value.absent(),
    this.remarks = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  StonesCompanion.insert({
    this.autoStoneID = const Value.absent(),
    this.stoneID = const Value.absent(),
    this.stoneERPKey = const Value.absent(),
    this.stoneType = const Value.absent(),
    this.stoneCode = const Value.absent(),
    this.isDiamond = const Value.absent(),
    this.stoneDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.stoneCarats = const Value.absent(),
    this.caratsOnHand = const Value.absent(),
    this.caratsOnApproval = const Value.absent(),
    this.stoneCaratRange = const Value.absent(),
    this.rangeCostPrice = const Value.absent(),
    this.rangeListPrice = const Value.absent(),
    this.stoneClarity = const Value.absent(),
    this.stoneSize = const Value.absent(),
    this.stoneColor = const Value.absent(),
    this.stoneCut = const Value.absent(),
    this.stoneShape = const Value.absent(),
    this.lab = const Value.absent(),
    this.certificateNumber = const Value.absent(),
    this.certificateDate = const Value.absent(),
    this.certificateImage = const Value.absent(),
    this.lotNumber = const Value.absent(),
    this.stoneQuantity = const Value.absent(),
    this.status = const Value.absent(),
    this.stockAccountCode = const Value.absent(),
    this.length = const Value.absent(),
    this.width = const Value.absent(),
    this.depth = const Value.absent(),
    this.depthPercentage = const Value.absent(),
    this.tabPercentage = const Value.absent(),
    this.girdCond = const Value.absent(),
    this.girdMin = const Value.absent(),
    this.girdMax = const Value.absent(),
    this.polish = const Value.absent(),
    this.symm = const Value.absent(),
    this.fluo = const Value.absent(),
    this.crownAngle = const Value.absent(),
    this.crownHeight = const Value.absent(),
    this.pavilionAngle = const Value.absent(),
    this.pavilionDepth = const Value.absent(),
    this.culet = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.owner1 = const Value.absent(),
    this.owner2 = const Value.absent(),
    this.location = const Value.absent(),
    this.boxNumber = const Value.absent(),
    this.remarks = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  StonesCompanion copyWith(
      {Value<int> autoStoneID,
      Value<String> stoneID,
      Value<String> stoneERPKey,
      Value<String> stoneType,
      Value<String> stoneCode,
      Value<bool> isDiamond,
      Value<String> stoneDescription,
      Value<String> uom,
      Value<String> uomRef,
      Value<String> stoneCarats,
      Value<String> caratsOnHand,
      Value<String> caratsOnApproval,
      Value<String> stoneCaratRange,
      Value<String> rangeCostPrice,
      Value<String> rangeListPrice,
      Value<String> stoneClarity,
      Value<String> stoneSize,
      Value<String> stoneColor,
      Value<String> stoneCut,
      Value<String> stoneShape,
      Value<String> lab,
      Value<String> certificateNumber,
      Value<String> certificateDate,
      Value<String> certificateImage,
      Value<String> lotNumber,
      Value<String> stoneQuantity,
      Value<String> status,
      Value<String> stockAccountCode,
      Value<String> length,
      Value<String> width,
      Value<String> depth,
      Value<String> depthPercentage,
      Value<String> tabPercentage,
      Value<String> girdCond,
      Value<String> girdMin,
      Value<String> girdMax,
      Value<String> polish,
      Value<String> symm,
      Value<String> fluo,
      Value<String> crownAngle,
      Value<String> crownHeight,
      Value<String> pavilionAngle,
      Value<String> pavilionDepth,
      Value<String> culet,
      Value<String> costPrice,
      Value<String> listPrice,
      Value<String> owner1,
      Value<String> owner2,
      Value<String> location,
      Value<String> boxNumber,
      Value<String> remarks,
      Value<String> reserved1,
      Value<String> reserved2,
      Value<String> reserved3,
      Value<String> reserved4,
      Value<String> reserved5,
      Value<String> lastUpdated,
      Value<String> row}) {
    return StonesCompanion(
      autoStoneID: autoStoneID ?? this.autoStoneID,
      stoneID: stoneID ?? this.stoneID,
      stoneERPKey: stoneERPKey ?? this.stoneERPKey,
      stoneType: stoneType ?? this.stoneType,
      stoneCode: stoneCode ?? this.stoneCode,
      isDiamond: isDiamond ?? this.isDiamond,
      stoneDescription: stoneDescription ?? this.stoneDescription,
      uom: uom ?? this.uom,
      uomRef: uomRef ?? this.uomRef,
      stoneCarats: stoneCarats ?? this.stoneCarats,
      caratsOnHand: caratsOnHand ?? this.caratsOnHand,
      caratsOnApproval: caratsOnApproval ?? this.caratsOnApproval,
      stoneCaratRange: stoneCaratRange ?? this.stoneCaratRange,
      rangeCostPrice: rangeCostPrice ?? this.rangeCostPrice,
      rangeListPrice: rangeListPrice ?? this.rangeListPrice,
      stoneClarity: stoneClarity ?? this.stoneClarity,
      stoneSize: stoneSize ?? this.stoneSize,
      stoneColor: stoneColor ?? this.stoneColor,
      stoneCut: stoneCut ?? this.stoneCut,
      stoneShape: stoneShape ?? this.stoneShape,
      lab: lab ?? this.lab,
      certificateNumber: certificateNumber ?? this.certificateNumber,
      certificateDate: certificateDate ?? this.certificateDate,
      certificateImage: certificateImage ?? this.certificateImage,
      lotNumber: lotNumber ?? this.lotNumber,
      stoneQuantity: stoneQuantity ?? this.stoneQuantity,
      status: status ?? this.status,
      stockAccountCode: stockAccountCode ?? this.stockAccountCode,
      length: length ?? this.length,
      width: width ?? this.width,
      depth: depth ?? this.depth,
      depthPercentage: depthPercentage ?? this.depthPercentage,
      tabPercentage: tabPercentage ?? this.tabPercentage,
      girdCond: girdCond ?? this.girdCond,
      girdMin: girdMin ?? this.girdMin,
      girdMax: girdMax ?? this.girdMax,
      polish: polish ?? this.polish,
      symm: symm ?? this.symm,
      fluo: fluo ?? this.fluo,
      crownAngle: crownAngle ?? this.crownAngle,
      crownHeight: crownHeight ?? this.crownHeight,
      pavilionAngle: pavilionAngle ?? this.pavilionAngle,
      pavilionDepth: pavilionDepth ?? this.pavilionDepth,
      culet: culet ?? this.culet,
      costPrice: costPrice ?? this.costPrice,
      listPrice: listPrice ?? this.listPrice,
      owner1: owner1 ?? this.owner1,
      owner2: owner2 ?? this.owner2,
      location: location ?? this.location,
      boxNumber: boxNumber ?? this.boxNumber,
      remarks: remarks ?? this.remarks,
      reserved1: reserved1 ?? this.reserved1,
      reserved2: reserved2 ?? this.reserved2,
      reserved3: reserved3 ?? this.reserved3,
      reserved4: reserved4 ?? this.reserved4,
      reserved5: reserved5 ?? this.reserved5,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $StonesTable extends Stones with TableInfo<$StonesTable, Stone> {
  final GeneratedDatabase _db;
  final String _alias;

  $StonesTable(this._db, [this._alias]);

  final VerificationMeta _autoStoneIDMeta =
      const VerificationMeta('autoStoneID');
  GeneratedIntColumn _autoStoneID;

  @override
  GeneratedIntColumn get autoStoneID =>
      _autoStoneID ??= _constructAutoStoneID();

  GeneratedIntColumn _constructAutoStoneID() {
    return GeneratedIntColumn('auto_stone_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _stoneIDMeta = const VerificationMeta('stoneID');
  GeneratedTextColumn _stoneID;

  @override
  GeneratedTextColumn get stoneID => _stoneID ??= _constructStoneID();

  GeneratedTextColumn _constructStoneID() {
    return GeneratedTextColumn(
      'stone_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneERPKeyMeta =
      const VerificationMeta('stoneERPKey');
  GeneratedTextColumn _stoneERPKey;

  @override
  GeneratedTextColumn get stoneERPKey =>
      _stoneERPKey ??= _constructStoneERPKey();

  GeneratedTextColumn _constructStoneERPKey() {
    return GeneratedTextColumn(
      'stone_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneTypeMeta = const VerificationMeta('stoneType');
  GeneratedTextColumn _stoneType;

  @override
  GeneratedTextColumn get stoneType => _stoneType ??= _constructStoneType();

  GeneratedTextColumn _constructStoneType() {
    return GeneratedTextColumn(
      'stone_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneCodeMeta = const VerificationMeta('stoneCode');
  GeneratedTextColumn _stoneCode;

  @override
  GeneratedTextColumn get stoneCode => _stoneCode ??= _constructStoneCode();

  GeneratedTextColumn _constructStoneCode() {
    return GeneratedTextColumn(
      'stone_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isDiamondMeta = const VerificationMeta('isDiamond');
  GeneratedBoolColumn _isDiamond;

  @override
  GeneratedBoolColumn get isDiamond => _isDiamond ??= _constructIsDiamond();

  GeneratedBoolColumn _constructIsDiamond() {
    return GeneratedBoolColumn(
      'is_diamond',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneDescriptionMeta =
      const VerificationMeta('stoneDescription');
  GeneratedTextColumn _stoneDescription;

  @override
  GeneratedTextColumn get stoneDescription =>
      _stoneDescription ??= _constructStoneDescription();

  GeneratedTextColumn _constructStoneDescription() {
    return GeneratedTextColumn(
      'stone_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomMeta = const VerificationMeta('uom');
  GeneratedTextColumn _uom;

  @override
  GeneratedTextColumn get uom => _uom ??= _constructUom();

  GeneratedTextColumn _constructUom() {
    return GeneratedTextColumn(
      'uom',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomRefMeta = const VerificationMeta('uomRef');
  GeneratedTextColumn _uomRef;

  @override
  GeneratedTextColumn get uomRef => _uomRef ??= _constructUomRef();

  GeneratedTextColumn _constructUomRef() {
    return GeneratedTextColumn(
      'uom_ref',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneCaratsMeta =
      const VerificationMeta('stoneCarats');
  GeneratedTextColumn _stoneCarats;

  @override
  GeneratedTextColumn get stoneCarats =>
      _stoneCarats ??= _constructStoneCarats();

  GeneratedTextColumn _constructStoneCarats() {
    return GeneratedTextColumn(
      'stone_carats',
      $tableName,
      true,
    );
  }

  final VerificationMeta _caratsOnHandMeta =
      const VerificationMeta('caratsOnHand');
  GeneratedTextColumn _caratsOnHand;

  @override
  GeneratedTextColumn get caratsOnHand =>
      _caratsOnHand ??= _constructCaratsOnHand();

  GeneratedTextColumn _constructCaratsOnHand() {
    return GeneratedTextColumn(
      'carats_on_hand',
      $tableName,
      true,
    );
  }

  final VerificationMeta _caratsOnApprovalMeta =
      const VerificationMeta('caratsOnApproval');
  GeneratedTextColumn _caratsOnApproval;

  @override
  GeneratedTextColumn get caratsOnApproval =>
      _caratsOnApproval ??= _constructCaratsOnApproval();

  GeneratedTextColumn _constructCaratsOnApproval() {
    return GeneratedTextColumn(
      'carats_on_approval',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneCaratRangeMeta =
      const VerificationMeta('stoneCaratRange');
  GeneratedTextColumn _stoneCaratRange;

  @override
  GeneratedTextColumn get stoneCaratRange =>
      _stoneCaratRange ??= _constructStoneCaratRange();

  GeneratedTextColumn _constructStoneCaratRange() {
    return GeneratedTextColumn(
      'stone_carat_range',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rangeCostPriceMeta =
      const VerificationMeta('rangeCostPrice');
  GeneratedTextColumn _rangeCostPrice;

  @override
  GeneratedTextColumn get rangeCostPrice =>
      _rangeCostPrice ??= _constructRangeCostPrice();

  GeneratedTextColumn _constructRangeCostPrice() {
    return GeneratedTextColumn(
      'range_cost_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rangeListPriceMeta =
      const VerificationMeta('rangeListPrice');
  GeneratedTextColumn _rangeListPrice;

  @override
  GeneratedTextColumn get rangeListPrice =>
      _rangeListPrice ??= _constructRangeListPrice();

  GeneratedTextColumn _constructRangeListPrice() {
    return GeneratedTextColumn(
      'range_list_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneClarityMeta =
      const VerificationMeta('stoneClarity');
  GeneratedTextColumn _stoneClarity;

  @override
  GeneratedTextColumn get stoneClarity =>
      _stoneClarity ??= _constructStoneClarity();

  GeneratedTextColumn _constructStoneClarity() {
    return GeneratedTextColumn(
      'stone_clarity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneSizeMeta = const VerificationMeta('stoneSize');
  GeneratedTextColumn _stoneSize;

  @override
  GeneratedTextColumn get stoneSize => _stoneSize ??= _constructStoneSize();

  GeneratedTextColumn _constructStoneSize() {
    return GeneratedTextColumn(
      'stone_size',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneColorMeta = const VerificationMeta('stoneColor');
  GeneratedTextColumn _stoneColor;

  @override
  GeneratedTextColumn get stoneColor => _stoneColor ??= _constructStoneColor();

  GeneratedTextColumn _constructStoneColor() {
    return GeneratedTextColumn(
      'stone_color',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneCutMeta = const VerificationMeta('stoneCut');
  GeneratedTextColumn _stoneCut;

  @override
  GeneratedTextColumn get stoneCut => _stoneCut ??= _constructStoneCut();

  GeneratedTextColumn _constructStoneCut() {
    return GeneratedTextColumn(
      'stone_cut',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneShapeMeta = const VerificationMeta('stoneShape');
  GeneratedTextColumn _stoneShape;

  @override
  GeneratedTextColumn get stoneShape => _stoneShape ??= _constructStoneShape();

  GeneratedTextColumn _constructStoneShape() {
    return GeneratedTextColumn(
      'stone_shape',
      $tableName,
      true,
    );
  }

  final VerificationMeta _labMeta = const VerificationMeta('lab');
  GeneratedTextColumn _lab;

  @override
  GeneratedTextColumn get lab => _lab ??= _constructLab();

  GeneratedTextColumn _constructLab() {
    return GeneratedTextColumn(
      'lab',
      $tableName,
      true,
    );
  }

  final VerificationMeta _certificateNumberMeta =
      const VerificationMeta('certificateNumber');
  GeneratedTextColumn _certificateNumber;

  @override
  GeneratedTextColumn get certificateNumber =>
      _certificateNumber ??= _constructCertificateNumber();

  GeneratedTextColumn _constructCertificateNumber() {
    return GeneratedTextColumn(
      'certificate_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _certificateDateMeta =
      const VerificationMeta('certificateDate');
  GeneratedTextColumn _certificateDate;

  @override
  GeneratedTextColumn get certificateDate =>
      _certificateDate ??= _constructCertificateDate();

  GeneratedTextColumn _constructCertificateDate() {
    return GeneratedTextColumn(
      'certificate_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _certificateImageMeta =
      const VerificationMeta('certificateImage');
  GeneratedTextColumn _certificateImage;

  @override
  GeneratedTextColumn get certificateImage =>
      _certificateImage ??= _constructCertificateImage();

  GeneratedTextColumn _constructCertificateImage() {
    return GeneratedTextColumn(
      'certificate_image',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lotNumberMeta = const VerificationMeta('lotNumber');
  GeneratedTextColumn _lotNumber;

  @override
  GeneratedTextColumn get lotNumber => _lotNumber ??= _constructLotNumber();

  GeneratedTextColumn _constructLotNumber() {
    return GeneratedTextColumn(
      'lot_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneQuantityMeta =
      const VerificationMeta('stoneQuantity');
  GeneratedTextColumn _stoneQuantity;

  @override
  GeneratedTextColumn get stoneQuantity =>
      _stoneQuantity ??= _constructStoneQuantity();

  GeneratedTextColumn _constructStoneQuantity() {
    return GeneratedTextColumn(
      'stone_quantity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _statusMeta = const VerificationMeta('status');
  GeneratedTextColumn _status;

  @override
  GeneratedTextColumn get status => _status ??= _constructStatus();

  GeneratedTextColumn _constructStatus() {
    return GeneratedTextColumn(
      'status',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stockAccountCodeMeta =
      const VerificationMeta('stockAccountCode');
  GeneratedTextColumn _stockAccountCode;

  @override
  GeneratedTextColumn get stockAccountCode =>
      _stockAccountCode ??= _constructStockAccountCode();

  GeneratedTextColumn _constructStockAccountCode() {
    return GeneratedTextColumn(
      'stock_account_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lengthMeta = const VerificationMeta('length');
  GeneratedTextColumn _length;

  @override
  GeneratedTextColumn get length => _length ??= _constructLength();

  GeneratedTextColumn _constructLength() {
    return GeneratedTextColumn(
      'length',
      $tableName,
      true,
    );
  }

  final VerificationMeta _widthMeta = const VerificationMeta('width');
  GeneratedTextColumn _width;

  @override
  GeneratedTextColumn get width => _width ??= _constructWidth();

  GeneratedTextColumn _constructWidth() {
    return GeneratedTextColumn(
      'width',
      $tableName,
      true,
    );
  }

  final VerificationMeta _depthMeta = const VerificationMeta('depth');
  GeneratedTextColumn _depth;

  @override
  GeneratedTextColumn get depth => _depth ??= _constructDepth();

  GeneratedTextColumn _constructDepth() {
    return GeneratedTextColumn(
      'depth',
      $tableName,
      true,
    );
  }

  final VerificationMeta _depthPercentageMeta =
      const VerificationMeta('depthPercentage');
  GeneratedTextColumn _depthPercentage;

  @override
  GeneratedTextColumn get depthPercentage =>
      _depthPercentage ??= _constructDepthPercentage();

  GeneratedTextColumn _constructDepthPercentage() {
    return GeneratedTextColumn(
      'depth_percentage',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tabPercentageMeta =
      const VerificationMeta('tabPercentage');
  GeneratedTextColumn _tabPercentage;

  @override
  GeneratedTextColumn get tabPercentage =>
      _tabPercentage ??= _constructTabPercentage();

  GeneratedTextColumn _constructTabPercentage() {
    return GeneratedTextColumn(
      'tab_percentage',
      $tableName,
      true,
    );
  }

  final VerificationMeta _girdCondMeta = const VerificationMeta('girdCond');
  GeneratedTextColumn _girdCond;

  @override
  GeneratedTextColumn get girdCond => _girdCond ??= _constructGirdCond();

  GeneratedTextColumn _constructGirdCond() {
    return GeneratedTextColumn(
      'gird_cond',
      $tableName,
      true,
    );
  }

  final VerificationMeta _girdMinMeta = const VerificationMeta('girdMin');
  GeneratedTextColumn _girdMin;

  @override
  GeneratedTextColumn get girdMin => _girdMin ??= _constructGirdMin();

  GeneratedTextColumn _constructGirdMin() {
    return GeneratedTextColumn(
      'gird_min',
      $tableName,
      true,
    );
  }

  final VerificationMeta _girdMaxMeta = const VerificationMeta('girdMax');
  GeneratedTextColumn _girdMax;

  @override
  GeneratedTextColumn get girdMax => _girdMax ??= _constructGirdMax();

  GeneratedTextColumn _constructGirdMax() {
    return GeneratedTextColumn(
      'gird_max',
      $tableName,
      true,
    );
  }

  final VerificationMeta _polishMeta = const VerificationMeta('polish');
  GeneratedTextColumn _polish;

  @override
  GeneratedTextColumn get polish => _polish ??= _constructPolish();

  GeneratedTextColumn _constructPolish() {
    return GeneratedTextColumn(
      'polish',
      $tableName,
      true,
    );
  }

  final VerificationMeta _symmMeta = const VerificationMeta('symm');
  GeneratedTextColumn _symm;

  @override
  GeneratedTextColumn get symm => _symm ??= _constructSymm();

  GeneratedTextColumn _constructSymm() {
    return GeneratedTextColumn(
      'symm',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fluoMeta = const VerificationMeta('fluo');
  GeneratedTextColumn _fluo;

  @override
  GeneratedTextColumn get fluo => _fluo ??= _constructFluo();

  GeneratedTextColumn _constructFluo() {
    return GeneratedTextColumn(
      'fluo',
      $tableName,
      true,
    );
  }

  final VerificationMeta _crownAngleMeta = const VerificationMeta('crownAngle');
  GeneratedTextColumn _crownAngle;

  @override
  GeneratedTextColumn get crownAngle => _crownAngle ??= _constructCrownAngle();

  GeneratedTextColumn _constructCrownAngle() {
    return GeneratedTextColumn(
      'crown_angle',
      $tableName,
      true,
    );
  }

  final VerificationMeta _crownHeightMeta =
      const VerificationMeta('crownHeight');
  GeneratedTextColumn _crownHeight;

  @override
  GeneratedTextColumn get crownHeight =>
      _crownHeight ??= _constructCrownHeight();

  GeneratedTextColumn _constructCrownHeight() {
    return GeneratedTextColumn(
      'crown_height',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pavilionAngleMeta =
      const VerificationMeta('pavilionAngle');
  GeneratedTextColumn _pavilionAngle;

  @override
  GeneratedTextColumn get pavilionAngle =>
      _pavilionAngle ??= _constructPavilionAngle();

  GeneratedTextColumn _constructPavilionAngle() {
    return GeneratedTextColumn(
      'pavilion_angle',
      $tableName,
      true,
    );
  }

  final VerificationMeta _pavilionDepthMeta =
      const VerificationMeta('pavilionDepth');
  GeneratedTextColumn _pavilionDepth;

  @override
  GeneratedTextColumn get pavilionDepth =>
      _pavilionDepth ??= _constructPavilionDepth();

  GeneratedTextColumn _constructPavilionDepth() {
    return GeneratedTextColumn(
      'pavilion_depth',
      $tableName,
      true,
    );
  }

  final VerificationMeta _culetMeta = const VerificationMeta('culet');
  GeneratedTextColumn _culet;

  @override
  GeneratedTextColumn get culet => _culet ??= _constructCulet();

  GeneratedTextColumn _constructCulet() {
    return GeneratedTextColumn(
      'culet',
      $tableName,
      true,
    );
  }

  final VerificationMeta _costPriceMeta = const VerificationMeta('costPrice');
  GeneratedTextColumn _costPrice;

  @override
  GeneratedTextColumn get costPrice => _costPrice ??= _constructCostPrice();

  GeneratedTextColumn _constructCostPrice() {
    return GeneratedTextColumn(
      'cost_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _listPriceMeta = const VerificationMeta('listPrice');
  GeneratedTextColumn _listPrice;

  @override
  GeneratedTextColumn get listPrice => _listPrice ??= _constructListPrice();

  GeneratedTextColumn _constructListPrice() {
    return GeneratedTextColumn(
      'list_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _owner1Meta = const VerificationMeta('owner1');
  GeneratedTextColumn _owner1;

  @override
  GeneratedTextColumn get owner1 => _owner1 ??= _constructOwner1();

  GeneratedTextColumn _constructOwner1() {
    return GeneratedTextColumn(
      'owner1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _owner2Meta = const VerificationMeta('owner2');
  GeneratedTextColumn _owner2;

  @override
  GeneratedTextColumn get owner2 => _owner2 ??= _constructOwner2();

  GeneratedTextColumn _constructOwner2() {
    return GeneratedTextColumn(
      'owner2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _locationMeta = const VerificationMeta('location');
  GeneratedTextColumn _location;

  @override
  GeneratedTextColumn get location => _location ??= _constructLocation();

  GeneratedTextColumn _constructLocation() {
    return GeneratedTextColumn(
      'location',
      $tableName,
      true,
    );
  }

  final VerificationMeta _boxNumberMeta = const VerificationMeta('boxNumber');
  GeneratedTextColumn _boxNumber;

  @override
  GeneratedTextColumn get boxNumber => _boxNumber ??= _constructBoxNumber();

  GeneratedTextColumn _constructBoxNumber() {
    return GeneratedTextColumn(
      'box_number',
      $tableName,
      true,
    );
  }

  final VerificationMeta _remarksMeta = const VerificationMeta('remarks');
  GeneratedTextColumn _remarks;

  @override
  GeneratedTextColumn get remarks => _remarks ??= _constructRemarks();

  GeneratedTextColumn _constructRemarks() {
    return GeneratedTextColumn(
      'remarks',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved1Meta = const VerificationMeta('reserved1');
  GeneratedTextColumn _reserved1;

  @override
  GeneratedTextColumn get reserved1 => _reserved1 ??= _constructReserved1();

  GeneratedTextColumn _constructReserved1() {
    return GeneratedTextColumn(
      'reserved1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved2Meta = const VerificationMeta('reserved2');
  GeneratedTextColumn _reserved2;

  @override
  GeneratedTextColumn get reserved2 => _reserved2 ??= _constructReserved2();

  GeneratedTextColumn _constructReserved2() {
    return GeneratedTextColumn(
      'reserved2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved3Meta = const VerificationMeta('reserved3');
  GeneratedTextColumn _reserved3;

  @override
  GeneratedTextColumn get reserved3 => _reserved3 ??= _constructReserved3();

  GeneratedTextColumn _constructReserved3() {
    return GeneratedTextColumn(
      'reserved3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved4Meta = const VerificationMeta('reserved4');
  GeneratedTextColumn _reserved4;

  @override
  GeneratedTextColumn get reserved4 => _reserved4 ??= _constructReserved4();

  GeneratedTextColumn _constructReserved4() {
    return GeneratedTextColumn(
      'reserved4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved5Meta = const VerificationMeta('reserved5');
  GeneratedTextColumn _reserved5;

  @override
  GeneratedTextColumn get reserved5 => _reserved5 ??= _constructReserved5();

  GeneratedTextColumn _constructReserved5() {
    return GeneratedTextColumn(
      'reserved5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoStoneID,
        stoneID,
        stoneERPKey,
        stoneType,
        stoneCode,
        isDiamond,
        stoneDescription,
        uom,
        uomRef,
        stoneCarats,
        caratsOnHand,
        caratsOnApproval,
        stoneCaratRange,
        rangeCostPrice,
        rangeListPrice,
        stoneClarity,
        stoneSize,
        stoneColor,
        stoneCut,
        stoneShape,
        lab,
        certificateNumber,
        certificateDate,
        certificateImage,
        lotNumber,
        stoneQuantity,
        status,
        stockAccountCode,
        length,
        width,
        depth,
        depthPercentage,
        tabPercentage,
        girdCond,
        girdMin,
        girdMax,
        polish,
        symm,
        fluo,
        crownAngle,
        crownHeight,
        pavilionAngle,
        pavilionDepth,
        culet,
        costPrice,
        listPrice,
        owner1,
        owner2,
        location,
        boxNumber,
        remarks,
        reserved1,
        reserved2,
        reserved3,
        reserved4,
        reserved5,
        lastUpdated,
        row
      ];

  @override
  $StonesTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'stones';
  @override
  final String actualTableName = 'stones';

  @override
  VerificationContext validateIntegrity(StonesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoStoneID.present) {
      context.handle(_autoStoneIDMeta,
          autoStoneID.isAcceptableValue(d.autoStoneID.value, _autoStoneIDMeta));
    }
    if (d.stoneID.present) {
      context.handle(_stoneIDMeta,
          stoneID.isAcceptableValue(d.stoneID.value, _stoneIDMeta));
    }
    if (d.stoneERPKey.present) {
      context.handle(_stoneERPKeyMeta,
          stoneERPKey.isAcceptableValue(d.stoneERPKey.value, _stoneERPKeyMeta));
    }
    if (d.stoneType.present) {
      context.handle(_stoneTypeMeta,
          stoneType.isAcceptableValue(d.stoneType.value, _stoneTypeMeta));
    }
    if (d.stoneCode.present) {
      context.handle(_stoneCodeMeta,
          stoneCode.isAcceptableValue(d.stoneCode.value, _stoneCodeMeta));
    }
    if (d.isDiamond.present) {
      context.handle(_isDiamondMeta,
          isDiamond.isAcceptableValue(d.isDiamond.value, _isDiamondMeta));
    }
    if (d.stoneDescription.present) {
      context.handle(
          _stoneDescriptionMeta,
          stoneDescription.isAcceptableValue(
              d.stoneDescription.value, _stoneDescriptionMeta));
    }
    if (d.uom.present) {
      context.handle(_uomMeta, uom.isAcceptableValue(d.uom.value, _uomMeta));
    }
    if (d.uomRef.present) {
      context.handle(
          _uomRefMeta, uomRef.isAcceptableValue(d.uomRef.value, _uomRefMeta));
    }
    if (d.stoneCarats.present) {
      context.handle(_stoneCaratsMeta,
          stoneCarats.isAcceptableValue(d.stoneCarats.value, _stoneCaratsMeta));
    }
    if (d.caratsOnHand.present) {
      context.handle(
          _caratsOnHandMeta,
          caratsOnHand.isAcceptableValue(
              d.caratsOnHand.value, _caratsOnHandMeta));
    }
    if (d.caratsOnApproval.present) {
      context.handle(
          _caratsOnApprovalMeta,
          caratsOnApproval.isAcceptableValue(
              d.caratsOnApproval.value, _caratsOnApprovalMeta));
    }
    if (d.stoneCaratRange.present) {
      context.handle(
          _stoneCaratRangeMeta,
          stoneCaratRange.isAcceptableValue(
              d.stoneCaratRange.value, _stoneCaratRangeMeta));
    }
    if (d.rangeCostPrice.present) {
      context.handle(
          _rangeCostPriceMeta,
          rangeCostPrice.isAcceptableValue(
              d.rangeCostPrice.value, _rangeCostPriceMeta));
    }
    if (d.rangeListPrice.present) {
      context.handle(
          _rangeListPriceMeta,
          rangeListPrice.isAcceptableValue(
              d.rangeListPrice.value, _rangeListPriceMeta));
    }
    if (d.stoneClarity.present) {
      context.handle(
          _stoneClarityMeta,
          stoneClarity.isAcceptableValue(
              d.stoneClarity.value, _stoneClarityMeta));
    }
    if (d.stoneSize.present) {
      context.handle(_stoneSizeMeta,
          stoneSize.isAcceptableValue(d.stoneSize.value, _stoneSizeMeta));
    }
    if (d.stoneColor.present) {
      context.handle(_stoneColorMeta,
          stoneColor.isAcceptableValue(d.stoneColor.value, _stoneColorMeta));
    }
    if (d.stoneCut.present) {
      context.handle(_stoneCutMeta,
          stoneCut.isAcceptableValue(d.stoneCut.value, _stoneCutMeta));
    }
    if (d.stoneShape.present) {
      context.handle(_stoneShapeMeta,
          stoneShape.isAcceptableValue(d.stoneShape.value, _stoneShapeMeta));
    }
    if (d.lab.present) {
      context.handle(_labMeta, lab.isAcceptableValue(d.lab.value, _labMeta));
    }
    if (d.certificateNumber.present) {
      context.handle(
          _certificateNumberMeta,
          certificateNumber.isAcceptableValue(
              d.certificateNumber.value, _certificateNumberMeta));
    }
    if (d.certificateDate.present) {
      context.handle(
          _certificateDateMeta,
          certificateDate.isAcceptableValue(
              d.certificateDate.value, _certificateDateMeta));
    }
    if (d.certificateImage.present) {
      context.handle(
          _certificateImageMeta,
          certificateImage.isAcceptableValue(
              d.certificateImage.value, _certificateImageMeta));
    }
    if (d.lotNumber.present) {
      context.handle(_lotNumberMeta,
          lotNumber.isAcceptableValue(d.lotNumber.value, _lotNumberMeta));
    }
    if (d.stoneQuantity.present) {
      context.handle(
          _stoneQuantityMeta,
          stoneQuantity.isAcceptableValue(
              d.stoneQuantity.value, _stoneQuantityMeta));
    }
    if (d.status.present) {
      context.handle(
          _statusMeta, status.isAcceptableValue(d.status.value, _statusMeta));
    }
    if (d.stockAccountCode.present) {
      context.handle(
          _stockAccountCodeMeta,
          stockAccountCode.isAcceptableValue(
              d.stockAccountCode.value, _stockAccountCodeMeta));
    }
    if (d.length.present) {
      context.handle(
          _lengthMeta, length.isAcceptableValue(d.length.value, _lengthMeta));
    }
    if (d.width.present) {
      context.handle(
          _widthMeta, width.isAcceptableValue(d.width.value, _widthMeta));
    }
    if (d.depth.present) {
      context.handle(
          _depthMeta, depth.isAcceptableValue(d.depth.value, _depthMeta));
    }
    if (d.depthPercentage.present) {
      context.handle(
          _depthPercentageMeta,
          depthPercentage.isAcceptableValue(
              d.depthPercentage.value, _depthPercentageMeta));
    }
    if (d.tabPercentage.present) {
      context.handle(
          _tabPercentageMeta,
          tabPercentage.isAcceptableValue(
              d.tabPercentage.value, _tabPercentageMeta));
    }
    if (d.girdCond.present) {
      context.handle(_girdCondMeta,
          girdCond.isAcceptableValue(d.girdCond.value, _girdCondMeta));
    }
    if (d.girdMin.present) {
      context.handle(_girdMinMeta,
          girdMin.isAcceptableValue(d.girdMin.value, _girdMinMeta));
    }
    if (d.girdMax.present) {
      context.handle(_girdMaxMeta,
          girdMax.isAcceptableValue(d.girdMax.value, _girdMaxMeta));
    }
    if (d.polish.present) {
      context.handle(
          _polishMeta, polish.isAcceptableValue(d.polish.value, _polishMeta));
    }
    if (d.symm.present) {
      context.handle(
          _symmMeta, symm.isAcceptableValue(d.symm.value, _symmMeta));
    }
    if (d.fluo.present) {
      context.handle(
          _fluoMeta, fluo.isAcceptableValue(d.fluo.value, _fluoMeta));
    }
    if (d.crownAngle.present) {
      context.handle(_crownAngleMeta,
          crownAngle.isAcceptableValue(d.crownAngle.value, _crownAngleMeta));
    }
    if (d.crownHeight.present) {
      context.handle(_crownHeightMeta,
          crownHeight.isAcceptableValue(d.crownHeight.value, _crownHeightMeta));
    }
    if (d.pavilionAngle.present) {
      context.handle(
          _pavilionAngleMeta,
          pavilionAngle.isAcceptableValue(
              d.pavilionAngle.value, _pavilionAngleMeta));
    }
    if (d.pavilionDepth.present) {
      context.handle(
          _pavilionDepthMeta,
          pavilionDepth.isAcceptableValue(
              d.pavilionDepth.value, _pavilionDepthMeta));
    }
    if (d.culet.present) {
      context.handle(
          _culetMeta, culet.isAcceptableValue(d.culet.value, _culetMeta));
    }
    if (d.costPrice.present) {
      context.handle(_costPriceMeta,
          costPrice.isAcceptableValue(d.costPrice.value, _costPriceMeta));
    }
    if (d.listPrice.present) {
      context.handle(_listPriceMeta,
          listPrice.isAcceptableValue(d.listPrice.value, _listPriceMeta));
    }
    if (d.owner1.present) {
      context.handle(
          _owner1Meta, owner1.isAcceptableValue(d.owner1.value, _owner1Meta));
    }
    if (d.owner2.present) {
      context.handle(
          _owner2Meta, owner2.isAcceptableValue(d.owner2.value, _owner2Meta));
    }
    if (d.location.present) {
      context.handle(_locationMeta,
          location.isAcceptableValue(d.location.value, _locationMeta));
    }
    if (d.boxNumber.present) {
      context.handle(_boxNumberMeta,
          boxNumber.isAcceptableValue(d.boxNumber.value, _boxNumberMeta));
    }
    if (d.remarks.present) {
      context.handle(_remarksMeta,
          remarks.isAcceptableValue(d.remarks.value, _remarksMeta));
    }
    if (d.reserved1.present) {
      context.handle(_reserved1Meta,
          reserved1.isAcceptableValue(d.reserved1.value, _reserved1Meta));
    }
    if (d.reserved2.present) {
      context.handle(_reserved2Meta,
          reserved2.isAcceptableValue(d.reserved2.value, _reserved2Meta));
    }
    if (d.reserved3.present) {
      context.handle(_reserved3Meta,
          reserved3.isAcceptableValue(d.reserved3.value, _reserved3Meta));
    }
    if (d.reserved4.present) {
      context.handle(_reserved4Meta,
          reserved4.isAcceptableValue(d.reserved4.value, _reserved4Meta));
    }
    if (d.reserved5.present) {
      context.handle(_reserved5Meta,
          reserved5.isAcceptableValue(d.reserved5.value, _reserved5Meta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoStoneID};

  @override
  Stone map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Stone.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(StonesCompanion d) {
    final map = <String, Variable>{};
    if (d.autoStoneID.present) {
      map['auto_stone_i_d'] = Variable<int, IntType>(d.autoStoneID.value);
    }
    if (d.stoneID.present) {
      map['stone_i_d'] = Variable<String, StringType>(d.stoneID.value);
    }
    if (d.stoneERPKey.present) {
      map['stone_e_r_p_key'] =
          Variable<String, StringType>(d.stoneERPKey.value);
    }
    if (d.stoneType.present) {
      map['stone_type'] = Variable<String, StringType>(d.stoneType.value);
    }
    if (d.stoneCode.present) {
      map['stone_code'] = Variable<String, StringType>(d.stoneCode.value);
    }
    if (d.isDiamond.present) {
      map['is_diamond'] = Variable<bool, BoolType>(d.isDiamond.value);
    }
    if (d.stoneDescription.present) {
      map['stone_description'] =
          Variable<String, StringType>(d.stoneDescription.value);
    }
    if (d.uom.present) {
      map['uom'] = Variable<String, StringType>(d.uom.value);
    }
    if (d.uomRef.present) {
      map['uom_ref'] = Variable<String, StringType>(d.uomRef.value);
    }
    if (d.stoneCarats.present) {
      map['stone_carats'] = Variable<String, StringType>(d.stoneCarats.value);
    }
    if (d.caratsOnHand.present) {
      map['carats_on_hand'] =
          Variable<String, StringType>(d.caratsOnHand.value);
    }
    if (d.caratsOnApproval.present) {
      map['carats_on_approval'] =
          Variable<String, StringType>(d.caratsOnApproval.value);
    }
    if (d.stoneCaratRange.present) {
      map['stone_carat_range'] =
          Variable<String, StringType>(d.stoneCaratRange.value);
    }
    if (d.rangeCostPrice.present) {
      map['range_cost_price'] =
          Variable<String, StringType>(d.rangeCostPrice.value);
    }
    if (d.rangeListPrice.present) {
      map['range_list_price'] =
          Variable<String, StringType>(d.rangeListPrice.value);
    }
    if (d.stoneClarity.present) {
      map['stone_clarity'] = Variable<String, StringType>(d.stoneClarity.value);
    }
    if (d.stoneSize.present) {
      map['stone_size'] = Variable<String, StringType>(d.stoneSize.value);
    }
    if (d.stoneColor.present) {
      map['stone_color'] = Variable<String, StringType>(d.stoneColor.value);
    }
    if (d.stoneCut.present) {
      map['stone_cut'] = Variable<String, StringType>(d.stoneCut.value);
    }
    if (d.stoneShape.present) {
      map['stone_shape'] = Variable<String, StringType>(d.stoneShape.value);
    }
    if (d.lab.present) {
      map['lab'] = Variable<String, StringType>(d.lab.value);
    }
    if (d.certificateNumber.present) {
      map['certificate_number'] =
          Variable<String, StringType>(d.certificateNumber.value);
    }
    if (d.certificateDate.present) {
      map['certificate_date'] =
          Variable<String, StringType>(d.certificateDate.value);
    }
    if (d.certificateImage.present) {
      map['certificate_image'] =
          Variable<String, StringType>(d.certificateImage.value);
    }
    if (d.lotNumber.present) {
      map['lot_number'] = Variable<String, StringType>(d.lotNumber.value);
    }
    if (d.stoneQuantity.present) {
      map['stone_quantity'] =
          Variable<String, StringType>(d.stoneQuantity.value);
    }
    if (d.status.present) {
      map['status'] = Variable<String, StringType>(d.status.value);
    }
    if (d.stockAccountCode.present) {
      map['stock_account_code'] =
          Variable<String, StringType>(d.stockAccountCode.value);
    }
    if (d.length.present) {
      map['length'] = Variable<String, StringType>(d.length.value);
    }
    if (d.width.present) {
      map['width'] = Variable<String, StringType>(d.width.value);
    }
    if (d.depth.present) {
      map['depth'] = Variable<String, StringType>(d.depth.value);
    }
    if (d.depthPercentage.present) {
      map['depth_percentage'] =
          Variable<String, StringType>(d.depthPercentage.value);
    }
    if (d.tabPercentage.present) {
      map['tab_percentage'] =
          Variable<String, StringType>(d.tabPercentage.value);
    }
    if (d.girdCond.present) {
      map['gird_cond'] = Variable<String, StringType>(d.girdCond.value);
    }
    if (d.girdMin.present) {
      map['gird_min'] = Variable<String, StringType>(d.girdMin.value);
    }
    if (d.girdMax.present) {
      map['gird_max'] = Variable<String, StringType>(d.girdMax.value);
    }
    if (d.polish.present) {
      map['polish'] = Variable<String, StringType>(d.polish.value);
    }
    if (d.symm.present) {
      map['symm'] = Variable<String, StringType>(d.symm.value);
    }
    if (d.fluo.present) {
      map['fluo'] = Variable<String, StringType>(d.fluo.value);
    }
    if (d.crownAngle.present) {
      map['crown_angle'] = Variable<String, StringType>(d.crownAngle.value);
    }
    if (d.crownHeight.present) {
      map['crown_height'] = Variable<String, StringType>(d.crownHeight.value);
    }
    if (d.pavilionAngle.present) {
      map['pavilion_angle'] =
          Variable<String, StringType>(d.pavilionAngle.value);
    }
    if (d.pavilionDepth.present) {
      map['pavilion_depth'] =
          Variable<String, StringType>(d.pavilionDepth.value);
    }
    if (d.culet.present) {
      map['culet'] = Variable<String, StringType>(d.culet.value);
    }
    if (d.costPrice.present) {
      map['cost_price'] = Variable<String, StringType>(d.costPrice.value);
    }
    if (d.listPrice.present) {
      map['list_price'] = Variable<String, StringType>(d.listPrice.value);
    }
    if (d.owner1.present) {
      map['owner1'] = Variable<String, StringType>(d.owner1.value);
    }
    if (d.owner2.present) {
      map['owner2'] = Variable<String, StringType>(d.owner2.value);
    }
    if (d.location.present) {
      map['location'] = Variable<String, StringType>(d.location.value);
    }
    if (d.boxNumber.present) {
      map['box_number'] = Variable<String, StringType>(d.boxNumber.value);
    }
    if (d.remarks.present) {
      map['remarks'] = Variable<String, StringType>(d.remarks.value);
    }
    if (d.reserved1.present) {
      map['reserved1'] = Variable<String, StringType>(d.reserved1.value);
    }
    if (d.reserved2.present) {
      map['reserved2'] = Variable<String, StringType>(d.reserved2.value);
    }
    if (d.reserved3.present) {
      map['reserved3'] = Variable<String, StringType>(d.reserved3.value);
    }
    if (d.reserved4.present) {
      map['reserved4'] = Variable<String, StringType>(d.reserved4.value);
    }
    if (d.reserved5.present) {
      map['reserved5'] = Variable<String, StringType>(d.reserved5.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $StonesTable createAlias(String alias) {
    return $StonesTable(_db, alias);
  }
}

class StoneMapping extends DataClass implements Insertable<StoneMapping> {
  final int autoStoneMappingID;
  final String itemID;
  final String stoneID;
  final String lastUpdated;
  final String row;

  StoneMapping(
      {@required this.autoStoneMappingID,
      this.itemID,
      this.stoneID,
      this.lastUpdated,
      this.row});

  factory StoneMapping.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return StoneMapping(
      autoStoneMappingID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_stone_mapping_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      stoneID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}stone_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory StoneMapping.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return StoneMapping(
      autoStoneMappingID: serializer.fromJson<int>(json['autoStoneMappingID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      stoneID: serializer.fromJson<String>(json['stoneID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoStoneMappingID': serializer.toJson<int>(autoStoneMappingID),
      'itemID': serializer.toJson<String>(itemID),
      'stoneID': serializer.toJson<String>(stoneID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  StoneMappingsCompanion createCompanion(bool nullToAbsent) {
    return StoneMappingsCompanion(
      autoStoneMappingID: autoStoneMappingID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoStoneMappingID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      stoneID: stoneID == null && nullToAbsent
          ? const Value.absent()
          : Value(stoneID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  StoneMapping copyWith(
          {int autoStoneMappingID,
          String itemID,
          String stoneID,
          String lastUpdated,
          String row}) =>
      StoneMapping(
        autoStoneMappingID: autoStoneMappingID ?? this.autoStoneMappingID,
        itemID: itemID ?? this.itemID,
        stoneID: stoneID ?? this.stoneID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('StoneMapping(')
          ..write('autoStoneMappingID: $autoStoneMappingID, ')
          ..write('itemID: $itemID, ')
          ..write('stoneID: $stoneID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoStoneMappingID.hashCode,
      $mrjc(itemID.hashCode,
          $mrjc(stoneID.hashCode, $mrjc(lastUpdated.hashCode, row.hashCode)))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is StoneMapping &&
          other.autoStoneMappingID == this.autoStoneMappingID &&
          other.itemID == this.itemID &&
          other.stoneID == this.stoneID &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class StoneMappingsCompanion extends UpdateCompanion<StoneMapping> {
  final Value<int> autoStoneMappingID;
  final Value<String> itemID;
  final Value<String> stoneID;
  final Value<String> lastUpdated;
  final Value<String> row;

  const StoneMappingsCompanion({
    this.autoStoneMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.stoneID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  StoneMappingsCompanion.insert({
    this.autoStoneMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.stoneID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  StoneMappingsCompanion copyWith(
      {Value<int> autoStoneMappingID,
      Value<String> itemID,
      Value<String> stoneID,
      Value<String> lastUpdated,
      Value<String> row}) {
    return StoneMappingsCompanion(
      autoStoneMappingID: autoStoneMappingID ?? this.autoStoneMappingID,
      itemID: itemID ?? this.itemID,
      stoneID: stoneID ?? this.stoneID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $StoneMappingsTable extends StoneMappings
    with TableInfo<$StoneMappingsTable, StoneMapping> {
  final GeneratedDatabase _db;
  final String _alias;

  $StoneMappingsTable(this._db, [this._alias]);

  final VerificationMeta _autoStoneMappingIDMeta =
      const VerificationMeta('autoStoneMappingID');
  GeneratedIntColumn _autoStoneMappingID;

  @override
  GeneratedIntColumn get autoStoneMappingID =>
      _autoStoneMappingID ??= _constructAutoStoneMappingID();

  GeneratedIntColumn _constructAutoStoneMappingID() {
    return GeneratedIntColumn('auto_stone_mapping_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn(
      'item_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _stoneIDMeta = const VerificationMeta('stoneID');
  GeneratedTextColumn _stoneID;

  @override
  GeneratedTextColumn get stoneID => _stoneID ??= _constructStoneID();

  GeneratedTextColumn _constructStoneID() {
    return GeneratedTextColumn(
      'stone_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [autoStoneMappingID, itemID, stoneID, lastUpdated, row];

  @override
  $StoneMappingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'stone_mappings';
  @override
  final String actualTableName = 'stone_mappings';

  @override
  VerificationContext validateIntegrity(StoneMappingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoStoneMappingID.present) {
      context.handle(
          _autoStoneMappingIDMeta,
          autoStoneMappingID.isAcceptableValue(
              d.autoStoneMappingID.value, _autoStoneMappingIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    }
    if (d.stoneID.present) {
      context.handle(_stoneIDMeta,
          stoneID.isAcceptableValue(d.stoneID.value, _stoneIDMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoStoneMappingID};

  @override
  StoneMapping map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return StoneMapping.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(StoneMappingsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoStoneMappingID.present) {
      map['auto_stone_mapping_i_d'] =
          Variable<int, IntType>(d.autoStoneMappingID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.stoneID.present) {
      map['stone_i_d'] = Variable<String, StringType>(d.stoneID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $StoneMappingsTable createAlias(String alias) {
    return $StoneMappingsTable(_db, alias);
  }
}

class SemiFinished extends DataClass implements Insertable<SemiFinished> {
  final int autoSemiFinishedID;
  final String sfID;
  final String sfERPKey;
  final String sfType;
  final String sfDescription;
  final String uom;
  final String uomRef;
  final String costPrice;
  final String listPrice;
  final String reserved1;
  final String reserved2;
  final String reserved3;
  final String reserved4;
  final String reserved5;
  final String lastUpdated;
  final String row;

  SemiFinished(
      {@required this.autoSemiFinishedID,
      this.sfID,
      this.sfERPKey,
      this.sfType,
      this.sfDescription,
      this.uom,
      this.uomRef,
      this.costPrice,
      this.listPrice,
      this.reserved1,
      this.reserved2,
      this.reserved3,
      this.reserved4,
      this.reserved5,
      this.lastUpdated,
      this.row});

  factory SemiFinished.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return SemiFinished(
      autoSemiFinishedID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_semi_finished_i_d']),
      sfID:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sf_i_d']),
      sfERPKey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sf_e_r_p_key']),
      sfType:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sf_type']),
      sfDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sf_description']),
      uom: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom']),
      uomRef:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom_ref']),
      costPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cost_price']),
      listPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}list_price']),
      reserved1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved1']),
      reserved2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved2']),
      reserved3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved3']),
      reserved4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved4']),
      reserved5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved5']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory SemiFinished.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SemiFinished(
      autoSemiFinishedID: serializer.fromJson<int>(json['autoSemiFinishedID']),
      sfID: serializer.fromJson<String>(json['sfID']),
      sfERPKey: serializer.fromJson<String>(json['sfERPKey']),
      sfType: serializer.fromJson<String>(json['sfType']),
      sfDescription: serializer.fromJson<String>(json['sfDescription']),
      uom: serializer.fromJson<String>(json['uom']),
      uomRef: serializer.fromJson<String>(json['uomRef']),
      costPrice: serializer.fromJson<String>(json['costPrice']),
      listPrice: serializer.fromJson<String>(json['listPrice']),
      reserved1: serializer.fromJson<String>(json['reserved1']),
      reserved2: serializer.fromJson<String>(json['reserved2']),
      reserved3: serializer.fromJson<String>(json['reserved3']),
      reserved4: serializer.fromJson<String>(json['reserved4']),
      reserved5: serializer.fromJson<String>(json['reserved5']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoSemiFinishedID': serializer.toJson<int>(autoSemiFinishedID),
      'sfID': serializer.toJson<String>(sfID),
      'sfERPKey': serializer.toJson<String>(sfERPKey),
      'sfType': serializer.toJson<String>(sfType),
      'sfDescription': serializer.toJson<String>(sfDescription),
      'uom': serializer.toJson<String>(uom),
      'uomRef': serializer.toJson<String>(uomRef),
      'costPrice': serializer.toJson<String>(costPrice),
      'listPrice': serializer.toJson<String>(listPrice),
      'reserved1': serializer.toJson<String>(reserved1),
      'reserved2': serializer.toJson<String>(reserved2),
      'reserved3': serializer.toJson<String>(reserved3),
      'reserved4': serializer.toJson<String>(reserved4),
      'reserved5': serializer.toJson<String>(reserved5),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  SemiFinishedsCompanion createCompanion(bool nullToAbsent) {
    return SemiFinishedsCompanion(
      autoSemiFinishedID: autoSemiFinishedID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoSemiFinishedID),
      sfID: sfID == null && nullToAbsent ? const Value.absent() : Value(sfID),
      sfERPKey: sfERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(sfERPKey),
      sfType:
          sfType == null && nullToAbsent ? const Value.absent() : Value(sfType),
      sfDescription: sfDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(sfDescription),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      uomRef:
          uomRef == null && nullToAbsent ? const Value.absent() : Value(uomRef),
      costPrice: costPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(costPrice),
      listPrice: listPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(listPrice),
      reserved1: reserved1 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved1),
      reserved2: reserved2 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved2),
      reserved3: reserved3 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved3),
      reserved4: reserved4 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved4),
      reserved5: reserved5 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved5),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  SemiFinished copyWith(
          {int autoSemiFinishedID,
          String sfID,
          String sfERPKey,
          String sfType,
          String sfDescription,
          String uom,
          String uomRef,
          String costPrice,
          String listPrice,
          String reserved1,
          String reserved2,
          String reserved3,
          String reserved4,
          String reserved5,
          String lastUpdated,
          String row}) =>
      SemiFinished(
        autoSemiFinishedID: autoSemiFinishedID ?? this.autoSemiFinishedID,
        sfID: sfID ?? this.sfID,
        sfERPKey: sfERPKey ?? this.sfERPKey,
        sfType: sfType ?? this.sfType,
        sfDescription: sfDescription ?? this.sfDescription,
        uom: uom ?? this.uom,
        uomRef: uomRef ?? this.uomRef,
        costPrice: costPrice ?? this.costPrice,
        listPrice: listPrice ?? this.listPrice,
        reserved1: reserved1 ?? this.reserved1,
        reserved2: reserved2 ?? this.reserved2,
        reserved3: reserved3 ?? this.reserved3,
        reserved4: reserved4 ?? this.reserved4,
        reserved5: reserved5 ?? this.reserved5,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('SemiFinished(')
          ..write('autoSemiFinishedID: $autoSemiFinishedID, ')
          ..write('sfID: $sfID, ')
          ..write('sfERPKey: $sfERPKey, ')
          ..write('sfType: $sfType, ')
          ..write('sfDescription: $sfDescription, ')
          ..write('uom: $uom, ')
          ..write('uomRef: $uomRef, ')
          ..write('costPrice: $costPrice, ')
          ..write('listPrice: $listPrice, ')
          ..write('reserved1: $reserved1, ')
          ..write('reserved2: $reserved2, ')
          ..write('reserved3: $reserved3, ')
          ..write('reserved4: $reserved4, ')
          ..write('reserved5: $reserved5, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoSemiFinishedID.hashCode,
      $mrjc(
          sfID.hashCode,
          $mrjc(
              sfERPKey.hashCode,
              $mrjc(
                  sfType.hashCode,
                  $mrjc(
                      sfDescription.hashCode,
                      $mrjc(
                          uom.hashCode,
                          $mrjc(
                              uomRef.hashCode,
                              $mrjc(
                                  costPrice.hashCode,
                                  $mrjc(
                                      listPrice.hashCode,
                                      $mrjc(
                                          reserved1.hashCode,
                                          $mrjc(
                                              reserved2.hashCode,
                                              $mrjc(
                                                  reserved3.hashCode,
                                                  $mrjc(
                                                      reserved4.hashCode,
                                                      $mrjc(
                                                          reserved5.hashCode,
                                                          $mrjc(
                                                              lastUpdated
                                                                  .hashCode,
                                                              row.hashCode))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SemiFinished &&
          other.autoSemiFinishedID == this.autoSemiFinishedID &&
          other.sfID == this.sfID &&
          other.sfERPKey == this.sfERPKey &&
          other.sfType == this.sfType &&
          other.sfDescription == this.sfDescription &&
          other.uom == this.uom &&
          other.uomRef == this.uomRef &&
          other.costPrice == this.costPrice &&
          other.listPrice == this.listPrice &&
          other.reserved1 == this.reserved1 &&
          other.reserved2 == this.reserved2 &&
          other.reserved3 == this.reserved3 &&
          other.reserved4 == this.reserved4 &&
          other.reserved5 == this.reserved5 &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class SemiFinishedsCompanion extends UpdateCompanion<SemiFinished> {
  final Value<int> autoSemiFinishedID;
  final Value<String> sfID;
  final Value<String> sfERPKey;
  final Value<String> sfType;
  final Value<String> sfDescription;
  final Value<String> uom;
  final Value<String> uomRef;
  final Value<String> costPrice;
  final Value<String> listPrice;
  final Value<String> reserved1;
  final Value<String> reserved2;
  final Value<String> reserved3;
  final Value<String> reserved4;
  final Value<String> reserved5;
  final Value<String> lastUpdated;
  final Value<String> row;

  const SemiFinishedsCompanion({
    this.autoSemiFinishedID = const Value.absent(),
    this.sfID = const Value.absent(),
    this.sfERPKey = const Value.absent(),
    this.sfType = const Value.absent(),
    this.sfDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  SemiFinishedsCompanion.insert({
    this.autoSemiFinishedID = const Value.absent(),
    this.sfID = const Value.absent(),
    this.sfERPKey = const Value.absent(),
    this.sfType = const Value.absent(),
    this.sfDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  SemiFinishedsCompanion copyWith(
      {Value<int> autoSemiFinishedID,
      Value<String> sfID,
      Value<String> sfERPKey,
      Value<String> sfType,
      Value<String> sfDescription,
      Value<String> uom,
      Value<String> uomRef,
      Value<String> costPrice,
      Value<String> listPrice,
      Value<String> reserved1,
      Value<String> reserved2,
      Value<String> reserved3,
      Value<String> reserved4,
      Value<String> reserved5,
      Value<String> lastUpdated,
      Value<String> row}) {
    return SemiFinishedsCompanion(
      autoSemiFinishedID: autoSemiFinishedID ?? this.autoSemiFinishedID,
      sfID: sfID ?? this.sfID,
      sfERPKey: sfERPKey ?? this.sfERPKey,
      sfType: sfType ?? this.sfType,
      sfDescription: sfDescription ?? this.sfDescription,
      uom: uom ?? this.uom,
      uomRef: uomRef ?? this.uomRef,
      costPrice: costPrice ?? this.costPrice,
      listPrice: listPrice ?? this.listPrice,
      reserved1: reserved1 ?? this.reserved1,
      reserved2: reserved2 ?? this.reserved2,
      reserved3: reserved3 ?? this.reserved3,
      reserved4: reserved4 ?? this.reserved4,
      reserved5: reserved5 ?? this.reserved5,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $SemiFinishedsTable extends SemiFinisheds
    with TableInfo<$SemiFinishedsTable, SemiFinished> {
  final GeneratedDatabase _db;
  final String _alias;

  $SemiFinishedsTable(this._db, [this._alias]);

  final VerificationMeta _autoSemiFinishedIDMeta =
      const VerificationMeta('autoSemiFinishedID');
  GeneratedIntColumn _autoSemiFinishedID;

  @override
  GeneratedIntColumn get autoSemiFinishedID =>
      _autoSemiFinishedID ??= _constructAutoSemiFinishedID();

  GeneratedIntColumn _constructAutoSemiFinishedID() {
    return GeneratedIntColumn('auto_semi_finished_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _sfIDMeta = const VerificationMeta('sfID');
  GeneratedTextColumn _sfID;

  @override
  GeneratedTextColumn get sfID => _sfID ??= _constructSfID();

  GeneratedTextColumn _constructSfID() {
    return GeneratedTextColumn(
      'sf_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sfERPKeyMeta = const VerificationMeta('sfERPKey');
  GeneratedTextColumn _sfERPKey;

  @override
  GeneratedTextColumn get sfERPKey => _sfERPKey ??= _constructSfERPKey();

  GeneratedTextColumn _constructSfERPKey() {
    return GeneratedTextColumn(
      'sf_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sfTypeMeta = const VerificationMeta('sfType');
  GeneratedTextColumn _sfType;

  @override
  GeneratedTextColumn get sfType => _sfType ??= _constructSfType();

  GeneratedTextColumn _constructSfType() {
    return GeneratedTextColumn(
      'sf_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sfDescriptionMeta =
      const VerificationMeta('sfDescription');
  GeneratedTextColumn _sfDescription;

  @override
  GeneratedTextColumn get sfDescription =>
      _sfDescription ??= _constructSfDescription();

  GeneratedTextColumn _constructSfDescription() {
    return GeneratedTextColumn(
      'sf_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomMeta = const VerificationMeta('uom');
  GeneratedTextColumn _uom;

  @override
  GeneratedTextColumn get uom => _uom ??= _constructUom();

  GeneratedTextColumn _constructUom() {
    return GeneratedTextColumn(
      'uom',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomRefMeta = const VerificationMeta('uomRef');
  GeneratedTextColumn _uomRef;

  @override
  GeneratedTextColumn get uomRef => _uomRef ??= _constructUomRef();

  GeneratedTextColumn _constructUomRef() {
    return GeneratedTextColumn(
      'uom_ref',
      $tableName,
      true,
    );
  }

  final VerificationMeta _costPriceMeta = const VerificationMeta('costPrice');
  GeneratedTextColumn _costPrice;

  @override
  GeneratedTextColumn get costPrice => _costPrice ??= _constructCostPrice();

  GeneratedTextColumn _constructCostPrice() {
    return GeneratedTextColumn(
      'cost_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _listPriceMeta = const VerificationMeta('listPrice');
  GeneratedTextColumn _listPrice;

  @override
  GeneratedTextColumn get listPrice => _listPrice ??= _constructListPrice();

  GeneratedTextColumn _constructListPrice() {
    return GeneratedTextColumn(
      'list_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved1Meta = const VerificationMeta('reserved1');
  GeneratedTextColumn _reserved1;

  @override
  GeneratedTextColumn get reserved1 => _reserved1 ??= _constructReserved1();

  GeneratedTextColumn _constructReserved1() {
    return GeneratedTextColumn(
      'reserved1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved2Meta = const VerificationMeta('reserved2');
  GeneratedTextColumn _reserved2;

  @override
  GeneratedTextColumn get reserved2 => _reserved2 ??= _constructReserved2();

  GeneratedTextColumn _constructReserved2() {
    return GeneratedTextColumn(
      'reserved2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved3Meta = const VerificationMeta('reserved3');
  GeneratedTextColumn _reserved3;

  @override
  GeneratedTextColumn get reserved3 => _reserved3 ??= _constructReserved3();

  GeneratedTextColumn _constructReserved3() {
    return GeneratedTextColumn(
      'reserved3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved4Meta = const VerificationMeta('reserved4');
  GeneratedTextColumn _reserved4;

  @override
  GeneratedTextColumn get reserved4 => _reserved4 ??= _constructReserved4();

  GeneratedTextColumn _constructReserved4() {
    return GeneratedTextColumn(
      'reserved4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved5Meta = const VerificationMeta('reserved5');
  GeneratedTextColumn _reserved5;

  @override
  GeneratedTextColumn get reserved5 => _reserved5 ??= _constructReserved5();

  GeneratedTextColumn _constructReserved5() {
    return GeneratedTextColumn(
      'reserved5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoSemiFinishedID,
        sfID,
        sfERPKey,
        sfType,
        sfDescription,
        uom,
        uomRef,
        costPrice,
        listPrice,
        reserved1,
        reserved2,
        reserved3,
        reserved4,
        reserved5,
        lastUpdated,
        row
      ];

  @override
  $SemiFinishedsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'semi_finisheds';
  @override
  final String actualTableName = 'semi_finisheds';

  @override
  VerificationContext validateIntegrity(SemiFinishedsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoSemiFinishedID.present) {
      context.handle(
          _autoSemiFinishedIDMeta,
          autoSemiFinishedID.isAcceptableValue(
              d.autoSemiFinishedID.value, _autoSemiFinishedIDMeta));
    }
    if (d.sfID.present) {
      context.handle(
          _sfIDMeta, sfID.isAcceptableValue(d.sfID.value, _sfIDMeta));
    }
    if (d.sfERPKey.present) {
      context.handle(_sfERPKeyMeta,
          sfERPKey.isAcceptableValue(d.sfERPKey.value, _sfERPKeyMeta));
    }
    if (d.sfType.present) {
      context.handle(
          _sfTypeMeta, sfType.isAcceptableValue(d.sfType.value, _sfTypeMeta));
    }
    if (d.sfDescription.present) {
      context.handle(
          _sfDescriptionMeta,
          sfDescription.isAcceptableValue(
              d.sfDescription.value, _sfDescriptionMeta));
    }
    if (d.uom.present) {
      context.handle(_uomMeta, uom.isAcceptableValue(d.uom.value, _uomMeta));
    }
    if (d.uomRef.present) {
      context.handle(
          _uomRefMeta, uomRef.isAcceptableValue(d.uomRef.value, _uomRefMeta));
    }
    if (d.costPrice.present) {
      context.handle(_costPriceMeta,
          costPrice.isAcceptableValue(d.costPrice.value, _costPriceMeta));
    }
    if (d.listPrice.present) {
      context.handle(_listPriceMeta,
          listPrice.isAcceptableValue(d.listPrice.value, _listPriceMeta));
    }
    if (d.reserved1.present) {
      context.handle(_reserved1Meta,
          reserved1.isAcceptableValue(d.reserved1.value, _reserved1Meta));
    }
    if (d.reserved2.present) {
      context.handle(_reserved2Meta,
          reserved2.isAcceptableValue(d.reserved2.value, _reserved2Meta));
    }
    if (d.reserved3.present) {
      context.handle(_reserved3Meta,
          reserved3.isAcceptableValue(d.reserved3.value, _reserved3Meta));
    }
    if (d.reserved4.present) {
      context.handle(_reserved4Meta,
          reserved4.isAcceptableValue(d.reserved4.value, _reserved4Meta));
    }
    if (d.reserved5.present) {
      context.handle(_reserved5Meta,
          reserved5.isAcceptableValue(d.reserved5.value, _reserved5Meta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoSemiFinishedID};

  @override
  SemiFinished map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SemiFinished.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(SemiFinishedsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoSemiFinishedID.present) {
      map['auto_semi_finished_i_d'] =
          Variable<int, IntType>(d.autoSemiFinishedID.value);
    }
    if (d.sfID.present) {
      map['sf_i_d'] = Variable<String, StringType>(d.sfID.value);
    }
    if (d.sfERPKey.present) {
      map['sf_e_r_p_key'] = Variable<String, StringType>(d.sfERPKey.value);
    }
    if (d.sfType.present) {
      map['sf_type'] = Variable<String, StringType>(d.sfType.value);
    }
    if (d.sfDescription.present) {
      map['sf_description'] =
          Variable<String, StringType>(d.sfDescription.value);
    }
    if (d.uom.present) {
      map['uom'] = Variable<String, StringType>(d.uom.value);
    }
    if (d.uomRef.present) {
      map['uom_ref'] = Variable<String, StringType>(d.uomRef.value);
    }
    if (d.costPrice.present) {
      map['cost_price'] = Variable<String, StringType>(d.costPrice.value);
    }
    if (d.listPrice.present) {
      map['list_price'] = Variable<String, StringType>(d.listPrice.value);
    }
    if (d.reserved1.present) {
      map['reserved1'] = Variable<String, StringType>(d.reserved1.value);
    }
    if (d.reserved2.present) {
      map['reserved2'] = Variable<String, StringType>(d.reserved2.value);
    }
    if (d.reserved3.present) {
      map['reserved3'] = Variable<String, StringType>(d.reserved3.value);
    }
    if (d.reserved4.present) {
      map['reserved4'] = Variable<String, StringType>(d.reserved4.value);
    }
    if (d.reserved5.present) {
      map['reserved5'] = Variable<String, StringType>(d.reserved5.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $SemiFinishedsTable createAlias(String alias) {
    return $SemiFinishedsTable(_db, alias);
  }
}

class SemiFinishedMapping extends DataClass
    implements Insertable<SemiFinishedMapping> {
  final int autoSemiFinishedMappingID;
  final String itemID;
  final String sfID;
  final String lastUpdated;
  final String row;

  SemiFinishedMapping(
      {@required this.autoSemiFinishedMappingID,
      this.itemID,
      this.sfID,
      this.lastUpdated,
      this.row});

  factory SemiFinishedMapping.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return SemiFinishedMapping(
      autoSemiFinishedMappingID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_semi_finished_mapping_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      sfID:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}sf_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory SemiFinishedMapping.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SemiFinishedMapping(
      autoSemiFinishedMappingID:
          serializer.fromJson<int>(json['autoSemiFinishedMappingID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      sfID: serializer.fromJson<String>(json['sfID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoSemiFinishedMappingID':
          serializer.toJson<int>(autoSemiFinishedMappingID),
      'itemID': serializer.toJson<String>(itemID),
      'sfID': serializer.toJson<String>(sfID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  SemiFinishedMappingsCompanion createCompanion(bool nullToAbsent) {
    return SemiFinishedMappingsCompanion(
      autoSemiFinishedMappingID:
          autoSemiFinishedMappingID == null && nullToAbsent
              ? const Value.absent()
              : Value(autoSemiFinishedMappingID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      sfID: sfID == null && nullToAbsent ? const Value.absent() : Value(sfID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  SemiFinishedMapping copyWith(
          {int autoSemiFinishedMappingID,
          String itemID,
          String sfID,
          String lastUpdated,
          String row}) =>
      SemiFinishedMapping(
        autoSemiFinishedMappingID:
            autoSemiFinishedMappingID ?? this.autoSemiFinishedMappingID,
        itemID: itemID ?? this.itemID,
        sfID: sfID ?? this.sfID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('SemiFinishedMapping(')
          ..write('autoSemiFinishedMappingID: $autoSemiFinishedMappingID, ')
          ..write('itemID: $itemID, ')
          ..write('sfID: $sfID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoSemiFinishedMappingID.hashCode,
      $mrjc(itemID.hashCode,
          $mrjc(sfID.hashCode, $mrjc(lastUpdated.hashCode, row.hashCode)))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SemiFinishedMapping &&
          other.autoSemiFinishedMappingID == this.autoSemiFinishedMappingID &&
          other.itemID == this.itemID &&
          other.sfID == this.sfID &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class SemiFinishedMappingsCompanion
    extends UpdateCompanion<SemiFinishedMapping> {
  final Value<int> autoSemiFinishedMappingID;
  final Value<String> itemID;
  final Value<String> sfID;
  final Value<String> lastUpdated;
  final Value<String> row;

  const SemiFinishedMappingsCompanion({
    this.autoSemiFinishedMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.sfID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  SemiFinishedMappingsCompanion.insert({
    this.autoSemiFinishedMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.sfID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  SemiFinishedMappingsCompanion copyWith(
      {Value<int> autoSemiFinishedMappingID,
      Value<String> itemID,
      Value<String> sfID,
      Value<String> lastUpdated,
      Value<String> row}) {
    return SemiFinishedMappingsCompanion(
      autoSemiFinishedMappingID:
          autoSemiFinishedMappingID ?? this.autoSemiFinishedMappingID,
      itemID: itemID ?? this.itemID,
      sfID: sfID ?? this.sfID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $SemiFinishedMappingsTable extends SemiFinishedMappings
    with TableInfo<$SemiFinishedMappingsTable, SemiFinishedMapping> {
  final GeneratedDatabase _db;
  final String _alias;

  $SemiFinishedMappingsTable(this._db, [this._alias]);

  final VerificationMeta _autoSemiFinishedMappingIDMeta =
      const VerificationMeta('autoSemiFinishedMappingID');
  GeneratedIntColumn _autoSemiFinishedMappingID;

  @override
  GeneratedIntColumn get autoSemiFinishedMappingID =>
      _autoSemiFinishedMappingID ??= _constructAutoSemiFinishedMappingID();

  GeneratedIntColumn _constructAutoSemiFinishedMappingID() {
    return GeneratedIntColumn(
        'auto_semi_finished_mapping_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn(
      'item_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sfIDMeta = const VerificationMeta('sfID');
  GeneratedTextColumn _sfID;

  @override
  GeneratedTextColumn get sfID => _sfID ??= _constructSfID();

  GeneratedTextColumn _constructSfID() {
    return GeneratedTextColumn(
      'sf_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [autoSemiFinishedMappingID, itemID, sfID, lastUpdated, row];

  @override
  $SemiFinishedMappingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'semi_finished_mappings';
  @override
  final String actualTableName = 'semi_finished_mappings';

  @override
  VerificationContext validateIntegrity(SemiFinishedMappingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoSemiFinishedMappingID.present) {
      context.handle(
          _autoSemiFinishedMappingIDMeta,
          autoSemiFinishedMappingID.isAcceptableValue(
              d.autoSemiFinishedMappingID.value,
              _autoSemiFinishedMappingIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    }
    if (d.sfID.present) {
      context.handle(
          _sfIDMeta, sfID.isAcceptableValue(d.sfID.value, _sfIDMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoSemiFinishedMappingID};

  @override
  SemiFinishedMapping map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SemiFinishedMapping.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(SemiFinishedMappingsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoSemiFinishedMappingID.present) {
      map['auto_semi_finished_mapping_i_d'] =
          Variable<int, IntType>(d.autoSemiFinishedMappingID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.sfID.present) {
      map['sf_i_d'] = Variable<String, StringType>(d.sfID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $SemiFinishedMappingsTable createAlias(String alias) {
    return $SemiFinishedMappingsTable(_db, alias);
  }
}

class Material extends DataClass implements Insertable<Material> {
  final int autoMaterialID;
  final String materialID;
  final String materialERPKey;
  final String materialName;
  final String materialCode;
  final String isAlloy;
  final String materialPurity;
  final String materialDescription1;
  final String materialDescription2;
  final String uom;
  final String uomRef;
  final String costPrice;
  final String listPrice;
  final String rateID;
  final String reserved1;
  final String reserved2;
  final String reserved3;
  final String reserved4;
  final String reserved5;
  final String lastUpdated;
  final String row;

  Material(
      {@required this.autoMaterialID,
      this.materialID,
      this.materialERPKey,
      this.materialName,
      this.materialCode,
      this.isAlloy,
      this.materialPurity,
      this.materialDescription1,
      this.materialDescription2,
      this.uom,
      this.uomRef,
      this.costPrice,
      this.listPrice,
      this.rateID,
      this.reserved1,
      this.reserved2,
      this.reserved3,
      this.reserved4,
      this.reserved5,
      this.lastUpdated,
      this.row});

  factory Material.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Material(
      autoMaterialID: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}auto_material_i_d']),
      materialID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}material_i_d']),
      materialERPKey: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}material_e_r_p_key']),
      materialName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}material_name']),
      materialCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}material_code']),
      isAlloy: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_alloy']),
      materialPurity: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}material_purity']),
      materialDescription1: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}material_description1']),
      materialDescription2: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}material_description2']),
      uom: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom']),
      uomRef:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom_ref']),
      costPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cost_price']),
      listPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}list_price']),
      rateID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}rate_i_d']),
      reserved1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved1']),
      reserved2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved2']),
      reserved3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved3']),
      reserved4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved4']),
      reserved5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved5']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory Material.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Material(
      autoMaterialID: serializer.fromJson<int>(json['autoMaterialID']),
      materialID: serializer.fromJson<String>(json['materialID']),
      materialERPKey: serializer.fromJson<String>(json['materialERPKey']),
      materialName: serializer.fromJson<String>(json['materialName']),
      materialCode: serializer.fromJson<String>(json['materialCode']),
      isAlloy: serializer.fromJson<String>(json['isAlloy']),
      materialPurity: serializer.fromJson<String>(json['materialPurity']),
      materialDescription1:
          serializer.fromJson<String>(json['materialDescription1']),
      materialDescription2:
          serializer.fromJson<String>(json['materialDescription2']),
      uom: serializer.fromJson<String>(json['uom']),
      uomRef: serializer.fromJson<String>(json['uomRef']),
      costPrice: serializer.fromJson<String>(json['costPrice']),
      listPrice: serializer.fromJson<String>(json['listPrice']),
      rateID: serializer.fromJson<String>(json['rateID']),
      reserved1: serializer.fromJson<String>(json['reserved1']),
      reserved2: serializer.fromJson<String>(json['reserved2']),
      reserved3: serializer.fromJson<String>(json['reserved3']),
      reserved4: serializer.fromJson<String>(json['reserved4']),
      reserved5: serializer.fromJson<String>(json['reserved5']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoMaterialID': serializer.toJson<int>(autoMaterialID),
      'materialID': serializer.toJson<String>(materialID),
      'materialERPKey': serializer.toJson<String>(materialERPKey),
      'materialName': serializer.toJson<String>(materialName),
      'materialCode': serializer.toJson<String>(materialCode),
      'isAlloy': serializer.toJson<String>(isAlloy),
      'materialPurity': serializer.toJson<String>(materialPurity),
      'materialDescription1': serializer.toJson<String>(materialDescription1),
      'materialDescription2': serializer.toJson<String>(materialDescription2),
      'uom': serializer.toJson<String>(uom),
      'uomRef': serializer.toJson<String>(uomRef),
      'costPrice': serializer.toJson<String>(costPrice),
      'listPrice': serializer.toJson<String>(listPrice),
      'rateID': serializer.toJson<String>(rateID),
      'reserved1': serializer.toJson<String>(reserved1),
      'reserved2': serializer.toJson<String>(reserved2),
      'reserved3': serializer.toJson<String>(reserved3),
      'reserved4': serializer.toJson<String>(reserved4),
      'reserved5': serializer.toJson<String>(reserved5),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  MaterialsCompanion createCompanion(bool nullToAbsent) {
    return MaterialsCompanion(
      autoMaterialID: autoMaterialID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoMaterialID),
      materialID: materialID == null && nullToAbsent
          ? const Value.absent()
          : Value(materialID),
      materialERPKey: materialERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(materialERPKey),
      materialName: materialName == null && nullToAbsent
          ? const Value.absent()
          : Value(materialName),
      materialCode: materialCode == null && nullToAbsent
          ? const Value.absent()
          : Value(materialCode),
      isAlloy: isAlloy == null && nullToAbsent
          ? const Value.absent()
          : Value(isAlloy),
      materialPurity: materialPurity == null && nullToAbsent
          ? const Value.absent()
          : Value(materialPurity),
      materialDescription1: materialDescription1 == null && nullToAbsent
          ? const Value.absent()
          : Value(materialDescription1),
      materialDescription2: materialDescription2 == null && nullToAbsent
          ? const Value.absent()
          : Value(materialDescription2),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      uomRef:
          uomRef == null && nullToAbsent ? const Value.absent() : Value(uomRef),
      costPrice: costPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(costPrice),
      listPrice: listPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(listPrice),
      rateID:
          rateID == null && nullToAbsent ? const Value.absent() : Value(rateID),
      reserved1: reserved1 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved1),
      reserved2: reserved2 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved2),
      reserved3: reserved3 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved3),
      reserved4: reserved4 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved4),
      reserved5: reserved5 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved5),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  Material copyWith(
          {int autoMaterialID,
          String materialID,
          String materialERPKey,
          String materialName,
          String materialCode,
          String isAlloy,
          String materialPurity,
          String materialDescription1,
          String materialDescription2,
          String uom,
          String uomRef,
          String costPrice,
          String listPrice,
          String rateID,
          String reserved1,
          String reserved2,
          String reserved3,
          String reserved4,
          String reserved5,
          String lastUpdated,
          String row}) =>
      Material(
        autoMaterialID: autoMaterialID ?? this.autoMaterialID,
        materialID: materialID ?? this.materialID,
        materialERPKey: materialERPKey ?? this.materialERPKey,
        materialName: materialName ?? this.materialName,
        materialCode: materialCode ?? this.materialCode,
        isAlloy: isAlloy ?? this.isAlloy,
        materialPurity: materialPurity ?? this.materialPurity,
        materialDescription1: materialDescription1 ?? this.materialDescription1,
        materialDescription2: materialDescription2 ?? this.materialDescription2,
        uom: uom ?? this.uom,
        uomRef: uomRef ?? this.uomRef,
        costPrice: costPrice ?? this.costPrice,
        listPrice: listPrice ?? this.listPrice,
        rateID: rateID ?? this.rateID,
        reserved1: reserved1 ?? this.reserved1,
        reserved2: reserved2 ?? this.reserved2,
        reserved3: reserved3 ?? this.reserved3,
        reserved4: reserved4 ?? this.reserved4,
        reserved5: reserved5 ?? this.reserved5,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('Material(')
          ..write('autoMaterialID: $autoMaterialID, ')
          ..write('materialID: $materialID, ')
          ..write('materialERPKey: $materialERPKey, ')
          ..write('materialName: $materialName, ')
          ..write('materialCode: $materialCode, ')
          ..write('isAlloy: $isAlloy, ')
          ..write('materialPurity: $materialPurity, ')
          ..write('materialDescription1: $materialDescription1, ')
          ..write('materialDescription2: $materialDescription2, ')
          ..write('uom: $uom, ')
          ..write('uomRef: $uomRef, ')
          ..write('costPrice: $costPrice, ')
          ..write('listPrice: $listPrice, ')
          ..write('rateID: $rateID, ')
          ..write('reserved1: $reserved1, ')
          ..write('reserved2: $reserved2, ')
          ..write('reserved3: $reserved3, ')
          ..write('reserved4: $reserved4, ')
          ..write('reserved5: $reserved5, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoMaterialID.hashCode,
      $mrjc(
          materialID.hashCode,
          $mrjc(
              materialERPKey.hashCode,
              $mrjc(
                  materialName.hashCode,
                  $mrjc(
                      materialCode.hashCode,
                      $mrjc(
                          isAlloy.hashCode,
                          $mrjc(
                              materialPurity.hashCode,
                              $mrjc(
                                  materialDescription1.hashCode,
                                  $mrjc(
                                      materialDescription2.hashCode,
                                      $mrjc(
                                          uom.hashCode,
                                          $mrjc(
                                              uomRef.hashCode,
                                              $mrjc(
                                                  costPrice.hashCode,
                                                  $mrjc(
                                                      listPrice.hashCode,
                                                      $mrjc(
                                                          rateID.hashCode,
                                                          $mrjc(
                                                              reserved1
                                                                  .hashCode,
                                                              $mrjc(
                                                                  reserved2
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      reserved3
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          reserved4
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              reserved5.hashCode,
                                                                              $mrjc(lastUpdated.hashCode, row.hashCode)))))))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Material &&
          other.autoMaterialID == this.autoMaterialID &&
          other.materialID == this.materialID &&
          other.materialERPKey == this.materialERPKey &&
          other.materialName == this.materialName &&
          other.materialCode == this.materialCode &&
          other.isAlloy == this.isAlloy &&
          other.materialPurity == this.materialPurity &&
          other.materialDescription1 == this.materialDescription1 &&
          other.materialDescription2 == this.materialDescription2 &&
          other.uom == this.uom &&
          other.uomRef == this.uomRef &&
          other.costPrice == this.costPrice &&
          other.listPrice == this.listPrice &&
          other.rateID == this.rateID &&
          other.reserved1 == this.reserved1 &&
          other.reserved2 == this.reserved2 &&
          other.reserved3 == this.reserved3 &&
          other.reserved4 == this.reserved4 &&
          other.reserved5 == this.reserved5 &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class MaterialsCompanion extends UpdateCompanion<Material> {
  final Value<int> autoMaterialID;
  final Value<String> materialID;
  final Value<String> materialERPKey;
  final Value<String> materialName;
  final Value<String> materialCode;
  final Value<String> isAlloy;
  final Value<String> materialPurity;
  final Value<String> materialDescription1;
  final Value<String> materialDescription2;
  final Value<String> uom;
  final Value<String> uomRef;
  final Value<String> costPrice;
  final Value<String> listPrice;
  final Value<String> rateID;
  final Value<String> reserved1;
  final Value<String> reserved2;
  final Value<String> reserved3;
  final Value<String> reserved4;
  final Value<String> reserved5;
  final Value<String> lastUpdated;
  final Value<String> row;

  const MaterialsCompanion({
    this.autoMaterialID = const Value.absent(),
    this.materialID = const Value.absent(),
    this.materialERPKey = const Value.absent(),
    this.materialName = const Value.absent(),
    this.materialCode = const Value.absent(),
    this.isAlloy = const Value.absent(),
    this.materialPurity = const Value.absent(),
    this.materialDescription1 = const Value.absent(),
    this.materialDescription2 = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.rateID = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MaterialsCompanion.insert({
    this.autoMaterialID = const Value.absent(),
    this.materialID = const Value.absent(),
    this.materialERPKey = const Value.absent(),
    this.materialName = const Value.absent(),
    this.materialCode = const Value.absent(),
    this.isAlloy = const Value.absent(),
    this.materialPurity = const Value.absent(),
    this.materialDescription1 = const Value.absent(),
    this.materialDescription2 = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.rateID = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MaterialsCompanion copyWith(
      {Value<int> autoMaterialID,
      Value<String> materialID,
      Value<String> materialERPKey,
      Value<String> materialName,
      Value<String> materialCode,
      Value<String> isAlloy,
      Value<String> materialPurity,
      Value<String> materialDescription1,
      Value<String> materialDescription2,
      Value<String> uom,
      Value<String> uomRef,
      Value<String> costPrice,
      Value<String> listPrice,
      Value<String> rateID,
      Value<String> reserved1,
      Value<String> reserved2,
      Value<String> reserved3,
      Value<String> reserved4,
      Value<String> reserved5,
      Value<String> lastUpdated,
      Value<String> row}) {
    return MaterialsCompanion(
      autoMaterialID: autoMaterialID ?? this.autoMaterialID,
      materialID: materialID ?? this.materialID,
      materialERPKey: materialERPKey ?? this.materialERPKey,
      materialName: materialName ?? this.materialName,
      materialCode: materialCode ?? this.materialCode,
      isAlloy: isAlloy ?? this.isAlloy,
      materialPurity: materialPurity ?? this.materialPurity,
      materialDescription1: materialDescription1 ?? this.materialDescription1,
      materialDescription2: materialDescription2 ?? this.materialDescription2,
      uom: uom ?? this.uom,
      uomRef: uomRef ?? this.uomRef,
      costPrice: costPrice ?? this.costPrice,
      listPrice: listPrice ?? this.listPrice,
      rateID: rateID ?? this.rateID,
      reserved1: reserved1 ?? this.reserved1,
      reserved2: reserved2 ?? this.reserved2,
      reserved3: reserved3 ?? this.reserved3,
      reserved4: reserved4 ?? this.reserved4,
      reserved5: reserved5 ?? this.reserved5,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $MaterialsTable extends Materials
    with TableInfo<$MaterialsTable, Material> {
  final GeneratedDatabase _db;
  final String _alias;

  $MaterialsTable(this._db, [this._alias]);

  final VerificationMeta _autoMaterialIDMeta =
      const VerificationMeta('autoMaterialID');
  GeneratedIntColumn _autoMaterialID;

  @override
  GeneratedIntColumn get autoMaterialID =>
      _autoMaterialID ??= _constructAutoMaterialID();

  GeneratedIntColumn _constructAutoMaterialID() {
    return GeneratedIntColumn('auto_material_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _materialIDMeta = const VerificationMeta('materialID');
  GeneratedTextColumn _materialID;

  @override
  GeneratedTextColumn get materialID => _materialID ??= _constructMaterialID();

  GeneratedTextColumn _constructMaterialID() {
    return GeneratedTextColumn(
      'material_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _materialERPKeyMeta =
      const VerificationMeta('materialERPKey');
  GeneratedTextColumn _materialERPKey;

  @override
  GeneratedTextColumn get materialERPKey =>
      _materialERPKey ??= _constructMaterialERPKey();

  GeneratedTextColumn _constructMaterialERPKey() {
    return GeneratedTextColumn(
      'material_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _materialNameMeta =
      const VerificationMeta('materialName');
  GeneratedTextColumn _materialName;

  @override
  GeneratedTextColumn get materialName =>
      _materialName ??= _constructMaterialName();

  GeneratedTextColumn _constructMaterialName() {
    return GeneratedTextColumn(
      'material_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _materialCodeMeta =
      const VerificationMeta('materialCode');
  GeneratedTextColumn _materialCode;

  @override
  GeneratedTextColumn get materialCode =>
      _materialCode ??= _constructMaterialCode();

  GeneratedTextColumn _constructMaterialCode() {
    return GeneratedTextColumn(
      'material_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isAlloyMeta = const VerificationMeta('isAlloy');
  GeneratedTextColumn _isAlloy;

  @override
  GeneratedTextColumn get isAlloy => _isAlloy ??= _constructIsAlloy();

  GeneratedTextColumn _constructIsAlloy() {
    return GeneratedTextColumn(
      'is_alloy',
      $tableName,
      true,
    );
  }

  final VerificationMeta _materialPurityMeta =
      const VerificationMeta('materialPurity');
  GeneratedTextColumn _materialPurity;

  @override
  GeneratedTextColumn get materialPurity =>
      _materialPurity ??= _constructMaterialPurity();

  GeneratedTextColumn _constructMaterialPurity() {
    return GeneratedTextColumn(
      'material_purity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _materialDescription1Meta =
      const VerificationMeta('materialDescription1');
  GeneratedTextColumn _materialDescription1;

  @override
  GeneratedTextColumn get materialDescription1 =>
      _materialDescription1 ??= _constructMaterialDescription1();

  GeneratedTextColumn _constructMaterialDescription1() {
    return GeneratedTextColumn(
      'material_description1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _materialDescription2Meta =
      const VerificationMeta('materialDescription2');
  GeneratedTextColumn _materialDescription2;

  @override
  GeneratedTextColumn get materialDescription2 =>
      _materialDescription2 ??= _constructMaterialDescription2();

  GeneratedTextColumn _constructMaterialDescription2() {
    return GeneratedTextColumn(
      'material_description2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomMeta = const VerificationMeta('uom');
  GeneratedTextColumn _uom;

  @override
  GeneratedTextColumn get uom => _uom ??= _constructUom();

  GeneratedTextColumn _constructUom() {
    return GeneratedTextColumn(
      'uom',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomRefMeta = const VerificationMeta('uomRef');
  GeneratedTextColumn _uomRef;

  @override
  GeneratedTextColumn get uomRef => _uomRef ??= _constructUomRef();

  GeneratedTextColumn _constructUomRef() {
    return GeneratedTextColumn(
      'uom_ref',
      $tableName,
      true,
    );
  }

  final VerificationMeta _costPriceMeta = const VerificationMeta('costPrice');
  GeneratedTextColumn _costPrice;

  @override
  GeneratedTextColumn get costPrice => _costPrice ??= _constructCostPrice();

  GeneratedTextColumn _constructCostPrice() {
    return GeneratedTextColumn(
      'cost_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _listPriceMeta = const VerificationMeta('listPrice');
  GeneratedTextColumn _listPrice;

  @override
  GeneratedTextColumn get listPrice => _listPrice ??= _constructListPrice();

  GeneratedTextColumn _constructListPrice() {
    return GeneratedTextColumn(
      'list_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rateIDMeta = const VerificationMeta('rateID');
  GeneratedTextColumn _rateID;

  @override
  GeneratedTextColumn get rateID => _rateID ??= _constructRateID();

  GeneratedTextColumn _constructRateID() {
    return GeneratedTextColumn(
      'rate_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved1Meta = const VerificationMeta('reserved1');
  GeneratedTextColumn _reserved1;

  @override
  GeneratedTextColumn get reserved1 => _reserved1 ??= _constructReserved1();

  GeneratedTextColumn _constructReserved1() {
    return GeneratedTextColumn(
      'reserved1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved2Meta = const VerificationMeta('reserved2');
  GeneratedTextColumn _reserved2;

  @override
  GeneratedTextColumn get reserved2 => _reserved2 ??= _constructReserved2();

  GeneratedTextColumn _constructReserved2() {
    return GeneratedTextColumn(
      'reserved2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved3Meta = const VerificationMeta('reserved3');
  GeneratedTextColumn _reserved3;

  @override
  GeneratedTextColumn get reserved3 => _reserved3 ??= _constructReserved3();

  GeneratedTextColumn _constructReserved3() {
    return GeneratedTextColumn(
      'reserved3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved4Meta = const VerificationMeta('reserved4');
  GeneratedTextColumn _reserved4;

  @override
  GeneratedTextColumn get reserved4 => _reserved4 ??= _constructReserved4();

  GeneratedTextColumn _constructReserved4() {
    return GeneratedTextColumn(
      'reserved4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved5Meta = const VerificationMeta('reserved5');
  GeneratedTextColumn _reserved5;

  @override
  GeneratedTextColumn get reserved5 => _reserved5 ??= _constructReserved5();

  GeneratedTextColumn _constructReserved5() {
    return GeneratedTextColumn(
      'reserved5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoMaterialID,
        materialID,
        materialERPKey,
        materialName,
        materialCode,
        isAlloy,
        materialPurity,
        materialDescription1,
        materialDescription2,
        uom,
        uomRef,
        costPrice,
        listPrice,
        rateID,
        reserved1,
        reserved2,
        reserved3,
        reserved4,
        reserved5,
        lastUpdated,
        row
      ];

  @override
  $MaterialsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'materials';
  @override
  final String actualTableName = 'materials';

  @override
  VerificationContext validateIntegrity(MaterialsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoMaterialID.present) {
      context.handle(
          _autoMaterialIDMeta,
          autoMaterialID.isAcceptableValue(
              d.autoMaterialID.value, _autoMaterialIDMeta));
    }
    if (d.materialID.present) {
      context.handle(_materialIDMeta,
          materialID.isAcceptableValue(d.materialID.value, _materialIDMeta));
    }
    if (d.materialERPKey.present) {
      context.handle(
          _materialERPKeyMeta,
          materialERPKey.isAcceptableValue(
              d.materialERPKey.value, _materialERPKeyMeta));
    }
    if (d.materialName.present) {
      context.handle(
          _materialNameMeta,
          materialName.isAcceptableValue(
              d.materialName.value, _materialNameMeta));
    }
    if (d.materialCode.present) {
      context.handle(
          _materialCodeMeta,
          materialCode.isAcceptableValue(
              d.materialCode.value, _materialCodeMeta));
    }
    if (d.isAlloy.present) {
      context.handle(_isAlloyMeta,
          isAlloy.isAcceptableValue(d.isAlloy.value, _isAlloyMeta));
    }
    if (d.materialPurity.present) {
      context.handle(
          _materialPurityMeta,
          materialPurity.isAcceptableValue(
              d.materialPurity.value, _materialPurityMeta));
    }
    if (d.materialDescription1.present) {
      context.handle(
          _materialDescription1Meta,
          materialDescription1.isAcceptableValue(
              d.materialDescription1.value, _materialDescription1Meta));
    }
    if (d.materialDescription2.present) {
      context.handle(
          _materialDescription2Meta,
          materialDescription2.isAcceptableValue(
              d.materialDescription2.value, _materialDescription2Meta));
    }
    if (d.uom.present) {
      context.handle(_uomMeta, uom.isAcceptableValue(d.uom.value, _uomMeta));
    }
    if (d.uomRef.present) {
      context.handle(
          _uomRefMeta, uomRef.isAcceptableValue(d.uomRef.value, _uomRefMeta));
    }
    if (d.costPrice.present) {
      context.handle(_costPriceMeta,
          costPrice.isAcceptableValue(d.costPrice.value, _costPriceMeta));
    }
    if (d.listPrice.present) {
      context.handle(_listPriceMeta,
          listPrice.isAcceptableValue(d.listPrice.value, _listPriceMeta));
    }
    if (d.rateID.present) {
      context.handle(
          _rateIDMeta, rateID.isAcceptableValue(d.rateID.value, _rateIDMeta));
    }
    if (d.reserved1.present) {
      context.handle(_reserved1Meta,
          reserved1.isAcceptableValue(d.reserved1.value, _reserved1Meta));
    }
    if (d.reserved2.present) {
      context.handle(_reserved2Meta,
          reserved2.isAcceptableValue(d.reserved2.value, _reserved2Meta));
    }
    if (d.reserved3.present) {
      context.handle(_reserved3Meta,
          reserved3.isAcceptableValue(d.reserved3.value, _reserved3Meta));
    }
    if (d.reserved4.present) {
      context.handle(_reserved4Meta,
          reserved4.isAcceptableValue(d.reserved4.value, _reserved4Meta));
    }
    if (d.reserved5.present) {
      context.handle(_reserved5Meta,
          reserved5.isAcceptableValue(d.reserved5.value, _reserved5Meta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoMaterialID};

  @override
  Material map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Material.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MaterialsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoMaterialID.present) {
      map['auto_material_i_d'] = Variable<int, IntType>(d.autoMaterialID.value);
    }
    if (d.materialID.present) {
      map['material_i_d'] = Variable<String, StringType>(d.materialID.value);
    }
    if (d.materialERPKey.present) {
      map['material_e_r_p_key'] =
          Variable<String, StringType>(d.materialERPKey.value);
    }
    if (d.materialName.present) {
      map['material_name'] = Variable<String, StringType>(d.materialName.value);
    }
    if (d.materialCode.present) {
      map['material_code'] = Variable<String, StringType>(d.materialCode.value);
    }
    if (d.isAlloy.present) {
      map['is_alloy'] = Variable<String, StringType>(d.isAlloy.value);
    }
    if (d.materialPurity.present) {
      map['material_purity'] =
          Variable<String, StringType>(d.materialPurity.value);
    }
    if (d.materialDescription1.present) {
      map['material_description1'] =
          Variable<String, StringType>(d.materialDescription1.value);
    }
    if (d.materialDescription2.present) {
      map['material_description2'] =
          Variable<String, StringType>(d.materialDescription2.value);
    }
    if (d.uom.present) {
      map['uom'] = Variable<String, StringType>(d.uom.value);
    }
    if (d.uomRef.present) {
      map['uom_ref'] = Variable<String, StringType>(d.uomRef.value);
    }
    if (d.costPrice.present) {
      map['cost_price'] = Variable<String, StringType>(d.costPrice.value);
    }
    if (d.listPrice.present) {
      map['list_price'] = Variable<String, StringType>(d.listPrice.value);
    }
    if (d.rateID.present) {
      map['rate_i_d'] = Variable<String, StringType>(d.rateID.value);
    }
    if (d.reserved1.present) {
      map['reserved1'] = Variable<String, StringType>(d.reserved1.value);
    }
    if (d.reserved2.present) {
      map['reserved2'] = Variable<String, StringType>(d.reserved2.value);
    }
    if (d.reserved3.present) {
      map['reserved3'] = Variable<String, StringType>(d.reserved3.value);
    }
    if (d.reserved4.present) {
      map['reserved4'] = Variable<String, StringType>(d.reserved4.value);
    }
    if (d.reserved5.present) {
      map['reserved5'] = Variable<String, StringType>(d.reserved5.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $MaterialsTable createAlias(String alias) {
    return $MaterialsTable(_db, alias);
  }
}

class MaterialMapping extends DataClass implements Insertable<MaterialMapping> {
  final int autoMaterialMappingID;
  final String itemID;
  final String materialID;
  final String lastUpdated;
  final String row;

  MaterialMapping(
      {@required this.autoMaterialMappingID,
      this.itemID,
      this.materialID,
      this.lastUpdated,
      this.row});

  factory MaterialMapping.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MaterialMapping(
      autoMaterialMappingID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_material_mapping_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      materialID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}material_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory MaterialMapping.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MaterialMapping(
      autoMaterialMappingID:
          serializer.fromJson<int>(json['autoMaterialMappingID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      materialID: serializer.fromJson<String>(json['materialID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoMaterialMappingID': serializer.toJson<int>(autoMaterialMappingID),
      'itemID': serializer.toJson<String>(itemID),
      'materialID': serializer.toJson<String>(materialID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  MaterialMappingsCompanion createCompanion(bool nullToAbsent) {
    return MaterialMappingsCompanion(
      autoMaterialMappingID: autoMaterialMappingID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoMaterialMappingID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      materialID: materialID == null && nullToAbsent
          ? const Value.absent()
          : Value(materialID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  MaterialMapping copyWith(
          {int autoMaterialMappingID,
          String itemID,
          String materialID,
          String lastUpdated,
          String row}) =>
      MaterialMapping(
        autoMaterialMappingID:
            autoMaterialMappingID ?? this.autoMaterialMappingID,
        itemID: itemID ?? this.itemID,
        materialID: materialID ?? this.materialID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('MaterialMapping(')
          ..write('autoMaterialMappingID: $autoMaterialMappingID, ')
          ..write('itemID: $itemID, ')
          ..write('materialID: $materialID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoMaterialMappingID.hashCode,
      $mrjc(
          itemID.hashCode,
          $mrjc(materialID.hashCode,
              $mrjc(lastUpdated.hashCode, row.hashCode)))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MaterialMapping &&
          other.autoMaterialMappingID == this.autoMaterialMappingID &&
          other.itemID == this.itemID &&
          other.materialID == this.materialID &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class MaterialMappingsCompanion extends UpdateCompanion<MaterialMapping> {
  final Value<int> autoMaterialMappingID;
  final Value<String> itemID;
  final Value<String> materialID;
  final Value<String> lastUpdated;
  final Value<String> row;

  const MaterialMappingsCompanion({
    this.autoMaterialMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.materialID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MaterialMappingsCompanion.insert({
    this.autoMaterialMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.materialID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MaterialMappingsCompanion copyWith(
      {Value<int> autoMaterialMappingID,
      Value<String> itemID,
      Value<String> materialID,
      Value<String> lastUpdated,
      Value<String> row}) {
    return MaterialMappingsCompanion(
      autoMaterialMappingID:
          autoMaterialMappingID ?? this.autoMaterialMappingID,
      itemID: itemID ?? this.itemID,
      materialID: materialID ?? this.materialID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $MaterialMappingsTable extends MaterialMappings
    with TableInfo<$MaterialMappingsTable, MaterialMapping> {
  final GeneratedDatabase _db;
  final String _alias;

  $MaterialMappingsTable(this._db, [this._alias]);

  final VerificationMeta _autoMaterialMappingIDMeta =
      const VerificationMeta('autoMaterialMappingID');
  GeneratedIntColumn _autoMaterialMappingID;

  @override
  GeneratedIntColumn get autoMaterialMappingID =>
      _autoMaterialMappingID ??= _constructAutoMaterialMappingID();

  GeneratedIntColumn _constructAutoMaterialMappingID() {
    return GeneratedIntColumn('auto_material_mapping_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn(
      'item_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _materialIDMeta = const VerificationMeta('materialID');
  GeneratedTextColumn _materialID;

  @override
  GeneratedTextColumn get materialID => _materialID ??= _constructMaterialID();

  GeneratedTextColumn _constructMaterialID() {
    return GeneratedTextColumn(
      'material_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [autoMaterialMappingID, itemID, materialID, lastUpdated, row];

  @override
  $MaterialMappingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'material_mappings';
  @override
  final String actualTableName = 'material_mappings';

  @override
  VerificationContext validateIntegrity(MaterialMappingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoMaterialMappingID.present) {
      context.handle(
          _autoMaterialMappingIDMeta,
          autoMaterialMappingID.isAcceptableValue(
              d.autoMaterialMappingID.value, _autoMaterialMappingIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    }
    if (d.materialID.present) {
      context.handle(_materialIDMeta,
          materialID.isAcceptableValue(d.materialID.value, _materialIDMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoMaterialMappingID};

  @override
  MaterialMapping map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MaterialMapping.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MaterialMappingsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoMaterialMappingID.present) {
      map['auto_material_mapping_i_d'] =
          Variable<int, IntType>(d.autoMaterialMappingID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.materialID.present) {
      map['material_i_d'] = Variable<String, StringType>(d.materialID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $MaterialMappingsTable createAlias(String alias) {
    return $MaterialMappingsTable(_db, alias);
  }
}

class Labor extends DataClass implements Insertable<Labor> {
  final int autoLaborID;
  final String laborID;
  final String laborERPKey;
  final String processName;
  final String processCode;
  final String processDescription;
  final String uom;
  final String uomRef;
  final String costPrice;
  final String listPrice;
  final String reserved1;
  final String reserved2;
  final String reserved3;
  final String reserved4;
  final String reserved5;
  final String lastUpdated;
  final String row;

  Labor(
      {@required this.autoLaborID,
      this.laborID,
      this.laborERPKey,
      this.processName,
      this.processCode,
      this.processDescription,
      this.uom,
      this.uomRef,
      this.costPrice,
      this.listPrice,
      this.reserved1,
      this.reserved2,
      this.reserved3,
      this.reserved4,
      this.reserved5,
      this.lastUpdated,
      this.row});

  factory Labor.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Labor(
      autoLaborID: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}auto_labor_i_d']),
      laborID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}labor_i_d']),
      laborERPKey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}labor_e_r_p_key']),
      processName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}process_name']),
      processCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}process_code']),
      processDescription: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}process_description']),
      uom: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom']),
      uomRef:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom_ref']),
      costPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cost_price']),
      listPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}list_price']),
      reserved1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved1']),
      reserved2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved2']),
      reserved3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved3']),
      reserved4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved4']),
      reserved5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved5']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory Labor.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Labor(
      autoLaborID: serializer.fromJson<int>(json['autoLaborID']),
      laborID: serializer.fromJson<String>(json['laborID']),
      laborERPKey: serializer.fromJson<String>(json['laborERPKey']),
      processName: serializer.fromJson<String>(json['processName']),
      processCode: serializer.fromJson<String>(json['processCode']),
      processDescription:
          serializer.fromJson<String>(json['processDescription']),
      uom: serializer.fromJson<String>(json['uom']),
      uomRef: serializer.fromJson<String>(json['uomRef']),
      costPrice: serializer.fromJson<String>(json['costPrice']),
      listPrice: serializer.fromJson<String>(json['listPrice']),
      reserved1: serializer.fromJson<String>(json['reserved1']),
      reserved2: serializer.fromJson<String>(json['reserved2']),
      reserved3: serializer.fromJson<String>(json['reserved3']),
      reserved4: serializer.fromJson<String>(json['reserved4']),
      reserved5: serializer.fromJson<String>(json['reserved5']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoLaborID': serializer.toJson<int>(autoLaborID),
      'laborID': serializer.toJson<String>(laborID),
      'laborERPKey': serializer.toJson<String>(laborERPKey),
      'processName': serializer.toJson<String>(processName),
      'processCode': serializer.toJson<String>(processCode),
      'processDescription': serializer.toJson<String>(processDescription),
      'uom': serializer.toJson<String>(uom),
      'uomRef': serializer.toJson<String>(uomRef),
      'costPrice': serializer.toJson<String>(costPrice),
      'listPrice': serializer.toJson<String>(listPrice),
      'reserved1': serializer.toJson<String>(reserved1),
      'reserved2': serializer.toJson<String>(reserved2),
      'reserved3': serializer.toJson<String>(reserved3),
      'reserved4': serializer.toJson<String>(reserved4),
      'reserved5': serializer.toJson<String>(reserved5),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  LaborsCompanion createCompanion(bool nullToAbsent) {
    return LaborsCompanion(
      autoLaborID: autoLaborID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoLaborID),
      laborID: laborID == null && nullToAbsent
          ? const Value.absent()
          : Value(laborID),
      laborERPKey: laborERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(laborERPKey),
      processName: processName == null && nullToAbsent
          ? const Value.absent()
          : Value(processName),
      processCode: processCode == null && nullToAbsent
          ? const Value.absent()
          : Value(processCode),
      processDescription: processDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(processDescription),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      uomRef:
          uomRef == null && nullToAbsent ? const Value.absent() : Value(uomRef),
      costPrice: costPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(costPrice),
      listPrice: listPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(listPrice),
      reserved1: reserved1 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved1),
      reserved2: reserved2 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved2),
      reserved3: reserved3 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved3),
      reserved4: reserved4 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved4),
      reserved5: reserved5 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved5),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  Labor copyWith(
          {int autoLaborID,
          String laborID,
          String laborERPKey,
          String processName,
          String processCode,
          String processDescription,
          String uom,
          String uomRef,
          String costPrice,
          String listPrice,
          String reserved1,
          String reserved2,
          String reserved3,
          String reserved4,
          String reserved5,
          String lastUpdated,
          String row}) =>
      Labor(
        autoLaborID: autoLaborID ?? this.autoLaborID,
        laborID: laborID ?? this.laborID,
        laborERPKey: laborERPKey ?? this.laborERPKey,
        processName: processName ?? this.processName,
        processCode: processCode ?? this.processCode,
        processDescription: processDescription ?? this.processDescription,
        uom: uom ?? this.uom,
        uomRef: uomRef ?? this.uomRef,
        costPrice: costPrice ?? this.costPrice,
        listPrice: listPrice ?? this.listPrice,
        reserved1: reserved1 ?? this.reserved1,
        reserved2: reserved2 ?? this.reserved2,
        reserved3: reserved3 ?? this.reserved3,
        reserved4: reserved4 ?? this.reserved4,
        reserved5: reserved5 ?? this.reserved5,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('Labor(')
          ..write('autoLaborID: $autoLaborID, ')
          ..write('laborID: $laborID, ')
          ..write('laborERPKey: $laborERPKey, ')
          ..write('processName: $processName, ')
          ..write('processCode: $processCode, ')
          ..write('processDescription: $processDescription, ')
          ..write('uom: $uom, ')
          ..write('uomRef: $uomRef, ')
          ..write('costPrice: $costPrice, ')
          ..write('listPrice: $listPrice, ')
          ..write('reserved1: $reserved1, ')
          ..write('reserved2: $reserved2, ')
          ..write('reserved3: $reserved3, ')
          ..write('reserved4: $reserved4, ')
          ..write('reserved5: $reserved5, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoLaborID.hashCode,
      $mrjc(
          laborID.hashCode,
          $mrjc(
              laborERPKey.hashCode,
              $mrjc(
                  processName.hashCode,
                  $mrjc(
                      processCode.hashCode,
                      $mrjc(
                          processDescription.hashCode,
                          $mrjc(
                              uom.hashCode,
                              $mrjc(
                                  uomRef.hashCode,
                                  $mrjc(
                                      costPrice.hashCode,
                                      $mrjc(
                                          listPrice.hashCode,
                                          $mrjc(
                                              reserved1.hashCode,
                                              $mrjc(
                                                  reserved2.hashCode,
                                                  $mrjc(
                                                      reserved3.hashCode,
                                                      $mrjc(
                                                          reserved4.hashCode,
                                                          $mrjc(
                                                              reserved5
                                                                  .hashCode,
                                                              $mrjc(
                                                                  lastUpdated
                                                                      .hashCode,
                                                                  row.hashCode)))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Labor &&
          other.autoLaborID == this.autoLaborID &&
          other.laborID == this.laborID &&
          other.laborERPKey == this.laborERPKey &&
          other.processName == this.processName &&
          other.processCode == this.processCode &&
          other.processDescription == this.processDescription &&
          other.uom == this.uom &&
          other.uomRef == this.uomRef &&
          other.costPrice == this.costPrice &&
          other.listPrice == this.listPrice &&
          other.reserved1 == this.reserved1 &&
          other.reserved2 == this.reserved2 &&
          other.reserved3 == this.reserved3 &&
          other.reserved4 == this.reserved4 &&
          other.reserved5 == this.reserved5 &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class LaborsCompanion extends UpdateCompanion<Labor> {
  final Value<int> autoLaborID;
  final Value<String> laborID;
  final Value<String> laborERPKey;
  final Value<String> processName;
  final Value<String> processCode;
  final Value<String> processDescription;
  final Value<String> uom;
  final Value<String> uomRef;
  final Value<String> costPrice;
  final Value<String> listPrice;
  final Value<String> reserved1;
  final Value<String> reserved2;
  final Value<String> reserved3;
  final Value<String> reserved4;
  final Value<String> reserved5;
  final Value<String> lastUpdated;
  final Value<String> row;

  const LaborsCompanion({
    this.autoLaborID = const Value.absent(),
    this.laborID = const Value.absent(),
    this.laborERPKey = const Value.absent(),
    this.processName = const Value.absent(),
    this.processCode = const Value.absent(),
    this.processDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  LaborsCompanion.insert({
    this.autoLaborID = const Value.absent(),
    this.laborID = const Value.absent(),
    this.laborERPKey = const Value.absent(),
    this.processName = const Value.absent(),
    this.processCode = const Value.absent(),
    this.processDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  LaborsCompanion copyWith(
      {Value<int> autoLaborID,
      Value<String> laborID,
      Value<String> laborERPKey,
      Value<String> processName,
      Value<String> processCode,
      Value<String> processDescription,
      Value<String> uom,
      Value<String> uomRef,
      Value<String> costPrice,
      Value<String> listPrice,
      Value<String> reserved1,
      Value<String> reserved2,
      Value<String> reserved3,
      Value<String> reserved4,
      Value<String> reserved5,
      Value<String> lastUpdated,
      Value<String> row}) {
    return LaborsCompanion(
      autoLaborID: autoLaborID ?? this.autoLaborID,
      laborID: laborID ?? this.laborID,
      laborERPKey: laborERPKey ?? this.laborERPKey,
      processName: processName ?? this.processName,
      processCode: processCode ?? this.processCode,
      processDescription: processDescription ?? this.processDescription,
      uom: uom ?? this.uom,
      uomRef: uomRef ?? this.uomRef,
      costPrice: costPrice ?? this.costPrice,
      listPrice: listPrice ?? this.listPrice,
      reserved1: reserved1 ?? this.reserved1,
      reserved2: reserved2 ?? this.reserved2,
      reserved3: reserved3 ?? this.reserved3,
      reserved4: reserved4 ?? this.reserved4,
      reserved5: reserved5 ?? this.reserved5,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $LaborsTable extends Labors with TableInfo<$LaborsTable, Labor> {
  final GeneratedDatabase _db;
  final String _alias;

  $LaborsTable(this._db, [this._alias]);

  final VerificationMeta _autoLaborIDMeta =
      const VerificationMeta('autoLaborID');
  GeneratedIntColumn _autoLaborID;

  @override
  GeneratedIntColumn get autoLaborID =>
      _autoLaborID ??= _constructAutoLaborID();

  GeneratedIntColumn _constructAutoLaborID() {
    return GeneratedIntColumn('auto_labor_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _laborIDMeta = const VerificationMeta('laborID');
  GeneratedTextColumn _laborID;

  @override
  GeneratedTextColumn get laborID => _laborID ??= _constructLaborID();

  GeneratedTextColumn _constructLaborID() {
    return GeneratedTextColumn(
      'labor_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _laborERPKeyMeta =
      const VerificationMeta('laborERPKey');
  GeneratedTextColumn _laborERPKey;

  @override
  GeneratedTextColumn get laborERPKey =>
      _laborERPKey ??= _constructLaborERPKey();

  GeneratedTextColumn _constructLaborERPKey() {
    return GeneratedTextColumn(
      'labor_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _processNameMeta =
      const VerificationMeta('processName');
  GeneratedTextColumn _processName;

  @override
  GeneratedTextColumn get processName =>
      _processName ??= _constructProcessName();

  GeneratedTextColumn _constructProcessName() {
    return GeneratedTextColumn(
      'process_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _processCodeMeta =
      const VerificationMeta('processCode');
  GeneratedTextColumn _processCode;

  @override
  GeneratedTextColumn get processCode =>
      _processCode ??= _constructProcessCode();

  GeneratedTextColumn _constructProcessCode() {
    return GeneratedTextColumn(
      'process_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _processDescriptionMeta =
      const VerificationMeta('processDescription');
  GeneratedTextColumn _processDescription;

  @override
  GeneratedTextColumn get processDescription =>
      _processDescription ??= _constructProcessDescription();

  GeneratedTextColumn _constructProcessDescription() {
    return GeneratedTextColumn(
      'process_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomMeta = const VerificationMeta('uom');
  GeneratedTextColumn _uom;

  @override
  GeneratedTextColumn get uom => _uom ??= _constructUom();

  GeneratedTextColumn _constructUom() {
    return GeneratedTextColumn(
      'uom',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomRefMeta = const VerificationMeta('uomRef');
  GeneratedTextColumn _uomRef;

  @override
  GeneratedTextColumn get uomRef => _uomRef ??= _constructUomRef();

  GeneratedTextColumn _constructUomRef() {
    return GeneratedTextColumn(
      'uom_ref',
      $tableName,
      true,
    );
  }

  final VerificationMeta _costPriceMeta = const VerificationMeta('costPrice');
  GeneratedTextColumn _costPrice;

  @override
  GeneratedTextColumn get costPrice => _costPrice ??= _constructCostPrice();

  GeneratedTextColumn _constructCostPrice() {
    return GeneratedTextColumn(
      'cost_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _listPriceMeta = const VerificationMeta('listPrice');
  GeneratedTextColumn _listPrice;

  @override
  GeneratedTextColumn get listPrice => _listPrice ??= _constructListPrice();

  GeneratedTextColumn _constructListPrice() {
    return GeneratedTextColumn(
      'list_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved1Meta = const VerificationMeta('reserved1');
  GeneratedTextColumn _reserved1;

  @override
  GeneratedTextColumn get reserved1 => _reserved1 ??= _constructReserved1();

  GeneratedTextColumn _constructReserved1() {
    return GeneratedTextColumn(
      'reserved1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved2Meta = const VerificationMeta('reserved2');
  GeneratedTextColumn _reserved2;

  @override
  GeneratedTextColumn get reserved2 => _reserved2 ??= _constructReserved2();

  GeneratedTextColumn _constructReserved2() {
    return GeneratedTextColumn(
      'reserved2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved3Meta = const VerificationMeta('reserved3');
  GeneratedTextColumn _reserved3;

  @override
  GeneratedTextColumn get reserved3 => _reserved3 ??= _constructReserved3();

  GeneratedTextColumn _constructReserved3() {
    return GeneratedTextColumn(
      'reserved3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved4Meta = const VerificationMeta('reserved4');
  GeneratedTextColumn _reserved4;

  @override
  GeneratedTextColumn get reserved4 => _reserved4 ??= _constructReserved4();

  GeneratedTextColumn _constructReserved4() {
    return GeneratedTextColumn(
      'reserved4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved5Meta = const VerificationMeta('reserved5');
  GeneratedTextColumn _reserved5;

  @override
  GeneratedTextColumn get reserved5 => _reserved5 ??= _constructReserved5();

  GeneratedTextColumn _constructReserved5() {
    return GeneratedTextColumn(
      'reserved5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoLaborID,
        laborID,
        laborERPKey,
        processName,
        processCode,
        processDescription,
        uom,
        uomRef,
        costPrice,
        listPrice,
        reserved1,
        reserved2,
        reserved3,
        reserved4,
        reserved5,
        lastUpdated,
        row
      ];

  @override
  $LaborsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'labors';
  @override
  final String actualTableName = 'labors';

  @override
  VerificationContext validateIntegrity(LaborsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoLaborID.present) {
      context.handle(_autoLaborIDMeta,
          autoLaborID.isAcceptableValue(d.autoLaborID.value, _autoLaborIDMeta));
    }
    if (d.laborID.present) {
      context.handle(_laborIDMeta,
          laborID.isAcceptableValue(d.laborID.value, _laborIDMeta));
    }
    if (d.laborERPKey.present) {
      context.handle(_laborERPKeyMeta,
          laborERPKey.isAcceptableValue(d.laborERPKey.value, _laborERPKeyMeta));
    }
    if (d.processName.present) {
      context.handle(_processNameMeta,
          processName.isAcceptableValue(d.processName.value, _processNameMeta));
    }
    if (d.processCode.present) {
      context.handle(_processCodeMeta,
          processCode.isAcceptableValue(d.processCode.value, _processCodeMeta));
    }
    if (d.processDescription.present) {
      context.handle(
          _processDescriptionMeta,
          processDescription.isAcceptableValue(
              d.processDescription.value, _processDescriptionMeta));
    }
    if (d.uom.present) {
      context.handle(_uomMeta, uom.isAcceptableValue(d.uom.value, _uomMeta));
    }
    if (d.uomRef.present) {
      context.handle(
          _uomRefMeta, uomRef.isAcceptableValue(d.uomRef.value, _uomRefMeta));
    }
    if (d.costPrice.present) {
      context.handle(_costPriceMeta,
          costPrice.isAcceptableValue(d.costPrice.value, _costPriceMeta));
    }
    if (d.listPrice.present) {
      context.handle(_listPriceMeta,
          listPrice.isAcceptableValue(d.listPrice.value, _listPriceMeta));
    }
    if (d.reserved1.present) {
      context.handle(_reserved1Meta,
          reserved1.isAcceptableValue(d.reserved1.value, _reserved1Meta));
    }
    if (d.reserved2.present) {
      context.handle(_reserved2Meta,
          reserved2.isAcceptableValue(d.reserved2.value, _reserved2Meta));
    }
    if (d.reserved3.present) {
      context.handle(_reserved3Meta,
          reserved3.isAcceptableValue(d.reserved3.value, _reserved3Meta));
    }
    if (d.reserved4.present) {
      context.handle(_reserved4Meta,
          reserved4.isAcceptableValue(d.reserved4.value, _reserved4Meta));
    }
    if (d.reserved5.present) {
      context.handle(_reserved5Meta,
          reserved5.isAcceptableValue(d.reserved5.value, _reserved5Meta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoLaborID};

  @override
  Labor map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Labor.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(LaborsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoLaborID.present) {
      map['auto_labor_i_d'] = Variable<int, IntType>(d.autoLaborID.value);
    }
    if (d.laborID.present) {
      map['labor_i_d'] = Variable<String, StringType>(d.laborID.value);
    }
    if (d.laborERPKey.present) {
      map['labor_e_r_p_key'] =
          Variable<String, StringType>(d.laborERPKey.value);
    }
    if (d.processName.present) {
      map['process_name'] = Variable<String, StringType>(d.processName.value);
    }
    if (d.processCode.present) {
      map['process_code'] = Variable<String, StringType>(d.processCode.value);
    }
    if (d.processDescription.present) {
      map['process_description'] =
          Variable<String, StringType>(d.processDescription.value);
    }
    if (d.uom.present) {
      map['uom'] = Variable<String, StringType>(d.uom.value);
    }
    if (d.uomRef.present) {
      map['uom_ref'] = Variable<String, StringType>(d.uomRef.value);
    }
    if (d.costPrice.present) {
      map['cost_price'] = Variable<String, StringType>(d.costPrice.value);
    }
    if (d.listPrice.present) {
      map['list_price'] = Variable<String, StringType>(d.listPrice.value);
    }
    if (d.reserved1.present) {
      map['reserved1'] = Variable<String, StringType>(d.reserved1.value);
    }
    if (d.reserved2.present) {
      map['reserved2'] = Variable<String, StringType>(d.reserved2.value);
    }
    if (d.reserved3.present) {
      map['reserved3'] = Variable<String, StringType>(d.reserved3.value);
    }
    if (d.reserved4.present) {
      map['reserved4'] = Variable<String, StringType>(d.reserved4.value);
    }
    if (d.reserved5.present) {
      map['reserved5'] = Variable<String, StringType>(d.reserved5.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $LaborsTable createAlias(String alias) {
    return $LaborsTable(_db, alias);
  }
}

class LaborMapping extends DataClass implements Insertable<LaborMapping> {
  final int autoLaborMappingID;
  final String itemID;
  final String laborID;
  final String lastUpdated;
  final String row;

  LaborMapping(
      {@required this.autoLaborMappingID,
      this.itemID,
      this.laborID,
      this.lastUpdated,
      this.row});

  factory LaborMapping.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return LaborMapping(
      autoLaborMappingID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_labor_mapping_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      laborID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}labor_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory LaborMapping.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LaborMapping(
      autoLaborMappingID: serializer.fromJson<int>(json['autoLaborMappingID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      laborID: serializer.fromJson<String>(json['laborID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoLaborMappingID': serializer.toJson<int>(autoLaborMappingID),
      'itemID': serializer.toJson<String>(itemID),
      'laborID': serializer.toJson<String>(laborID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  LaborMappingsCompanion createCompanion(bool nullToAbsent) {
    return LaborMappingsCompanion(
      autoLaborMappingID: autoLaborMappingID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoLaborMappingID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      laborID: laborID == null && nullToAbsent
          ? const Value.absent()
          : Value(laborID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  LaborMapping copyWith(
          {int autoLaborMappingID,
          String itemID,
          String laborID,
          String lastUpdated,
          String row}) =>
      LaborMapping(
        autoLaborMappingID: autoLaborMappingID ?? this.autoLaborMappingID,
        itemID: itemID ?? this.itemID,
        laborID: laborID ?? this.laborID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('LaborMapping(')
          ..write('autoLaborMappingID: $autoLaborMappingID, ')
          ..write('itemID: $itemID, ')
          ..write('laborID: $laborID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoLaborMappingID.hashCode,
      $mrjc(itemID.hashCode,
          $mrjc(laborID.hashCode, $mrjc(lastUpdated.hashCode, row.hashCode)))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is LaborMapping &&
          other.autoLaborMappingID == this.autoLaborMappingID &&
          other.itemID == this.itemID &&
          other.laborID == this.laborID &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class LaborMappingsCompanion extends UpdateCompanion<LaborMapping> {
  final Value<int> autoLaborMappingID;
  final Value<String> itemID;
  final Value<String> laborID;
  final Value<String> lastUpdated;
  final Value<String> row;

  const LaborMappingsCompanion({
    this.autoLaborMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.laborID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  LaborMappingsCompanion.insert({
    this.autoLaborMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.laborID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  LaborMappingsCompanion copyWith(
      {Value<int> autoLaborMappingID,
      Value<String> itemID,
      Value<String> laborID,
      Value<String> lastUpdated,
      Value<String> row}) {
    return LaborMappingsCompanion(
      autoLaborMappingID: autoLaborMappingID ?? this.autoLaborMappingID,
      itemID: itemID ?? this.itemID,
      laborID: laborID ?? this.laborID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $LaborMappingsTable extends LaborMappings
    with TableInfo<$LaborMappingsTable, LaborMapping> {
  final GeneratedDatabase _db;
  final String _alias;

  $LaborMappingsTable(this._db, [this._alias]);

  final VerificationMeta _autoLaborMappingIDMeta =
      const VerificationMeta('autoLaborMappingID');
  GeneratedIntColumn _autoLaborMappingID;

  @override
  GeneratedIntColumn get autoLaborMappingID =>
      _autoLaborMappingID ??= _constructAutoLaborMappingID();

  GeneratedIntColumn _constructAutoLaborMappingID() {
    return GeneratedIntColumn('auto_labor_mapping_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn(
      'item_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _laborIDMeta = const VerificationMeta('laborID');
  GeneratedTextColumn _laborID;

  @override
  GeneratedTextColumn get laborID => _laborID ??= _constructLaborID();

  GeneratedTextColumn _constructLaborID() {
    return GeneratedTextColumn(
      'labor_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [autoLaborMappingID, itemID, laborID, lastUpdated, row];

  @override
  $LaborMappingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'labor_mappings';
  @override
  final String actualTableName = 'labor_mappings';

  @override
  VerificationContext validateIntegrity(LaborMappingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoLaborMappingID.present) {
      context.handle(
          _autoLaborMappingIDMeta,
          autoLaborMappingID.isAcceptableValue(
              d.autoLaborMappingID.value, _autoLaborMappingIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    }
    if (d.laborID.present) {
      context.handle(_laborIDMeta,
          laborID.isAcceptableValue(d.laborID.value, _laborIDMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoLaborMappingID};

  @override
  LaborMapping map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return LaborMapping.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(LaborMappingsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoLaborMappingID.present) {
      map['auto_labor_mapping_i_d'] =
          Variable<int, IntType>(d.autoLaborMappingID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.laborID.present) {
      map['labor_i_d'] = Variable<String, StringType>(d.laborID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $LaborMappingsTable createAlias(String alias) {
    return $LaborMappingsTable(_db, alias);
  }
}

class Miscellaneous extends DataClass implements Insertable<Miscellaneous> {
  final int autoMiscellaneousID;
  final String miscellaneousID;
  final String miscellaneousERPKey;
  final String miscellaneousType;
  final String miscellaneousDescription;
  final String uom;
  final String uomRef;
  final String quantity;
  final String costPrice;
  final String listPrice;
  final String reserved1;
  final String reserved2;
  final String reserved3;
  final String reserved4;
  final String reserved5;
  final String lastUpdated;
  final String row;

  Miscellaneous(
      {@required this.autoMiscellaneousID,
      this.miscellaneousID,
      this.miscellaneousERPKey,
      this.miscellaneousType,
      this.miscellaneousDescription,
      this.uom,
      this.uomRef,
      this.quantity,
      this.costPrice,
      this.listPrice,
      this.reserved1,
      this.reserved2,
      this.reserved3,
      this.reserved4,
      this.reserved5,
      this.lastUpdated,
      this.row});

  factory Miscellaneous.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Miscellaneous(
      autoMiscellaneousID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_miscellaneous_i_d']),
      miscellaneousID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}miscellaneous_i_d']),
      miscellaneousERPKey: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}miscellaneous_e_r_p_key']),
      miscellaneousType: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}miscellaneous_type']),
      miscellaneousDescription: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}miscellaneous_description']),
      uom: stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom']),
      uomRef:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}uom_ref']),
      quantity: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      costPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cost_price']),
      listPrice: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}list_price']),
      reserved1: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved1']),
      reserved2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved2']),
      reserved3: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved3']),
      reserved4: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved4']),
      reserved5: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}reserved5']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory Miscellaneous.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Miscellaneous(
      autoMiscellaneousID:
          serializer.fromJson<int>(json['autoMiscellaneousID']),
      miscellaneousID: serializer.fromJson<String>(json['miscellaneousID']),
      miscellaneousERPKey:
          serializer.fromJson<String>(json['miscellaneousERPKey']),
      miscellaneousType: serializer.fromJson<String>(json['miscellaneousType']),
      miscellaneousDescription:
          serializer.fromJson<String>(json['miscellaneousDescription']),
      uom: serializer.fromJson<String>(json['uom']),
      uomRef: serializer.fromJson<String>(json['uomRef']),
      quantity: serializer.fromJson<String>(json['quantity']),
      costPrice: serializer.fromJson<String>(json['costPrice']),
      listPrice: serializer.fromJson<String>(json['listPrice']),
      reserved1: serializer.fromJson<String>(json['reserved1']),
      reserved2: serializer.fromJson<String>(json['reserved2']),
      reserved3: serializer.fromJson<String>(json['reserved3']),
      reserved4: serializer.fromJson<String>(json['reserved4']),
      reserved5: serializer.fromJson<String>(json['reserved5']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoMiscellaneousID': serializer.toJson<int>(autoMiscellaneousID),
      'miscellaneousID': serializer.toJson<String>(miscellaneousID),
      'miscellaneousERPKey': serializer.toJson<String>(miscellaneousERPKey),
      'miscellaneousType': serializer.toJson<String>(miscellaneousType),
      'miscellaneousDescription':
          serializer.toJson<String>(miscellaneousDescription),
      'uom': serializer.toJson<String>(uom),
      'uomRef': serializer.toJson<String>(uomRef),
      'quantity': serializer.toJson<String>(quantity),
      'costPrice': serializer.toJson<String>(costPrice),
      'listPrice': serializer.toJson<String>(listPrice),
      'reserved1': serializer.toJson<String>(reserved1),
      'reserved2': serializer.toJson<String>(reserved2),
      'reserved3': serializer.toJson<String>(reserved3),
      'reserved4': serializer.toJson<String>(reserved4),
      'reserved5': serializer.toJson<String>(reserved5),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  MiscellaneousesCompanion createCompanion(bool nullToAbsent) {
    return MiscellaneousesCompanion(
      autoMiscellaneousID: autoMiscellaneousID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoMiscellaneousID),
      miscellaneousID: miscellaneousID == null && nullToAbsent
          ? const Value.absent()
          : Value(miscellaneousID),
      miscellaneousERPKey: miscellaneousERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(miscellaneousERPKey),
      miscellaneousType: miscellaneousType == null && nullToAbsent
          ? const Value.absent()
          : Value(miscellaneousType),
      miscellaneousDescription: miscellaneousDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(miscellaneousDescription),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      uomRef:
          uomRef == null && nullToAbsent ? const Value.absent() : Value(uomRef),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      costPrice: costPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(costPrice),
      listPrice: listPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(listPrice),
      reserved1: reserved1 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved1),
      reserved2: reserved2 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved2),
      reserved3: reserved3 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved3),
      reserved4: reserved4 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved4),
      reserved5: reserved5 == null && nullToAbsent
          ? const Value.absent()
          : Value(reserved5),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  Miscellaneous copyWith(
          {int autoMiscellaneousID,
          String miscellaneousID,
          String miscellaneousERPKey,
          String miscellaneousType,
          String miscellaneousDescription,
          String uom,
          String uomRef,
          String quantity,
          String costPrice,
          String listPrice,
          String reserved1,
          String reserved2,
          String reserved3,
          String reserved4,
          String reserved5,
          String lastUpdated,
          String row}) =>
      Miscellaneous(
        autoMiscellaneousID: autoMiscellaneousID ?? this.autoMiscellaneousID,
        miscellaneousID: miscellaneousID ?? this.miscellaneousID,
        miscellaneousERPKey: miscellaneousERPKey ?? this.miscellaneousERPKey,
        miscellaneousType: miscellaneousType ?? this.miscellaneousType,
        miscellaneousDescription:
            miscellaneousDescription ?? this.miscellaneousDescription,
        uom: uom ?? this.uom,
        uomRef: uomRef ?? this.uomRef,
        quantity: quantity ?? this.quantity,
        costPrice: costPrice ?? this.costPrice,
        listPrice: listPrice ?? this.listPrice,
        reserved1: reserved1 ?? this.reserved1,
        reserved2: reserved2 ?? this.reserved2,
        reserved3: reserved3 ?? this.reserved3,
        reserved4: reserved4 ?? this.reserved4,
        reserved5: reserved5 ?? this.reserved5,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('Miscellaneous(')
          ..write('autoMiscellaneousID: $autoMiscellaneousID, ')
          ..write('miscellaneousID: $miscellaneousID, ')
          ..write('miscellaneousERPKey: $miscellaneousERPKey, ')
          ..write('miscellaneousType: $miscellaneousType, ')
          ..write('miscellaneousDescription: $miscellaneousDescription, ')
          ..write('uom: $uom, ')
          ..write('uomRef: $uomRef, ')
          ..write('quantity: $quantity, ')
          ..write('costPrice: $costPrice, ')
          ..write('listPrice: $listPrice, ')
          ..write('reserved1: $reserved1, ')
          ..write('reserved2: $reserved2, ')
          ..write('reserved3: $reserved3, ')
          ..write('reserved4: $reserved4, ')
          ..write('reserved5: $reserved5, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoMiscellaneousID.hashCode,
      $mrjc(
          miscellaneousID.hashCode,
          $mrjc(
              miscellaneousERPKey.hashCode,
              $mrjc(
                  miscellaneousType.hashCode,
                  $mrjc(
                      miscellaneousDescription.hashCode,
                      $mrjc(
                          uom.hashCode,
                          $mrjc(
                              uomRef.hashCode,
                              $mrjc(
                                  quantity.hashCode,
                                  $mrjc(
                                      costPrice.hashCode,
                                      $mrjc(
                                          listPrice.hashCode,
                                          $mrjc(
                                              reserved1.hashCode,
                                              $mrjc(
                                                  reserved2.hashCode,
                                                  $mrjc(
                                                      reserved3.hashCode,
                                                      $mrjc(
                                                          reserved4.hashCode,
                                                          $mrjc(
                                                              reserved5
                                                                  .hashCode,
                                                              $mrjc(
                                                                  lastUpdated
                                                                      .hashCode,
                                                                  row.hashCode)))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Miscellaneous &&
          other.autoMiscellaneousID == this.autoMiscellaneousID &&
          other.miscellaneousID == this.miscellaneousID &&
          other.miscellaneousERPKey == this.miscellaneousERPKey &&
          other.miscellaneousType == this.miscellaneousType &&
          other.miscellaneousDescription == this.miscellaneousDescription &&
          other.uom == this.uom &&
          other.uomRef == this.uomRef &&
          other.quantity == this.quantity &&
          other.costPrice == this.costPrice &&
          other.listPrice == this.listPrice &&
          other.reserved1 == this.reserved1 &&
          other.reserved2 == this.reserved2 &&
          other.reserved3 == this.reserved3 &&
          other.reserved4 == this.reserved4 &&
          other.reserved5 == this.reserved5 &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class MiscellaneousesCompanion extends UpdateCompanion<Miscellaneous> {
  final Value<int> autoMiscellaneousID;
  final Value<String> miscellaneousID;
  final Value<String> miscellaneousERPKey;
  final Value<String> miscellaneousType;
  final Value<String> miscellaneousDescription;
  final Value<String> uom;
  final Value<String> uomRef;
  final Value<String> quantity;
  final Value<String> costPrice;
  final Value<String> listPrice;
  final Value<String> reserved1;
  final Value<String> reserved2;
  final Value<String> reserved3;
  final Value<String> reserved4;
  final Value<String> reserved5;
  final Value<String> lastUpdated;
  final Value<String> row;

  const MiscellaneousesCompanion({
    this.autoMiscellaneousID = const Value.absent(),
    this.miscellaneousID = const Value.absent(),
    this.miscellaneousERPKey = const Value.absent(),
    this.miscellaneousType = const Value.absent(),
    this.miscellaneousDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.quantity = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MiscellaneousesCompanion.insert({
    this.autoMiscellaneousID = const Value.absent(),
    this.miscellaneousID = const Value.absent(),
    this.miscellaneousERPKey = const Value.absent(),
    this.miscellaneousType = const Value.absent(),
    this.miscellaneousDescription = const Value.absent(),
    this.uom = const Value.absent(),
    this.uomRef = const Value.absent(),
    this.quantity = const Value.absent(),
    this.costPrice = const Value.absent(),
    this.listPrice = const Value.absent(),
    this.reserved1 = const Value.absent(),
    this.reserved2 = const Value.absent(),
    this.reserved3 = const Value.absent(),
    this.reserved4 = const Value.absent(),
    this.reserved5 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MiscellaneousesCompanion copyWith(
      {Value<int> autoMiscellaneousID,
      Value<String> miscellaneousID,
      Value<String> miscellaneousERPKey,
      Value<String> miscellaneousType,
      Value<String> miscellaneousDescription,
      Value<String> uom,
      Value<String> uomRef,
      Value<String> quantity,
      Value<String> costPrice,
      Value<String> listPrice,
      Value<String> reserved1,
      Value<String> reserved2,
      Value<String> reserved3,
      Value<String> reserved4,
      Value<String> reserved5,
      Value<String> lastUpdated,
      Value<String> row}) {
    return MiscellaneousesCompanion(
      autoMiscellaneousID: autoMiscellaneousID ?? this.autoMiscellaneousID,
      miscellaneousID: miscellaneousID ?? this.miscellaneousID,
      miscellaneousERPKey: miscellaneousERPKey ?? this.miscellaneousERPKey,
      miscellaneousType: miscellaneousType ?? this.miscellaneousType,
      miscellaneousDescription:
          miscellaneousDescription ?? this.miscellaneousDescription,
      uom: uom ?? this.uom,
      uomRef: uomRef ?? this.uomRef,
      quantity: quantity ?? this.quantity,
      costPrice: costPrice ?? this.costPrice,
      listPrice: listPrice ?? this.listPrice,
      reserved1: reserved1 ?? this.reserved1,
      reserved2: reserved2 ?? this.reserved2,
      reserved3: reserved3 ?? this.reserved3,
      reserved4: reserved4 ?? this.reserved4,
      reserved5: reserved5 ?? this.reserved5,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $MiscellaneousesTable extends Miscellaneouses
    with TableInfo<$MiscellaneousesTable, Miscellaneous> {
  final GeneratedDatabase _db;
  final String _alias;

  $MiscellaneousesTable(this._db, [this._alias]);

  final VerificationMeta _autoMiscellaneousIDMeta =
      const VerificationMeta('autoMiscellaneousID');
  GeneratedIntColumn _autoMiscellaneousID;

  @override
  GeneratedIntColumn get autoMiscellaneousID =>
      _autoMiscellaneousID ??= _constructAutoMiscellaneousID();

  GeneratedIntColumn _constructAutoMiscellaneousID() {
    return GeneratedIntColumn('auto_miscellaneous_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _miscellaneousIDMeta =
      const VerificationMeta('miscellaneousID');
  GeneratedTextColumn _miscellaneousID;

  @override
  GeneratedTextColumn get miscellaneousID =>
      _miscellaneousID ??= _constructMiscellaneousID();

  GeneratedTextColumn _constructMiscellaneousID() {
    return GeneratedTextColumn(
      'miscellaneous_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _miscellaneousERPKeyMeta =
      const VerificationMeta('miscellaneousERPKey');
  GeneratedTextColumn _miscellaneousERPKey;

  @override
  GeneratedTextColumn get miscellaneousERPKey =>
      _miscellaneousERPKey ??= _constructMiscellaneousERPKey();

  GeneratedTextColumn _constructMiscellaneousERPKey() {
    return GeneratedTextColumn(
      'miscellaneous_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _miscellaneousTypeMeta =
      const VerificationMeta('miscellaneousType');
  GeneratedTextColumn _miscellaneousType;

  @override
  GeneratedTextColumn get miscellaneousType =>
      _miscellaneousType ??= _constructMiscellaneousType();

  GeneratedTextColumn _constructMiscellaneousType() {
    return GeneratedTextColumn(
      'miscellaneous_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _miscellaneousDescriptionMeta =
      const VerificationMeta('miscellaneousDescription');
  GeneratedTextColumn _miscellaneousDescription;

  @override
  GeneratedTextColumn get miscellaneousDescription =>
      _miscellaneousDescription ??= _constructMiscellaneousDescription();

  GeneratedTextColumn _constructMiscellaneousDescription() {
    return GeneratedTextColumn(
      'miscellaneous_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomMeta = const VerificationMeta('uom');
  GeneratedTextColumn _uom;

  @override
  GeneratedTextColumn get uom => _uom ??= _constructUom();

  GeneratedTextColumn _constructUom() {
    return GeneratedTextColumn(
      'uom',
      $tableName,
      true,
    );
  }

  final VerificationMeta _uomRefMeta = const VerificationMeta('uomRef');
  GeneratedTextColumn _uomRef;

  @override
  GeneratedTextColumn get uomRef => _uomRef ??= _constructUomRef();

  GeneratedTextColumn _constructUomRef() {
    return GeneratedTextColumn(
      'uom_ref',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedTextColumn _quantity;

  @override
  GeneratedTextColumn get quantity => _quantity ??= _constructQuantity();

  GeneratedTextColumn _constructQuantity() {
    return GeneratedTextColumn(
      'quantity',
      $tableName,
      true,
    );
  }

  final VerificationMeta _costPriceMeta = const VerificationMeta('costPrice');
  GeneratedTextColumn _costPrice;

  @override
  GeneratedTextColumn get costPrice => _costPrice ??= _constructCostPrice();

  GeneratedTextColumn _constructCostPrice() {
    return GeneratedTextColumn(
      'cost_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _listPriceMeta = const VerificationMeta('listPrice');
  GeneratedTextColumn _listPrice;

  @override
  GeneratedTextColumn get listPrice => _listPrice ??= _constructListPrice();

  GeneratedTextColumn _constructListPrice() {
    return GeneratedTextColumn(
      'list_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved1Meta = const VerificationMeta('reserved1');
  GeneratedTextColumn _reserved1;

  @override
  GeneratedTextColumn get reserved1 => _reserved1 ??= _constructReserved1();

  GeneratedTextColumn _constructReserved1() {
    return GeneratedTextColumn(
      'reserved1',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved2Meta = const VerificationMeta('reserved2');
  GeneratedTextColumn _reserved2;

  @override
  GeneratedTextColumn get reserved2 => _reserved2 ??= _constructReserved2();

  GeneratedTextColumn _constructReserved2() {
    return GeneratedTextColumn(
      'reserved2',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved3Meta = const VerificationMeta('reserved3');
  GeneratedTextColumn _reserved3;

  @override
  GeneratedTextColumn get reserved3 => _reserved3 ??= _constructReserved3();

  GeneratedTextColumn _constructReserved3() {
    return GeneratedTextColumn(
      'reserved3',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved4Meta = const VerificationMeta('reserved4');
  GeneratedTextColumn _reserved4;

  @override
  GeneratedTextColumn get reserved4 => _reserved4 ??= _constructReserved4();

  GeneratedTextColumn _constructReserved4() {
    return GeneratedTextColumn(
      'reserved4',
      $tableName,
      true,
    );
  }

  final VerificationMeta _reserved5Meta = const VerificationMeta('reserved5');
  GeneratedTextColumn _reserved5;

  @override
  GeneratedTextColumn get reserved5 => _reserved5 ??= _constructReserved5();

  GeneratedTextColumn _constructReserved5() {
    return GeneratedTextColumn(
      'reserved5',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoMiscellaneousID,
        miscellaneousID,
        miscellaneousERPKey,
        miscellaneousType,
        miscellaneousDescription,
        uom,
        uomRef,
        quantity,
        costPrice,
        listPrice,
        reserved1,
        reserved2,
        reserved3,
        reserved4,
        reserved5,
        lastUpdated,
        row
      ];

  @override
  $MiscellaneousesTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'miscellaneouses';
  @override
  final String actualTableName = 'miscellaneouses';

  @override
  VerificationContext validateIntegrity(MiscellaneousesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoMiscellaneousID.present) {
      context.handle(
          _autoMiscellaneousIDMeta,
          autoMiscellaneousID.isAcceptableValue(
              d.autoMiscellaneousID.value, _autoMiscellaneousIDMeta));
    }
    if (d.miscellaneousID.present) {
      context.handle(
          _miscellaneousIDMeta,
          miscellaneousID.isAcceptableValue(
              d.miscellaneousID.value, _miscellaneousIDMeta));
    }
    if (d.miscellaneousERPKey.present) {
      context.handle(
          _miscellaneousERPKeyMeta,
          miscellaneousERPKey.isAcceptableValue(
              d.miscellaneousERPKey.value, _miscellaneousERPKeyMeta));
    }
    if (d.miscellaneousType.present) {
      context.handle(
          _miscellaneousTypeMeta,
          miscellaneousType.isAcceptableValue(
              d.miscellaneousType.value, _miscellaneousTypeMeta));
    }
    if (d.miscellaneousDescription.present) {
      context.handle(
          _miscellaneousDescriptionMeta,
          miscellaneousDescription.isAcceptableValue(
              d.miscellaneousDescription.value, _miscellaneousDescriptionMeta));
    }
    if (d.uom.present) {
      context.handle(_uomMeta, uom.isAcceptableValue(d.uom.value, _uomMeta));
    }
    if (d.uomRef.present) {
      context.handle(
          _uomRefMeta, uomRef.isAcceptableValue(d.uomRef.value, _uomRefMeta));
    }
    if (d.quantity.present) {
      context.handle(_quantityMeta,
          quantity.isAcceptableValue(d.quantity.value, _quantityMeta));
    }
    if (d.costPrice.present) {
      context.handle(_costPriceMeta,
          costPrice.isAcceptableValue(d.costPrice.value, _costPriceMeta));
    }
    if (d.listPrice.present) {
      context.handle(_listPriceMeta,
          listPrice.isAcceptableValue(d.listPrice.value, _listPriceMeta));
    }
    if (d.reserved1.present) {
      context.handle(_reserved1Meta,
          reserved1.isAcceptableValue(d.reserved1.value, _reserved1Meta));
    }
    if (d.reserved2.present) {
      context.handle(_reserved2Meta,
          reserved2.isAcceptableValue(d.reserved2.value, _reserved2Meta));
    }
    if (d.reserved3.present) {
      context.handle(_reserved3Meta,
          reserved3.isAcceptableValue(d.reserved3.value, _reserved3Meta));
    }
    if (d.reserved4.present) {
      context.handle(_reserved4Meta,
          reserved4.isAcceptableValue(d.reserved4.value, _reserved4Meta));
    }
    if (d.reserved5.present) {
      context.handle(_reserved5Meta,
          reserved5.isAcceptableValue(d.reserved5.value, _reserved5Meta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoMiscellaneousID};

  @override
  Miscellaneous map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Miscellaneous.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MiscellaneousesCompanion d) {
    final map = <String, Variable>{};
    if (d.autoMiscellaneousID.present) {
      map['auto_miscellaneous_i_d'] =
          Variable<int, IntType>(d.autoMiscellaneousID.value);
    }
    if (d.miscellaneousID.present) {
      map['miscellaneous_i_d'] =
          Variable<String, StringType>(d.miscellaneousID.value);
    }
    if (d.miscellaneousERPKey.present) {
      map['miscellaneous_e_r_p_key'] =
          Variable<String, StringType>(d.miscellaneousERPKey.value);
    }
    if (d.miscellaneousType.present) {
      map['miscellaneous_type'] =
          Variable<String, StringType>(d.miscellaneousType.value);
    }
    if (d.miscellaneousDescription.present) {
      map['miscellaneous_description'] =
          Variable<String, StringType>(d.miscellaneousDescription.value);
    }
    if (d.uom.present) {
      map['uom'] = Variable<String, StringType>(d.uom.value);
    }
    if (d.uomRef.present) {
      map['uom_ref'] = Variable<String, StringType>(d.uomRef.value);
    }
    if (d.quantity.present) {
      map['quantity'] = Variable<String, StringType>(d.quantity.value);
    }
    if (d.costPrice.present) {
      map['cost_price'] = Variable<String, StringType>(d.costPrice.value);
    }
    if (d.listPrice.present) {
      map['list_price'] = Variable<String, StringType>(d.listPrice.value);
    }
    if (d.reserved1.present) {
      map['reserved1'] = Variable<String, StringType>(d.reserved1.value);
    }
    if (d.reserved2.present) {
      map['reserved2'] = Variable<String, StringType>(d.reserved2.value);
    }
    if (d.reserved3.present) {
      map['reserved3'] = Variable<String, StringType>(d.reserved3.value);
    }
    if (d.reserved4.present) {
      map['reserved4'] = Variable<String, StringType>(d.reserved4.value);
    }
    if (d.reserved5.present) {
      map['reserved5'] = Variable<String, StringType>(d.reserved5.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $MiscellaneousesTable createAlias(String alias) {
    return $MiscellaneousesTable(_db, alias);
  }
}

class MiscellaneousMapping extends DataClass
    implements Insertable<MiscellaneousMapping> {
  final int autoMiscellaneousMappingID;
  final String itemID;
  final String miscellaneousID;
  final String lastUpdated;
  final String row;

  MiscellaneousMapping(
      {@required this.autoMiscellaneousMappingID,
      this.itemID,
      this.miscellaneousID,
      this.lastUpdated,
      this.row});

  factory MiscellaneousMapping.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return MiscellaneousMapping(
      autoMiscellaneousMappingID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auto_miscellaneous_mapping_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      miscellaneousID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}miscellaneous_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory MiscellaneousMapping.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MiscellaneousMapping(
      autoMiscellaneousMappingID:
          serializer.fromJson<int>(json['autoMiscellaneousMappingID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      miscellaneousID: serializer.fromJson<String>(json['miscellaneousID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoMiscellaneousMappingID':
          serializer.toJson<int>(autoMiscellaneousMappingID),
      'itemID': serializer.toJson<String>(itemID),
      'miscellaneousID': serializer.toJson<String>(miscellaneousID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  MiscellaneousMappingsCompanion createCompanion(bool nullToAbsent) {
    return MiscellaneousMappingsCompanion(
      autoMiscellaneousMappingID:
          autoMiscellaneousMappingID == null && nullToAbsent
              ? const Value.absent()
              : Value(autoMiscellaneousMappingID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      miscellaneousID: miscellaneousID == null && nullToAbsent
          ? const Value.absent()
          : Value(miscellaneousID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  MiscellaneousMapping copyWith(
          {int autoMiscellaneousMappingID,
          String itemID,
          String miscellaneousID,
          String lastUpdated,
          String row}) =>
      MiscellaneousMapping(
        autoMiscellaneousMappingID:
            autoMiscellaneousMappingID ?? this.autoMiscellaneousMappingID,
        itemID: itemID ?? this.itemID,
        miscellaneousID: miscellaneousID ?? this.miscellaneousID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('MiscellaneousMapping(')
          ..write('autoMiscellaneousMappingID: $autoMiscellaneousMappingID, ')
          ..write('itemID: $itemID, ')
          ..write('miscellaneousID: $miscellaneousID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoMiscellaneousMappingID.hashCode,
      $mrjc(
          itemID.hashCode,
          $mrjc(miscellaneousID.hashCode,
              $mrjc(lastUpdated.hashCode, row.hashCode)))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MiscellaneousMapping &&
          other.autoMiscellaneousMappingID == this.autoMiscellaneousMappingID &&
          other.itemID == this.itemID &&
          other.miscellaneousID == this.miscellaneousID &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class MiscellaneousMappingsCompanion
    extends UpdateCompanion<MiscellaneousMapping> {
  final Value<int> autoMiscellaneousMappingID;
  final Value<String> itemID;
  final Value<String> miscellaneousID;
  final Value<String> lastUpdated;
  final Value<String> row;

  const MiscellaneousMappingsCompanion({
    this.autoMiscellaneousMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.miscellaneousID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MiscellaneousMappingsCompanion.insert({
    this.autoMiscellaneousMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.miscellaneousID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  MiscellaneousMappingsCompanion copyWith(
      {Value<int> autoMiscellaneousMappingID,
      Value<String> itemID,
      Value<String> miscellaneousID,
      Value<String> lastUpdated,
      Value<String> row}) {
    return MiscellaneousMappingsCompanion(
      autoMiscellaneousMappingID:
          autoMiscellaneousMappingID ?? this.autoMiscellaneousMappingID,
      itemID: itemID ?? this.itemID,
      miscellaneousID: miscellaneousID ?? this.miscellaneousID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $MiscellaneousMappingsTable extends MiscellaneousMappings
    with TableInfo<$MiscellaneousMappingsTable, MiscellaneousMapping> {
  final GeneratedDatabase _db;
  final String _alias;

  $MiscellaneousMappingsTable(this._db, [this._alias]);

  final VerificationMeta _autoMiscellaneousMappingIDMeta =
      const VerificationMeta('autoMiscellaneousMappingID');
  GeneratedIntColumn _autoMiscellaneousMappingID;

  @override
  GeneratedIntColumn get autoMiscellaneousMappingID =>
      _autoMiscellaneousMappingID ??= _constructAutoMiscellaneousMappingID();

  GeneratedIntColumn _constructAutoMiscellaneousMappingID() {
    return GeneratedIntColumn(
        'auto_miscellaneous_mapping_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn(
      'item_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _miscellaneousIDMeta =
      const VerificationMeta('miscellaneousID');
  GeneratedTextColumn _miscellaneousID;

  @override
  GeneratedTextColumn get miscellaneousID =>
      _miscellaneousID ??= _constructMiscellaneousID();

  GeneratedTextColumn _constructMiscellaneousID() {
    return GeneratedTextColumn(
      'miscellaneous_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [autoMiscellaneousMappingID, itemID, miscellaneousID, lastUpdated, row];

  @override
  $MiscellaneousMappingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'miscellaneous_mappings';
  @override
  final String actualTableName = 'miscellaneous_mappings';

  @override
  VerificationContext validateIntegrity(MiscellaneousMappingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoMiscellaneousMappingID.present) {
      context.handle(
          _autoMiscellaneousMappingIDMeta,
          autoMiscellaneousMappingID.isAcceptableValue(
              d.autoMiscellaneousMappingID.value,
              _autoMiscellaneousMappingIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    }
    if (d.miscellaneousID.present) {
      context.handle(
          _miscellaneousIDMeta,
          miscellaneousID.isAcceptableValue(
              d.miscellaneousID.value, _miscellaneousIDMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoMiscellaneousMappingID};

  @override
  MiscellaneousMapping map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MiscellaneousMapping.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MiscellaneousMappingsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoMiscellaneousMappingID.present) {
      map['auto_miscellaneous_mapping_i_d'] =
          Variable<int, IntType>(d.autoMiscellaneousMappingID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.miscellaneousID.present) {
      map['miscellaneous_i_d'] =
          Variable<String, StringType>(d.miscellaneousID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $MiscellaneousMappingsTable createAlias(String alias) {
    return $MiscellaneousMappingsTable(_db, alias);
  }
}

class Bin extends DataClass implements Insertable<Bin> {
  final int autoBinID;
  final String binID;
  final String binERPKey;
  final String binCode;
  final String binName;
  final String binDescription;
  final String trayID;
  final String trayDescription;
  final String lastUpdated;
  final String row;

  Bin(
      {@required this.autoBinID,
      this.binID,
      this.binERPKey,
      this.binCode,
      this.binName,
      this.binDescription,
      this.trayID,
      this.trayDescription,
      this.lastUpdated,
      this.row});

  factory Bin.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Bin(
      autoBinID: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}auto_bin_i_d']),
      binID:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}bin_i_d']),
      binERPKey: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bin_e_r_p_key']),
      binCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bin_code']),
      binName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bin_name']),
      binDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}bin_description']),
      trayID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tray_i_d']),
      trayDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tray_description']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory Bin.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Bin(
      autoBinID: serializer.fromJson<int>(json['autoBinID']),
      binID: serializer.fromJson<String>(json['binID']),
      binERPKey: serializer.fromJson<String>(json['binERPKey']),
      binCode: serializer.fromJson<String>(json['binCode']),
      binName: serializer.fromJson<String>(json['binName']),
      binDescription: serializer.fromJson<String>(json['binDescription']),
      trayID: serializer.fromJson<String>(json['trayID']),
      trayDescription: serializer.fromJson<String>(json['trayDescription']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoBinID': serializer.toJson<int>(autoBinID),
      'binID': serializer.toJson<String>(binID),
      'binERPKey': serializer.toJson<String>(binERPKey),
      'binCode': serializer.toJson<String>(binCode),
      'binName': serializer.toJson<String>(binName),
      'binDescription': serializer.toJson<String>(binDescription),
      'trayID': serializer.toJson<String>(trayID),
      'trayDescription': serializer.toJson<String>(trayDescription),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  BinsCompanion createCompanion(bool nullToAbsent) {
    return BinsCompanion(
      autoBinID: autoBinID == null && nullToAbsent
          ? const Value.absent()
          : Value(autoBinID),
      binID:
          binID == null && nullToAbsent ? const Value.absent() : Value(binID),
      binERPKey: binERPKey == null && nullToAbsent
          ? const Value.absent()
          : Value(binERPKey),
      binCode: binCode == null && nullToAbsent
          ? const Value.absent()
          : Value(binCode),
      binName: binName == null && nullToAbsent
          ? const Value.absent()
          : Value(binName),
      binDescription: binDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(binDescription),
      trayID:
          trayID == null && nullToAbsent ? const Value.absent() : Value(trayID),
      trayDescription: trayDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(trayDescription),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  Bin copyWith(
          {int autoBinID,
          String binID,
          String binERPKey,
          String binCode,
          String binName,
          String binDescription,
          String trayID,
          String trayDescription,
          String lastUpdated,
          String row}) =>
      Bin(
        autoBinID: autoBinID ?? this.autoBinID,
        binID: binID ?? this.binID,
        binERPKey: binERPKey ?? this.binERPKey,
        binCode: binCode ?? this.binCode,
        binName: binName ?? this.binName,
        binDescription: binDescription ?? this.binDescription,
        trayID: trayID ?? this.trayID,
        trayDescription: trayDescription ?? this.trayDescription,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('Bin(')
          ..write('autoBinID: $autoBinID, ')
          ..write('binID: $binID, ')
          ..write('binERPKey: $binERPKey, ')
          ..write('binCode: $binCode, ')
          ..write('binName: $binName, ')
          ..write('binDescription: $binDescription, ')
          ..write('trayID: $trayID, ')
          ..write('trayDescription: $trayDescription, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoBinID.hashCode,
      $mrjc(
          binID.hashCode,
          $mrjc(
              binERPKey.hashCode,
              $mrjc(
                  binCode.hashCode,
                  $mrjc(
                      binName.hashCode,
                      $mrjc(
                          binDescription.hashCode,
                          $mrjc(
                              trayID.hashCode,
                              $mrjc(
                                  trayDescription.hashCode,
                                  $mrjc(lastUpdated.hashCode,
                                      row.hashCode))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Bin &&
          other.autoBinID == this.autoBinID &&
          other.binID == this.binID &&
          other.binERPKey == this.binERPKey &&
          other.binCode == this.binCode &&
          other.binName == this.binName &&
          other.binDescription == this.binDescription &&
          other.trayID == this.trayID &&
          other.trayDescription == this.trayDescription &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class BinsCompanion extends UpdateCompanion<Bin> {
  final Value<int> autoBinID;
  final Value<String> binID;
  final Value<String> binERPKey;
  final Value<String> binCode;
  final Value<String> binName;
  final Value<String> binDescription;
  final Value<String> trayID;
  final Value<String> trayDescription;
  final Value<String> lastUpdated;
  final Value<String> row;

  const BinsCompanion({
    this.autoBinID = const Value.absent(),
    this.binID = const Value.absent(),
    this.binERPKey = const Value.absent(),
    this.binCode = const Value.absent(),
    this.binName = const Value.absent(),
    this.binDescription = const Value.absent(),
    this.trayID = const Value.absent(),
    this.trayDescription = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  BinsCompanion.insert({
    this.autoBinID = const Value.absent(),
    this.binID = const Value.absent(),
    this.binERPKey = const Value.absent(),
    this.binCode = const Value.absent(),
    this.binName = const Value.absent(),
    this.binDescription = const Value.absent(),
    this.trayID = const Value.absent(),
    this.trayDescription = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  BinsCompanion copyWith(
      {Value<int> autoBinID,
      Value<String> binID,
      Value<String> binERPKey,
      Value<String> binCode,
      Value<String> binName,
      Value<String> binDescription,
      Value<String> trayID,
      Value<String> trayDescription,
      Value<String> lastUpdated,
      Value<String> row}) {
    return BinsCompanion(
      autoBinID: autoBinID ?? this.autoBinID,
      binID: binID ?? this.binID,
      binERPKey: binERPKey ?? this.binERPKey,
      binCode: binCode ?? this.binCode,
      binName: binName ?? this.binName,
      binDescription: binDescription ?? this.binDescription,
      trayID: trayID ?? this.trayID,
      trayDescription: trayDescription ?? this.trayDescription,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $BinsTable extends Bins with TableInfo<$BinsTable, Bin> {
  final GeneratedDatabase _db;
  final String _alias;

  $BinsTable(this._db, [this._alias]);

  final VerificationMeta _autoBinIDMeta = const VerificationMeta('autoBinID');
  GeneratedIntColumn _autoBinID;

  @override
  GeneratedIntColumn get autoBinID => _autoBinID ??= _constructAutoBinID();

  GeneratedIntColumn _constructAutoBinID() {
    return GeneratedIntColumn('auto_bin_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _binIDMeta = const VerificationMeta('binID');
  GeneratedTextColumn _binID;

  @override
  GeneratedTextColumn get binID => _binID ??= _constructBinID();

  GeneratedTextColumn _constructBinID() {
    return GeneratedTextColumn(
      'bin_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _binERPKeyMeta = const VerificationMeta('binERPKey');
  GeneratedTextColumn _binERPKey;

  @override
  GeneratedTextColumn get binERPKey => _binERPKey ??= _constructBinERPKey();

  GeneratedTextColumn _constructBinERPKey() {
    return GeneratedTextColumn(
      'bin_e_r_p_key',
      $tableName,
      true,
    );
  }

  final VerificationMeta _binCodeMeta = const VerificationMeta('binCode');
  GeneratedTextColumn _binCode;

  @override
  GeneratedTextColumn get binCode => _binCode ??= _constructBinCode();

  GeneratedTextColumn _constructBinCode() {
    return GeneratedTextColumn(
      'bin_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _binNameMeta = const VerificationMeta('binName');
  GeneratedTextColumn _binName;

  @override
  GeneratedTextColumn get binName => _binName ??= _constructBinName();

  GeneratedTextColumn _constructBinName() {
    return GeneratedTextColumn(
      'bin_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _binDescriptionMeta =
      const VerificationMeta('binDescription');
  GeneratedTextColumn _binDescription;

  @override
  GeneratedTextColumn get binDescription =>
      _binDescription ??= _constructBinDescription();

  GeneratedTextColumn _constructBinDescription() {
    return GeneratedTextColumn(
      'bin_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _trayIDMeta = const VerificationMeta('trayID');
  GeneratedTextColumn _trayID;

  @override
  GeneratedTextColumn get trayID => _trayID ??= _constructTrayID();

  GeneratedTextColumn _constructTrayID() {
    return GeneratedTextColumn(
      'tray_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _trayDescriptionMeta =
      const VerificationMeta('trayDescription');
  GeneratedTextColumn _trayDescription;

  @override
  GeneratedTextColumn get trayDescription =>
      _trayDescription ??= _constructTrayDescription();

  GeneratedTextColumn _constructTrayDescription() {
    return GeneratedTextColumn(
      'tray_description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoBinID,
        binID,
        binERPKey,
        binCode,
        binName,
        binDescription,
        trayID,
        trayDescription,
        lastUpdated,
        row
      ];

  @override
  $BinsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'bins';
  @override
  final String actualTableName = 'bins';

  @override
  VerificationContext validateIntegrity(BinsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoBinID.present) {
      context.handle(_autoBinIDMeta,
          autoBinID.isAcceptableValue(d.autoBinID.value, _autoBinIDMeta));
    }
    if (d.binID.present) {
      context.handle(
          _binIDMeta, binID.isAcceptableValue(d.binID.value, _binIDMeta));
    }
    if (d.binERPKey.present) {
      context.handle(_binERPKeyMeta,
          binERPKey.isAcceptableValue(d.binERPKey.value, _binERPKeyMeta));
    }
    if (d.binCode.present) {
      context.handle(_binCodeMeta,
          binCode.isAcceptableValue(d.binCode.value, _binCodeMeta));
    }
    if (d.binName.present) {
      context.handle(_binNameMeta,
          binName.isAcceptableValue(d.binName.value, _binNameMeta));
    }
    if (d.binDescription.present) {
      context.handle(
          _binDescriptionMeta,
          binDescription.isAcceptableValue(
              d.binDescription.value, _binDescriptionMeta));
    }
    if (d.trayID.present) {
      context.handle(
          _trayIDMeta, trayID.isAcceptableValue(d.trayID.value, _trayIDMeta));
    }
    if (d.trayDescription.present) {
      context.handle(
          _trayDescriptionMeta,
          trayDescription.isAcceptableValue(
              d.trayDescription.value, _trayDescriptionMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoBinID};

  @override
  Bin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Bin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BinsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoBinID.present) {
      map['auto_bin_i_d'] = Variable<int, IntType>(d.autoBinID.value);
    }
    if (d.binID.present) {
      map['bin_i_d'] = Variable<String, StringType>(d.binID.value);
    }
    if (d.binERPKey.present) {
      map['bin_e_r_p_key'] = Variable<String, StringType>(d.binERPKey.value);
    }
    if (d.binCode.present) {
      map['bin_code'] = Variable<String, StringType>(d.binCode.value);
    }
    if (d.binName.present) {
      map['bin_name'] = Variable<String, StringType>(d.binName.value);
    }
    if (d.binDescription.present) {
      map['bin_description'] =
          Variable<String, StringType>(d.binDescription.value);
    }
    if (d.trayID.present) {
      map['tray_i_d'] = Variable<String, StringType>(d.trayID.value);
    }
    if (d.trayDescription.present) {
      map['tray_description'] =
          Variable<String, StringType>(d.trayDescription.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $BinsTable createAlias(String alias) {
    return $BinsTable(_db, alias);
  }
}

class BinMapping extends DataClass implements Insertable<BinMapping> {
  final int auroBinMappingID;
  final String itemID;
  final String binID;
  final String lastUpdated;
  final String row;

  BinMapping(
      {@required this.auroBinMappingID,
      this.itemID,
      this.binID,
      this.lastUpdated,
      this.row});

  factory BinMapping.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return BinMapping(
      auroBinMappingID: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}auro_bin_mapping_i_d']),
      itemID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_i_d']),
      binID:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}bin_i_d']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      row: stringType.mapFromDatabaseResponse(data['${effectivePrefix}row']),
    );
  }

  factory BinMapping.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BinMapping(
      auroBinMappingID: serializer.fromJson<int>(json['auroBinMappingID']),
      itemID: serializer.fromJson<String>(json['itemID']),
      binID: serializer.fromJson<String>(json['binID']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      row: serializer.fromJson<String>(json['row']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'auroBinMappingID': serializer.toJson<int>(auroBinMappingID),
      'itemID': serializer.toJson<String>(itemID),
      'binID': serializer.toJson<String>(binID),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'row': serializer.toJson<String>(row),
    };
  }

  @override
  BinMappingsCompanion createCompanion(bool nullToAbsent) {
    return BinMappingsCompanion(
      auroBinMappingID: auroBinMappingID == null && nullToAbsent
          ? const Value.absent()
          : Value(auroBinMappingID),
      itemID:
          itemID == null && nullToAbsent ? const Value.absent() : Value(itemID),
      binID:
          binID == null && nullToAbsent ? const Value.absent() : Value(binID),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      row: row == null && nullToAbsent ? const Value.absent() : Value(row),
    );
  }

  BinMapping copyWith(
          {int auroBinMappingID,
          String itemID,
          String binID,
          String lastUpdated,
          String row}) =>
      BinMapping(
        auroBinMappingID: auroBinMappingID ?? this.auroBinMappingID,
        itemID: itemID ?? this.itemID,
        binID: binID ?? this.binID,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        row: row ?? this.row,
      );

  @override
  String toString() {
    return (StringBuffer('BinMapping(')
          ..write('auroBinMappingID: $auroBinMappingID, ')
          ..write('itemID: $itemID, ')
          ..write('binID: $binID, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('row: $row')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      auroBinMappingID.hashCode,
      $mrjc(itemID.hashCode,
          $mrjc(binID.hashCode, $mrjc(lastUpdated.hashCode, row.hashCode)))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is BinMapping &&
          other.auroBinMappingID == this.auroBinMappingID &&
          other.itemID == this.itemID &&
          other.binID == this.binID &&
          other.lastUpdated == this.lastUpdated &&
          other.row == this.row);
}

class BinMappingsCompanion extends UpdateCompanion<BinMapping> {
  final Value<int> auroBinMappingID;
  final Value<String> itemID;
  final Value<String> binID;
  final Value<String> lastUpdated;
  final Value<String> row;

  const BinMappingsCompanion({
    this.auroBinMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.binID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  BinMappingsCompanion.insert({
    this.auroBinMappingID = const Value.absent(),
    this.itemID = const Value.absent(),
    this.binID = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.row = const Value.absent(),
  });

  BinMappingsCompanion copyWith(
      {Value<int> auroBinMappingID,
      Value<String> itemID,
      Value<String> binID,
      Value<String> lastUpdated,
      Value<String> row}) {
    return BinMappingsCompanion(
      auroBinMappingID: auroBinMappingID ?? this.auroBinMappingID,
      itemID: itemID ?? this.itemID,
      binID: binID ?? this.binID,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      row: row ?? this.row,
    );
  }
}

class $BinMappingsTable extends BinMappings
    with TableInfo<$BinMappingsTable, BinMapping> {
  final GeneratedDatabase _db;
  final String _alias;

  $BinMappingsTable(this._db, [this._alias]);

  final VerificationMeta _auroBinMappingIDMeta =
      const VerificationMeta('auroBinMappingID');
  GeneratedIntColumn _auroBinMappingID;

  @override
  GeneratedIntColumn get auroBinMappingID =>
      _auroBinMappingID ??= _constructAuroBinMappingID();

  GeneratedIntColumn _constructAuroBinMappingID() {
    return GeneratedIntColumn('auro_bin_mapping_i_d', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIDMeta = const VerificationMeta('itemID');
  GeneratedTextColumn _itemID;

  @override
  GeneratedTextColumn get itemID => _itemID ??= _constructItemID();

  GeneratedTextColumn _constructItemID() {
    return GeneratedTextColumn(
      'item_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _binIDMeta = const VerificationMeta('binID');
  GeneratedTextColumn _binID;

  @override
  GeneratedTextColumn get binID => _binID ??= _constructBinID();

  GeneratedTextColumn _constructBinID() {
    return GeneratedTextColumn(
      'bin_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _rowMeta = const VerificationMeta('row');
  GeneratedTextColumn _row;

  @override
  GeneratedTextColumn get row => _row ??= _constructRow();

  GeneratedTextColumn _constructRow() {
    return GeneratedTextColumn(
      'row',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [auroBinMappingID, itemID, binID, lastUpdated, row];

  @override
  $BinMappingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'bin_mappings';
  @override
  final String actualTableName = 'bin_mappings';

  @override
  VerificationContext validateIntegrity(BinMappingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.auroBinMappingID.present) {
      context.handle(
          _auroBinMappingIDMeta,
          auroBinMappingID.isAcceptableValue(
              d.auroBinMappingID.value, _auroBinMappingIDMeta));
    }
    if (d.itemID.present) {
      context.handle(
          _itemIDMeta, itemID.isAcceptableValue(d.itemID.value, _itemIDMeta));
    }
    if (d.binID.present) {
      context.handle(
          _binIDMeta, binID.isAcceptableValue(d.binID.value, _binIDMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.row.present) {
      context.handle(_rowMeta, row.isAcceptableValue(d.row.value, _rowMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auroBinMappingID};

  @override
  BinMapping map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return BinMapping.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BinMappingsCompanion d) {
    final map = <String, Variable>{};
    if (d.auroBinMappingID.present) {
      map['auro_bin_mapping_i_d'] =
          Variable<int, IntType>(d.auroBinMappingID.value);
    }
    if (d.itemID.present) {
      map['item_i_d'] = Variable<String, StringType>(d.itemID.value);
    }
    if (d.binID.present) {
      map['bin_i_d'] = Variable<String, StringType>(d.binID.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.row.present) {
      map['row'] = Variable<String, StringType>(d.row.value);
    }
    return map;
  }

  @override
  $BinMappingsTable createAlias(String alias) {
    return $BinMappingsTable(_db, alias);
  }
}

class Cart extends DataClass implements Insertable<Cart> {
  final int autoCartId;
  final String itemId;
  final String itemName;
  final String infoData;
  final String itemStatus;
  final double sellingPrice;
  final int leftCount;
  final String itemImagePath;
  final int quantity;

  Cart(
      {@required this.autoCartId,
      this.itemId,
      this.itemName,
      this.infoData,
      this.itemStatus,
      this.sellingPrice,
      this.leftCount,
      this.itemImagePath,
      this.quantity});

  factory Cart.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Cart(
      autoCartId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}auto_cart_id']),
      itemId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}item_id']),
      itemName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_name']),
      infoData: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}info_data']),
      itemStatus: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_status']),
      sellingPrice: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}selling_price']),
      leftCount:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}left_count']),
      itemImagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_image_path']),
      quantity:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
    );
  }

  factory Cart.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Cart(
      autoCartId: serializer.fromJson<int>(json['autoCartId']),
      itemId: serializer.fromJson<String>(json['itemId']),
      itemName: serializer.fromJson<String>(json['itemName']),
      infoData: serializer.fromJson<String>(json['infoData']),
      itemStatus: serializer.fromJson<String>(json['itemStatus']),
      sellingPrice: serializer.fromJson<double>(json['sellingPrice']),
      leftCount: serializer.fromJson<int>(json['leftCount']),
      itemImagePath: serializer.fromJson<String>(json['itemImagePath']),
      quantity: serializer.fromJson<int>(json['quantity']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'autoCartId': serializer.toJson<int>(autoCartId),
      'itemId': serializer.toJson<String>(itemId),
      'itemName': serializer.toJson<String>(itemName),
      'infoData': serializer.toJson<String>(infoData),
      'itemStatus': serializer.toJson<String>(itemStatus),
      'sellingPrice': serializer.toJson<double>(sellingPrice),
      'leftCount': serializer.toJson<int>(leftCount),
      'itemImagePath': serializer.toJson<String>(itemImagePath),
      'quantity': serializer.toJson<int>(quantity),
    };
  }

  @override
  CartsCompanion createCompanion(bool nullToAbsent) {
    return CartsCompanion(
      autoCartId: autoCartId == null && nullToAbsent
          ? const Value.absent()
          : Value(autoCartId),
      itemId:
          itemId == null && nullToAbsent ? const Value.absent() : Value(itemId),
      itemName: itemName == null && nullToAbsent
          ? const Value.absent()
          : Value(itemName),
      infoData: infoData == null && nullToAbsent
          ? const Value.absent()
          : Value(infoData),
      itemStatus: itemStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(itemStatus),
      sellingPrice: sellingPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(sellingPrice),
      leftCount: leftCount == null && nullToAbsent
          ? const Value.absent()
          : Value(leftCount),
      itemImagePath: itemImagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(itemImagePath),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
    );
  }

  Cart copyWith(
          {int autoCartId,
          String itemId,
          String itemName,
          String infoData,
          String itemStatus,
          double sellingPrice,
          int leftCount,
          String itemImagePath,
          int quantity}) =>
      Cart(
        autoCartId: autoCartId ?? this.autoCartId,
        itemId: itemId ?? this.itemId,
        itemName: itemName ?? this.itemName,
        infoData: infoData ?? this.infoData,
        itemStatus: itemStatus ?? this.itemStatus,
        sellingPrice: sellingPrice ?? this.sellingPrice,
        leftCount: leftCount ?? this.leftCount,
        itemImagePath: itemImagePath ?? this.itemImagePath,
        quantity: quantity ?? this.quantity,
      );

  @override
  String toString() {
    return (StringBuffer('Cart(')
          ..write('autoCartId: $autoCartId, ')
          ..write('itemId: $itemId, ')
          ..write('itemName: $itemName, ')
          ..write('infoData: $infoData, ')
          ..write('itemStatus: $itemStatus, ')
          ..write('sellingPrice: $sellingPrice, ')
          ..write('leftCount: $leftCount, ')
          ..write('itemImagePath: $itemImagePath, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      autoCartId.hashCode,
      $mrjc(
          itemId.hashCode,
          $mrjc(
              itemName.hashCode,
              $mrjc(
                  infoData.hashCode,
                  $mrjc(
                      itemStatus.hashCode,
                      $mrjc(
                          sellingPrice.hashCode,
                          $mrjc(
                              leftCount.hashCode,
                              $mrjc(itemImagePath.hashCode,
                                  quantity.hashCode)))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Cart &&
          other.autoCartId == this.autoCartId &&
          other.itemId == this.itemId &&
          other.itemName == this.itemName &&
          other.infoData == this.infoData &&
          other.itemStatus == this.itemStatus &&
          other.sellingPrice == this.sellingPrice &&
          other.leftCount == this.leftCount &&
          other.itemImagePath == this.itemImagePath &&
          other.quantity == this.quantity);
}

class CartsCompanion extends UpdateCompanion<Cart> {
  final Value<int> autoCartId;
  final Value<String> itemId;
  final Value<String> itemName;
  final Value<String> infoData;
  final Value<String> itemStatus;
  final Value<double> sellingPrice;
  final Value<int> leftCount;
  final Value<String> itemImagePath;
  final Value<int> quantity;

  const CartsCompanion({
    this.autoCartId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemName = const Value.absent(),
    this.infoData = const Value.absent(),
    this.itemStatus = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.leftCount = const Value.absent(),
    this.itemImagePath = const Value.absent(),
    this.quantity = const Value.absent(),
  });

  CartsCompanion.insert({
    this.autoCartId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemName = const Value.absent(),
    this.infoData = const Value.absent(),
    this.itemStatus = const Value.absent(),
    this.sellingPrice = const Value.absent(),
    this.leftCount = const Value.absent(),
    this.itemImagePath = const Value.absent(),
    this.quantity = const Value.absent(),
  });

  CartsCompanion copyWith(
      {Value<int> autoCartId,
      Value<String> itemId,
      Value<String> itemName,
      Value<String> infoData,
      Value<String> itemStatus,
      Value<double> sellingPrice,
      Value<int> leftCount,
      Value<String> itemImagePath,
      Value<int> quantity}) {
    return CartsCompanion(
      autoCartId: autoCartId ?? this.autoCartId,
      itemId: itemId ?? this.itemId,
      itemName: itemName ?? this.itemName,
      infoData: infoData ?? this.infoData,
      itemStatus: itemStatus ?? this.itemStatus,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      leftCount: leftCount ?? this.leftCount,
      itemImagePath: itemImagePath ?? this.itemImagePath,
      quantity: quantity ?? this.quantity,
    );
  }
}

class $CartsTable extends Carts with TableInfo<$CartsTable, Cart> {
  final GeneratedDatabase _db;
  final String _alias;

  $CartsTable(this._db, [this._alias]);

  final VerificationMeta _autoCartIdMeta = const VerificationMeta('autoCartId');
  GeneratedIntColumn _autoCartId;

  @override
  GeneratedIntColumn get autoCartId => _autoCartId ??= _constructAutoCartId();

  GeneratedIntColumn _constructAutoCartId() {
    return GeneratedIntColumn('auto_cart_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  GeneratedTextColumn _itemId;

  @override
  GeneratedTextColumn get itemId => _itemId ??= _constructItemId();

  GeneratedTextColumn _constructItemId() {
    return GeneratedTextColumn(
      'item_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _itemNameMeta = const VerificationMeta('itemName');
  GeneratedTextColumn _itemName;

  @override
  GeneratedTextColumn get itemName => _itemName ??= _constructItemName();

  GeneratedTextColumn _constructItemName() {
    return GeneratedTextColumn(
      'item_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _infoDataMeta = const VerificationMeta('infoData');
  GeneratedTextColumn _infoData;

  @override
  GeneratedTextColumn get infoData => _infoData ??= _constructInfoData();

  GeneratedTextColumn _constructInfoData() {
    return GeneratedTextColumn(
      'info_data',
      $tableName,
      true,
    );
  }

  final VerificationMeta _itemStatusMeta = const VerificationMeta('itemStatus');
  GeneratedTextColumn _itemStatus;

  @override
  GeneratedTextColumn get itemStatus => _itemStatus ??= _constructItemStatus();

  GeneratedTextColumn _constructItemStatus() {
    return GeneratedTextColumn(
      'item_status',
      $tableName,
      true,
    );
  }

  final VerificationMeta _sellingPriceMeta =
      const VerificationMeta('sellingPrice');
  GeneratedRealColumn _sellingPrice;

  @override
  GeneratedRealColumn get sellingPrice =>
      _sellingPrice ??= _constructSellingPrice();

  GeneratedRealColumn _constructSellingPrice() {
    return GeneratedRealColumn(
      'selling_price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _leftCountMeta = const VerificationMeta('leftCount');
  GeneratedIntColumn _leftCount;

  @override
  GeneratedIntColumn get leftCount => _leftCount ??= _constructLeftCount();

  GeneratedIntColumn _constructLeftCount() {
    return GeneratedIntColumn(
      'left_count',
      $tableName,
      true,
    );
  }

  final VerificationMeta _itemImagePathMeta =
      const VerificationMeta('itemImagePath');
  GeneratedTextColumn _itemImagePath;

  @override
  GeneratedTextColumn get itemImagePath =>
      _itemImagePath ??= _constructItemImagePath();

  GeneratedTextColumn _constructItemImagePath() {
    return GeneratedTextColumn(
      'item_image_path',
      $tableName,
      true,
    );
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  GeneratedIntColumn _quantity;

  @override
  GeneratedIntColumn get quantity => _quantity ??= _constructQuantity();

  GeneratedIntColumn _constructQuantity() {
    return GeneratedIntColumn(
      'quantity',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        autoCartId,
        itemId,
        itemName,
        infoData,
        itemStatus,
        sellingPrice,
        leftCount,
        itemImagePath,
        quantity
      ];

  @override
  $CartsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'carts';
  @override
  final String actualTableName = 'carts';

  @override
  VerificationContext validateIntegrity(CartsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.autoCartId.present) {
      context.handle(_autoCartIdMeta,
          autoCartId.isAcceptableValue(d.autoCartId.value, _autoCartIdMeta));
    }
    if (d.itemId.present) {
      context.handle(
          _itemIdMeta, itemId.isAcceptableValue(d.itemId.value, _itemIdMeta));
    }
    if (d.itemName.present) {
      context.handle(_itemNameMeta,
          itemName.isAcceptableValue(d.itemName.value, _itemNameMeta));
    }
    if (d.infoData.present) {
      context.handle(_infoDataMeta,
          infoData.isAcceptableValue(d.infoData.value, _infoDataMeta));
    }
    if (d.itemStatus.present) {
      context.handle(_itemStatusMeta,
          itemStatus.isAcceptableValue(d.itemStatus.value, _itemStatusMeta));
    }
    if (d.sellingPrice.present) {
      context.handle(
          _sellingPriceMeta,
          sellingPrice.isAcceptableValue(
              d.sellingPrice.value, _sellingPriceMeta));
    }
    if (d.leftCount.present) {
      context.handle(_leftCountMeta,
          leftCount.isAcceptableValue(d.leftCount.value, _leftCountMeta));
    }
    if (d.itemImagePath.present) {
      context.handle(
          _itemImagePathMeta,
          itemImagePath.isAcceptableValue(
              d.itemImagePath.value, _itemImagePathMeta));
    }
    if (d.quantity.present) {
      context.handle(_quantityMeta,
          quantity.isAcceptableValue(d.quantity.value, _quantityMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {autoCartId};

  @override
  Cart map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Cart.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CartsCompanion d) {
    final map = <String, Variable>{};
    if (d.autoCartId.present) {
      map['auto_cart_id'] = Variable<int, IntType>(d.autoCartId.value);
    }
    if (d.itemId.present) {
      map['item_id'] = Variable<String, StringType>(d.itemId.value);
    }
    if (d.itemName.present) {
      map['item_name'] = Variable<String, StringType>(d.itemName.value);
    }
    if (d.infoData.present) {
      map['info_data'] = Variable<String, StringType>(d.infoData.value);
    }
    if (d.itemStatus.present) {
      map['item_status'] = Variable<String, StringType>(d.itemStatus.value);
    }
    if (d.sellingPrice.present) {
      map['selling_price'] = Variable<double, RealType>(d.sellingPrice.value);
    }
    if (d.leftCount.present) {
      map['left_count'] = Variable<int, IntType>(d.leftCount.value);
    }
    if (d.itemImagePath.present) {
      map['item_image_path'] =
          Variable<String, StringType>(d.itemImagePath.value);
    }
    if (d.quantity.present) {
      map['quantity'] = Variable<int, IntType>(d.quantity.value);
    }
    return map;
  }

  @override
  $CartsTable createAlias(String alias) {
    return $CartsTable(_db, alias);
  }
}

class ColumnSetting extends DataClass implements Insertable<ColumnSetting> {
  final String columnID;
  final String tableNameVal;
  final String fieldName;
  final bool displayEnabled;
  final String customDisplayName;
  final String priorityOrder;
  final bool filter;
  final String filterType;
  final String filterPriorityOrder;
  final bool variationsEnabled;
  final String variationPriorityOrder;
  final bool summaryEnabled;
  final String summaryPriorityOrder;
  final String lastUpdated;
  final String defaultDisplayName;
  final bool orderByEnabled;
  final String orderBy;

  ColumnSetting(
      {this.columnID,
      this.tableNameVal,
      this.fieldName,
      this.displayEnabled,
      this.customDisplayName,
      this.priorityOrder,
      this.filter,
      this.filterType,
      this.filterPriorityOrder,
      this.variationsEnabled,
      this.variationPriorityOrder,
      this.summaryEnabled,
      this.summaryPriorityOrder,
      this.lastUpdated,
      this.defaultDisplayName,
      this.orderByEnabled,
      this.orderBy});

  factory ColumnSetting.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return ColumnSetting(
      columnID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}column_i_d']),
      tableNameVal: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}table_name_val']),
      fieldName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}field_name']),
      displayEnabled: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}display_enabled']),
      customDisplayName: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}custom_display_name']),
      priorityOrder: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}priority_order']),
      filter:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}filter']),
      filterType: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}filter_type']),
      filterPriorityOrder: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}filter_priority_order']),
      variationsEnabled: boolType.mapFromDatabaseResponse(
          data['${effectivePrefix}variations_enabled']),
      variationPriorityOrder: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}variation_priority_order']),
      summaryEnabled: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}summary_enabled']),
      summaryPriorityOrder: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}summary_priority_order']),
      lastUpdated: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_updated']),
      defaultDisplayName: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}default_display_name']),
      orderByEnabled: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}order_by_enabled']),
      orderBy: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}order_by']),
    );
  }

  factory ColumnSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ColumnSetting(
      columnID: serializer.fromJson<String>(json['columnID']),
      tableNameVal: serializer.fromJson<String>(json['tableNameVal']),
      fieldName: serializer.fromJson<String>(json['fieldName']),
      displayEnabled: serializer.fromJson<bool>(json['displayEnabled']),
      customDisplayName: serializer.fromJson<String>(json['customDisplayName']),
      priorityOrder: serializer.fromJson<String>(json['priorityOrder']),
      filter: serializer.fromJson<bool>(json['filter']),
      filterType: serializer.fromJson<String>(json['filterType']),
      filterPriorityOrder:
          serializer.fromJson<String>(json['filterPriorityOrder']),
      variationsEnabled: serializer.fromJson<bool>(json['variationsEnabled']),
      variationPriorityOrder:
          serializer.fromJson<String>(json['variationPriorityOrder']),
      summaryEnabled: serializer.fromJson<bool>(json['summaryEnabled']),
      summaryPriorityOrder:
          serializer.fromJson<String>(json['summaryPriorityOrder']),
      lastUpdated: serializer.fromJson<String>(json['lastUpdated']),
      defaultDisplayName:
          serializer.fromJson<String>(json['defaultDisplayName']),
      orderByEnabled: serializer.fromJson<bool>(json['orderByEnabled']),
      orderBy: serializer.fromJson<String>(json['orderBy']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'columnID': serializer.toJson<String>(columnID),
      'tableNameVal': serializer.toJson<String>(tableNameVal),
      'fieldName': serializer.toJson<String>(fieldName),
      'displayEnabled': serializer.toJson<bool>(displayEnabled),
      'customDisplayName': serializer.toJson<String>(customDisplayName),
      'priorityOrder': serializer.toJson<String>(priorityOrder),
      'filter': serializer.toJson<bool>(filter),
      'filterType': serializer.toJson<String>(filterType),
      'filterPriorityOrder': serializer.toJson<String>(filterPriorityOrder),
      'variationsEnabled': serializer.toJson<bool>(variationsEnabled),
      'variationPriorityOrder':
          serializer.toJson<String>(variationPriorityOrder),
      'summaryEnabled': serializer.toJson<bool>(summaryEnabled),
      'summaryPriorityOrder': serializer.toJson<String>(summaryPriorityOrder),
      'lastUpdated': serializer.toJson<String>(lastUpdated),
      'defaultDisplayName': serializer.toJson<String>(defaultDisplayName),
      'orderByEnabled': serializer.toJson<bool>(orderByEnabled),
      'orderBy': serializer.toJson<String>(orderBy),
    };
  }

  @override
  ColumnSettingsCompanion createCompanion(bool nullToAbsent) {
    return ColumnSettingsCompanion(
      columnID: columnID == null && nullToAbsent
          ? const Value.absent()
          : Value(columnID),
      tableNameVal: tableNameVal == null && nullToAbsent
          ? const Value.absent()
          : Value(tableNameVal),
      fieldName: fieldName == null && nullToAbsent
          ? const Value.absent()
          : Value(fieldName),
      displayEnabled: displayEnabled == null && nullToAbsent
          ? const Value.absent()
          : Value(displayEnabled),
      customDisplayName: customDisplayName == null && nullToAbsent
          ? const Value.absent()
          : Value(customDisplayName),
      priorityOrder: priorityOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(priorityOrder),
      filter:
          filter == null && nullToAbsent ? const Value.absent() : Value(filter),
      filterType: filterType == null && nullToAbsent
          ? const Value.absent()
          : Value(filterType),
      filterPriorityOrder: filterPriorityOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(filterPriorityOrder),
      variationsEnabled: variationsEnabled == null && nullToAbsent
          ? const Value.absent()
          : Value(variationsEnabled),
      variationPriorityOrder: variationPriorityOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(variationPriorityOrder),
      summaryEnabled: summaryEnabled == null && nullToAbsent
          ? const Value.absent()
          : Value(summaryEnabled),
      summaryPriorityOrder: summaryPriorityOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(summaryPriorityOrder),
      lastUpdated: lastUpdated == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUpdated),
      defaultDisplayName: defaultDisplayName == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultDisplayName),
      orderByEnabled: orderByEnabled == null && nullToAbsent
          ? const Value.absent()
          : Value(orderByEnabled),
      orderBy: orderBy == null && nullToAbsent
          ? const Value.absent()
          : Value(orderBy),
    );
  }

  ColumnSetting copyWith(
          {String columnID,
          String tableNameVal,
          String fieldName,
          bool displayEnabled,
          String customDisplayName,
          String priorityOrder,
          bool filter,
          String filterType,
          String filterPriorityOrder,
          bool variationsEnabled,
          String variationPriorityOrder,
          bool summaryEnabled,
          String summaryPriorityOrder,
          String lastUpdated,
          String defaultDisplayName,
          bool orderByEnabled,
          String orderBy}) =>
      ColumnSetting(
        columnID: columnID ?? this.columnID,
        tableNameVal: tableNameVal ?? this.tableNameVal,
        fieldName: fieldName ?? this.fieldName,
        displayEnabled: displayEnabled ?? this.displayEnabled,
        customDisplayName: customDisplayName ?? this.customDisplayName,
        priorityOrder: priorityOrder ?? this.priorityOrder,
        filter: filter ?? this.filter,
        filterType: filterType ?? this.filterType,
        filterPriorityOrder: filterPriorityOrder ?? this.filterPriorityOrder,
        variationsEnabled: variationsEnabled ?? this.variationsEnabled,
        variationPriorityOrder:
            variationPriorityOrder ?? this.variationPriorityOrder,
        summaryEnabled: summaryEnabled ?? this.summaryEnabled,
        summaryPriorityOrder: summaryPriorityOrder ?? this.summaryPriorityOrder,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        defaultDisplayName: defaultDisplayName ?? this.defaultDisplayName,
        orderByEnabled: orderByEnabled ?? this.orderByEnabled,
        orderBy: orderBy ?? this.orderBy,
      );

  @override
  String toString() {
    return (StringBuffer('ColumnSetting(')
          ..write('columnID: $columnID, ')
          ..write('tableNameVal: $tableNameVal, ')
          ..write('fieldName: $fieldName, ')
          ..write('displayEnabled: $displayEnabled, ')
          ..write('customDisplayName: $customDisplayName, ')
          ..write('priorityOrder: $priorityOrder, ')
          ..write('filter: $filter, ')
          ..write('filterType: $filterType, ')
          ..write('filterPriorityOrder: $filterPriorityOrder, ')
          ..write('variationsEnabled: $variationsEnabled, ')
          ..write('variationPriorityOrder: $variationPriorityOrder, ')
          ..write('summaryEnabled: $summaryEnabled, ')
          ..write('summaryPriorityOrder: $summaryPriorityOrder, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('defaultDisplayName: $defaultDisplayName, ')
          ..write('orderByEnabled: $orderByEnabled, ')
          ..write('orderBy: $orderBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      columnID.hashCode,
      $mrjc(
          tableNameVal.hashCode,
          $mrjc(
              fieldName.hashCode,
              $mrjc(
                  displayEnabled.hashCode,
                  $mrjc(
                      customDisplayName.hashCode,
                      $mrjc(
                          priorityOrder.hashCode,
                          $mrjc(
                              filter.hashCode,
                              $mrjc(
                                  filterType.hashCode,
                                  $mrjc(
                                      filterPriorityOrder.hashCode,
                                      $mrjc(
                                          variationsEnabled.hashCode,
                                          $mrjc(
                                              variationPriorityOrder.hashCode,
                                              $mrjc(
                                                  summaryEnabled.hashCode,
                                                  $mrjc(
                                                      summaryPriorityOrder
                                                          .hashCode,
                                                      $mrjc(
                                                          lastUpdated.hashCode,
                                                          $mrjc(
                                                              defaultDisplayName
                                                                  .hashCode,
                                                              $mrjc(
                                                                  orderByEnabled
                                                                      .hashCode,
                                                                  orderBy
                                                                      .hashCode)))))))))))))))));

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ColumnSetting &&
          other.columnID == this.columnID &&
          other.tableNameVal == this.tableNameVal &&
          other.fieldName == this.fieldName &&
          other.displayEnabled == this.displayEnabled &&
          other.customDisplayName == this.customDisplayName &&
          other.priorityOrder == this.priorityOrder &&
          other.filter == this.filter &&
          other.filterType == this.filterType &&
          other.filterPriorityOrder == this.filterPriorityOrder &&
          other.variationsEnabled == this.variationsEnabled &&
          other.variationPriorityOrder == this.variationPriorityOrder &&
          other.summaryEnabled == this.summaryEnabled &&
          other.summaryPriorityOrder == this.summaryPriorityOrder &&
          other.lastUpdated == this.lastUpdated &&
          other.defaultDisplayName == this.defaultDisplayName &&
          other.orderByEnabled == this.orderByEnabled &&
          other.orderBy == this.orderBy);
}

class ColumnSettingsCompanion extends UpdateCompanion<ColumnSetting> {
  final Value<String> columnID;
  final Value<String> tableNameVal;
  final Value<String> fieldName;
  final Value<bool> displayEnabled;
  final Value<String> customDisplayName;
  final Value<String> priorityOrder;
  final Value<bool> filter;
  final Value<String> filterType;
  final Value<String> filterPriorityOrder;
  final Value<bool> variationsEnabled;
  final Value<String> variationPriorityOrder;
  final Value<bool> summaryEnabled;
  final Value<String> summaryPriorityOrder;
  final Value<String> lastUpdated;
  final Value<String> defaultDisplayName;
  final Value<bool> orderByEnabled;
  final Value<String> orderBy;

  const ColumnSettingsCompanion({
    this.columnID = const Value.absent(),
    this.tableNameVal = const Value.absent(),
    this.fieldName = const Value.absent(),
    this.displayEnabled = const Value.absent(),
    this.customDisplayName = const Value.absent(),
    this.priorityOrder = const Value.absent(),
    this.filter = const Value.absent(),
    this.filterType = const Value.absent(),
    this.filterPriorityOrder = const Value.absent(),
    this.variationsEnabled = const Value.absent(),
    this.variationPriorityOrder = const Value.absent(),
    this.summaryEnabled = const Value.absent(),
    this.summaryPriorityOrder = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.defaultDisplayName = const Value.absent(),
    this.orderByEnabled = const Value.absent(),
    this.orderBy = const Value.absent(),
  });

  ColumnSettingsCompanion.insert({
    this.columnID = const Value.absent(),
    this.tableNameVal = const Value.absent(),
    this.fieldName = const Value.absent(),
    this.displayEnabled = const Value.absent(),
    this.customDisplayName = const Value.absent(),
    this.priorityOrder = const Value.absent(),
    this.filter = const Value.absent(),
    this.filterType = const Value.absent(),
    this.filterPriorityOrder = const Value.absent(),
    this.variationsEnabled = const Value.absent(),
    this.variationPriorityOrder = const Value.absent(),
    this.summaryEnabled = const Value.absent(),
    this.summaryPriorityOrder = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.defaultDisplayName = const Value.absent(),
    this.orderByEnabled = const Value.absent(),
    this.orderBy = const Value.absent(),
  });

  ColumnSettingsCompanion copyWith(
      {Value<String> columnID,
      Value<String> tableNameVal,
      Value<String> fieldName,
      Value<bool> displayEnabled,
      Value<String> customDisplayName,
      Value<String> priorityOrder,
      Value<bool> filter,
      Value<String> filterType,
      Value<String> filterPriorityOrder,
      Value<bool> variationsEnabled,
      Value<String> variationPriorityOrder,
      Value<bool> summaryEnabled,
      Value<String> summaryPriorityOrder,
      Value<String> lastUpdated,
      Value<String> defaultDisplayName,
      Value<bool> orderByEnabled,
      Value<String> orderBy}) {
    return ColumnSettingsCompanion(
      columnID: columnID ?? this.columnID,
      tableNameVal: tableNameVal ?? this.tableNameVal,
      fieldName: fieldName ?? this.fieldName,
      displayEnabled: displayEnabled ?? this.displayEnabled,
      customDisplayName: customDisplayName ?? this.customDisplayName,
      priorityOrder: priorityOrder ?? this.priorityOrder,
      filter: filter ?? this.filter,
      filterType: filterType ?? this.filterType,
      filterPriorityOrder: filterPriorityOrder ?? this.filterPriorityOrder,
      variationsEnabled: variationsEnabled ?? this.variationsEnabled,
      variationPriorityOrder:
          variationPriorityOrder ?? this.variationPriorityOrder,
      summaryEnabled: summaryEnabled ?? this.summaryEnabled,
      summaryPriorityOrder: summaryPriorityOrder ?? this.summaryPriorityOrder,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      defaultDisplayName: defaultDisplayName ?? this.defaultDisplayName,
      orderByEnabled: orderByEnabled ?? this.orderByEnabled,
      orderBy: orderBy ?? this.orderBy,
    );
  }
}

class $ColumnSettingsTable extends ColumnSettings
    with TableInfo<$ColumnSettingsTable, ColumnSetting> {
  final GeneratedDatabase _db;
  final String _alias;

  $ColumnSettingsTable(this._db, [this._alias]);

  final VerificationMeta _columnIDMeta = const VerificationMeta('columnID');
  GeneratedTextColumn _columnID;

  @override
  GeneratedTextColumn get columnID => _columnID ??= _constructColumnID();

  GeneratedTextColumn _constructColumnID() {
    return GeneratedTextColumn(
      'column_i_d',
      $tableName,
      true,
    );
  }

  final VerificationMeta _tableNameValMeta =
      const VerificationMeta('tableNameVal');
  GeneratedTextColumn _tableNameVal;

  @override
  GeneratedTextColumn get tableNameVal =>
      _tableNameVal ??= _constructTableNameVal();

  GeneratedTextColumn _constructTableNameVal() {
    return GeneratedTextColumn(
      'table_name_val',
      $tableName,
      true,
    );
  }

  final VerificationMeta _fieldNameMeta = const VerificationMeta('fieldName');
  GeneratedTextColumn _fieldName;

  @override
  GeneratedTextColumn get fieldName => _fieldName ??= _constructFieldName();

  GeneratedTextColumn _constructFieldName() {
    return GeneratedTextColumn(
      'field_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _displayEnabledMeta =
      const VerificationMeta('displayEnabled');
  GeneratedBoolColumn _displayEnabled;

  @override
  GeneratedBoolColumn get displayEnabled =>
      _displayEnabled ??= _constructDisplayEnabled();

  GeneratedBoolColumn _constructDisplayEnabled() {
    return GeneratedBoolColumn(
      'display_enabled',
      $tableName,
      true,
    );
  }

  final VerificationMeta _customDisplayNameMeta =
      const VerificationMeta('customDisplayName');
  GeneratedTextColumn _customDisplayName;

  @override
  GeneratedTextColumn get customDisplayName =>
      _customDisplayName ??= _constructCustomDisplayName();

  GeneratedTextColumn _constructCustomDisplayName() {
    return GeneratedTextColumn(
      'custom_display_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _priorityOrderMeta =
      const VerificationMeta('priorityOrder');
  GeneratedTextColumn _priorityOrder;

  @override
  GeneratedTextColumn get priorityOrder =>
      _priorityOrder ??= _constructPriorityOrder();

  GeneratedTextColumn _constructPriorityOrder() {
    return GeneratedTextColumn(
      'priority_order',
      $tableName,
      true,
    );
  }

  final VerificationMeta _filterMeta = const VerificationMeta('filter');
  GeneratedBoolColumn _filter;

  @override
  GeneratedBoolColumn get filter => _filter ??= _constructFilter();

  GeneratedBoolColumn _constructFilter() {
    return GeneratedBoolColumn(
      'filter',
      $tableName,
      true,
    );
  }

  final VerificationMeta _filterTypeMeta = const VerificationMeta('filterType');
  GeneratedTextColumn _filterType;

  @override
  GeneratedTextColumn get filterType => _filterType ??= _constructFilterType();

  GeneratedTextColumn _constructFilterType() {
    return GeneratedTextColumn(
      'filter_type',
      $tableName,
      true,
    );
  }

  final VerificationMeta _filterPriorityOrderMeta =
      const VerificationMeta('filterPriorityOrder');
  GeneratedTextColumn _filterPriorityOrder;

  @override
  GeneratedTextColumn get filterPriorityOrder =>
      _filterPriorityOrder ??= _constructFilterPriorityOrder();

  GeneratedTextColumn _constructFilterPriorityOrder() {
    return GeneratedTextColumn(
      'filter_priority_order',
      $tableName,
      true,
    );
  }

  final VerificationMeta _variationsEnabledMeta =
      const VerificationMeta('variationsEnabled');
  GeneratedBoolColumn _variationsEnabled;

  @override
  GeneratedBoolColumn get variationsEnabled =>
      _variationsEnabled ??= _constructVariationsEnabled();

  GeneratedBoolColumn _constructVariationsEnabled() {
    return GeneratedBoolColumn(
      'variations_enabled',
      $tableName,
      true,
    );
  }

  final VerificationMeta _variationPriorityOrderMeta =
      const VerificationMeta('variationPriorityOrder');
  GeneratedTextColumn _variationPriorityOrder;

  @override
  GeneratedTextColumn get variationPriorityOrder =>
      _variationPriorityOrder ??= _constructVariationPriorityOrder();

  GeneratedTextColumn _constructVariationPriorityOrder() {
    return GeneratedTextColumn(
      'variation_priority_order',
      $tableName,
      true,
    );
  }

  final VerificationMeta _summaryEnabledMeta =
      const VerificationMeta('summaryEnabled');
  GeneratedBoolColumn _summaryEnabled;

  @override
  GeneratedBoolColumn get summaryEnabled =>
      _summaryEnabled ??= _constructSummaryEnabled();

  GeneratedBoolColumn _constructSummaryEnabled() {
    return GeneratedBoolColumn(
      'summary_enabled',
      $tableName,
      true,
    );
  }

  final VerificationMeta _summaryPriorityOrderMeta =
      const VerificationMeta('summaryPriorityOrder');
  GeneratedTextColumn _summaryPriorityOrder;

  @override
  GeneratedTextColumn get summaryPriorityOrder =>
      _summaryPriorityOrder ??= _constructSummaryPriorityOrder();

  GeneratedTextColumn _constructSummaryPriorityOrder() {
    return GeneratedTextColumn(
      'summary_priority_order',
      $tableName,
      true,
    );
  }

  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  GeneratedTextColumn _lastUpdated;

  @override
  GeneratedTextColumn get lastUpdated =>
      _lastUpdated ??= _constructLastUpdated();

  GeneratedTextColumn _constructLastUpdated() {
    return GeneratedTextColumn(
      'last_updated',
      $tableName,
      true,
    );
  }

  final VerificationMeta _defaultDisplayNameMeta =
      const VerificationMeta('defaultDisplayName');
  GeneratedTextColumn _defaultDisplayName;

  @override
  GeneratedTextColumn get defaultDisplayName =>
      _defaultDisplayName ??= _constructDefaultDisplayName();

  GeneratedTextColumn _constructDefaultDisplayName() {
    return GeneratedTextColumn(
      'default_display_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _orderByEnabledMeta =
      const VerificationMeta('orderByEnabled');
  GeneratedBoolColumn _orderByEnabled;

  @override
  GeneratedBoolColumn get orderByEnabled =>
      _orderByEnabled ??= _constructOrderByEnabled();

  GeneratedBoolColumn _constructOrderByEnabled() {
    return GeneratedBoolColumn(
      'order_by_enabled',
      $tableName,
      true,
    );
  }

  final VerificationMeta _orderByMeta = const VerificationMeta('orderBy');
  GeneratedTextColumn _orderBy;

  @override
  GeneratedTextColumn get orderBy => _orderBy ??= _constructOrderBy();

  GeneratedTextColumn _constructOrderBy() {
    return GeneratedTextColumn(
      'order_by',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        columnID,
        tableNameVal,
        fieldName,
        displayEnabled,
        customDisplayName,
        priorityOrder,
        filter,
        filterType,
        filterPriorityOrder,
        variationsEnabled,
        variationPriorityOrder,
        summaryEnabled,
        summaryPriorityOrder,
        lastUpdated,
        defaultDisplayName,
        orderByEnabled,
        orderBy
      ];

  @override
  $ColumnSettingsTable get asDslTable => this;

  @override
  String get $tableName => _alias ?? 'column_settings';
  @override
  final String actualTableName = 'column_settings';

  @override
  VerificationContext validateIntegrity(ColumnSettingsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.columnID.present) {
      context.handle(_columnIDMeta,
          columnID.isAcceptableValue(d.columnID.value, _columnIDMeta));
    }
    if (d.tableNameVal.present) {
      context.handle(
          _tableNameValMeta,
          tableNameVal.isAcceptableValue(
              d.tableNameVal.value, _tableNameValMeta));
    }
    if (d.fieldName.present) {
      context.handle(_fieldNameMeta,
          fieldName.isAcceptableValue(d.fieldName.value, _fieldNameMeta));
    }
    if (d.displayEnabled.present) {
      context.handle(
          _displayEnabledMeta,
          displayEnabled.isAcceptableValue(
              d.displayEnabled.value, _displayEnabledMeta));
    }
    if (d.customDisplayName.present) {
      context.handle(
          _customDisplayNameMeta,
          customDisplayName.isAcceptableValue(
              d.customDisplayName.value, _customDisplayNameMeta));
    }
    if (d.priorityOrder.present) {
      context.handle(
          _priorityOrderMeta,
          priorityOrder.isAcceptableValue(
              d.priorityOrder.value, _priorityOrderMeta));
    }
    if (d.filter.present) {
      context.handle(
          _filterMeta, filter.isAcceptableValue(d.filter.value, _filterMeta));
    }
    if (d.filterType.present) {
      context.handle(_filterTypeMeta,
          filterType.isAcceptableValue(d.filterType.value, _filterTypeMeta));
    }
    if (d.filterPriorityOrder.present) {
      context.handle(
          _filterPriorityOrderMeta,
          filterPriorityOrder.isAcceptableValue(
              d.filterPriorityOrder.value, _filterPriorityOrderMeta));
    }
    if (d.variationsEnabled.present) {
      context.handle(
          _variationsEnabledMeta,
          variationsEnabled.isAcceptableValue(
              d.variationsEnabled.value, _variationsEnabledMeta));
    }
    if (d.variationPriorityOrder.present) {
      context.handle(
          _variationPriorityOrderMeta,
          variationPriorityOrder.isAcceptableValue(
              d.variationPriorityOrder.value, _variationPriorityOrderMeta));
    }
    if (d.summaryEnabled.present) {
      context.handle(
          _summaryEnabledMeta,
          summaryEnabled.isAcceptableValue(
              d.summaryEnabled.value, _summaryEnabledMeta));
    }
    if (d.summaryPriorityOrder.present) {
      context.handle(
          _summaryPriorityOrderMeta,
          summaryPriorityOrder.isAcceptableValue(
              d.summaryPriorityOrder.value, _summaryPriorityOrderMeta));
    }
    if (d.lastUpdated.present) {
      context.handle(_lastUpdatedMeta,
          lastUpdated.isAcceptableValue(d.lastUpdated.value, _lastUpdatedMeta));
    }
    if (d.defaultDisplayName.present) {
      context.handle(
          _defaultDisplayNameMeta,
          defaultDisplayName.isAcceptableValue(
              d.defaultDisplayName.value, _defaultDisplayNameMeta));
    }
    if (d.orderByEnabled.present) {
      context.handle(
          _orderByEnabledMeta,
          orderByEnabled.isAcceptableValue(
              d.orderByEnabled.value, _orderByEnabledMeta));
    }
    if (d.orderBy.present) {
      context.handle(_orderByMeta,
          orderBy.isAcceptableValue(d.orderBy.value, _orderByMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};

  @override
  ColumnSetting map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ColumnSetting.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ColumnSettingsCompanion d) {
    final map = <String, Variable>{};
    if (d.columnID.present) {
      map['column_i_d'] = Variable<String, StringType>(d.columnID.value);
    }
    if (d.tableNameVal.present) {
      map['table_name_val'] =
          Variable<String, StringType>(d.tableNameVal.value);
    }
    if (d.fieldName.present) {
      map['field_name'] = Variable<String, StringType>(d.fieldName.value);
    }
    if (d.displayEnabled.present) {
      map['display_enabled'] = Variable<bool, BoolType>(d.displayEnabled.value);
    }
    if (d.customDisplayName.present) {
      map['custom_display_name'] =
          Variable<String, StringType>(d.customDisplayName.value);
    }
    if (d.priorityOrder.present) {
      map['priority_order'] =
          Variable<String, StringType>(d.priorityOrder.value);
    }
    if (d.filter.present) {
      map['filter'] = Variable<bool, BoolType>(d.filter.value);
    }
    if (d.filterType.present) {
      map['filter_type'] = Variable<String, StringType>(d.filterType.value);
    }
    if (d.filterPriorityOrder.present) {
      map['filter_priority_order'] =
          Variable<String, StringType>(d.filterPriorityOrder.value);
    }
    if (d.variationsEnabled.present) {
      map['variations_enabled'] =
          Variable<bool, BoolType>(d.variationsEnabled.value);
    }
    if (d.variationPriorityOrder.present) {
      map['variation_priority_order'] =
          Variable<String, StringType>(d.variationPriorityOrder.value);
    }
    if (d.summaryEnabled.present) {
      map['summary_enabled'] = Variable<bool, BoolType>(d.summaryEnabled.value);
    }
    if (d.summaryPriorityOrder.present) {
      map['summary_priority_order'] =
          Variable<String, StringType>(d.summaryPriorityOrder.value);
    }
    if (d.lastUpdated.present) {
      map['last_updated'] = Variable<String, StringType>(d.lastUpdated.value);
    }
    if (d.defaultDisplayName.present) {
      map['default_display_name'] =
          Variable<String, StringType>(d.defaultDisplayName.value);
    }
    if (d.orderByEnabled.present) {
      map['order_by_enabled'] =
          Variable<bool, BoolType>(d.orderByEnabled.value);
    }
    if (d.orderBy.present) {
      map['order_by'] = Variable<String, StringType>(d.orderBy.value);
    }
    return map;
  }

  @override
  $ColumnSettingsTable createAlias(String alias) {
    return $ColumnSettingsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CollectionMappingsTable _collectionMappings;

  $CollectionMappingsTable get collectionMappings =>
      _collectionMappings ??= $CollectionMappingsTable(this);
  $CollectionsTable _collections;

  $CollectionsTable get collections => _collections ??= $CollectionsTable(this);
  $ClassificationsTable _classifications;

  $ClassificationsTable get classifications =>
      _classifications ??= $ClassificationsTable(this);
  $ItemsTable _items;

  $ItemsTable get items => _items ??= $ItemsTable(this);
  $StonesTable _stones;

  $StonesTable get stones => _stones ??= $StonesTable(this);
  $StoneMappingsTable _stoneMappings;

  $StoneMappingsTable get stoneMappings =>
      _stoneMappings ??= $StoneMappingsTable(this);
  $SemiFinishedsTable _semiFinisheds;

  $SemiFinishedsTable get semiFinisheds =>
      _semiFinisheds ??= $SemiFinishedsTable(this);
  $SemiFinishedMappingsTable _semiFinishedMappings;

  $SemiFinishedMappingsTable get semiFinishedMappings =>
      _semiFinishedMappings ??= $SemiFinishedMappingsTable(this);
  $MaterialsTable _materials;

  $MaterialsTable get materials => _materials ??= $MaterialsTable(this);
  $MaterialMappingsTable _materialMappings;

  $MaterialMappingsTable get materialMappings =>
      _materialMappings ??= $MaterialMappingsTable(this);
  $LaborsTable _labors;

  $LaborsTable get labors => _labors ??= $LaborsTable(this);
  $LaborMappingsTable _laborMappings;

  $LaborMappingsTable get laborMappings =>
      _laborMappings ??= $LaborMappingsTable(this);
  $MiscellaneousesTable _miscellaneouses;

  $MiscellaneousesTable get miscellaneouses =>
      _miscellaneouses ??= $MiscellaneousesTable(this);
  $MiscellaneousMappingsTable _miscellaneousMappings;

  $MiscellaneousMappingsTable get miscellaneousMappings =>
      _miscellaneousMappings ??= $MiscellaneousMappingsTable(this);
  $BinsTable _bins;

  $BinsTable get bins => _bins ??= $BinsTable(this);
  $BinMappingsTable _binMappings;

  $BinMappingsTable get binMappings => _binMappings ??= $BinMappingsTable(this);
  $CartsTable _carts;

  $CartsTable get carts => _carts ??= $CartsTable(this);
  $ColumnSettingsTable _columnSettings;

  $ColumnSettingsTable get columnSettings =>
      _columnSettings ??= $ColumnSettingsTable(this);
  CollectionMappingDao _collectionMappingDao;

  CollectionMappingDao get collectionMappingDao =>
      _collectionMappingDao ??= CollectionMappingDao(this as AppDatabase);
  CollectionDao _collectionDao;

  CollectionDao get collectionDao =>
      _collectionDao ??= CollectionDao(this as AppDatabase);
  ClassificationDao _classificationDao;

  ClassificationDao get classificationDao =>
      _classificationDao ??= ClassificationDao(this as AppDatabase);
  ItemDao _itemDao;

  ItemDao get itemDao => _itemDao ??= ItemDao(this as AppDatabase);
  StoneDao _stoneDao;

  StoneDao get stoneDao => _stoneDao ??= StoneDao(this as AppDatabase);
  StoneMappingDao _stoneMappingDao;

  StoneMappingDao get stoneMappingDao =>
      _stoneMappingDao ??= StoneMappingDao(this as AppDatabase);
  SemiFinishedDao _semiFinishedDao;

  SemiFinishedDao get semiFinishedDao =>
      _semiFinishedDao ??= SemiFinishedDao(this as AppDatabase);
  SemiFinishedMappingsDao _semiFinishedMappingsDao;

  SemiFinishedMappingsDao get semiFinishedMappingsDao =>
      _semiFinishedMappingsDao ??= SemiFinishedMappingsDao(this as AppDatabase);
  MaterialDao _materialDao;

  MaterialDao get materialDao =>
      _materialDao ??= MaterialDao(this as AppDatabase);
  MaterialMappingDao _materialMappingDao;

  MaterialMappingDao get materialMappingDao =>
      _materialMappingDao ??= MaterialMappingDao(this as AppDatabase);
  LaborDao _laborDao;

  LaborDao get laborDao => _laborDao ??= LaborDao(this as AppDatabase);
  LaborMappingDao _laborMappingDao;

  LaborMappingDao get laborMappingDao =>
      _laborMappingDao ??= LaborMappingDao(this as AppDatabase);
  MiscellaneousDao _miscellaneousDao;

  MiscellaneousDao get miscellaneousDao =>
      _miscellaneousDao ??= MiscellaneousDao(this as AppDatabase);
  MiscellaneousMappingDao _miscellaneousMappingDao;

  MiscellaneousMappingDao get miscellaneousMappingDao =>
      _miscellaneousMappingDao ??= MiscellaneousMappingDao(this as AppDatabase);
  BinDao _binDao;

  BinDao get binDao => _binDao ??= BinDao(this as AppDatabase);
  BinMappingDao _binMappingDao;

  BinMappingDao get binMappingDao =>
      _binMappingDao ??= BinMappingDao(this as AppDatabase);
  CartDao _cartDao;

  CartDao get cartDao => _cartDao ??= CartDao(this as AppDatabase);
  FilterDao _filterDao;

  FilterDao get filterDao => _filterDao ??= FilterDao(this as AppDatabase);
  ColumnSettingDao _columnSettingDao;

  ColumnSettingDao get columnSettingDao =>
      _columnSettingDao ??= ColumnSettingDao(this as AppDatabase);

  Classification _rowToClassification(QueryRow row) {
    return Classification(
      autoClassificationID: row.readInt('auto_classification_i_d'),
      classificationSettingsID: row.readString('classification_settings_i_d'),
      enumColumnName: row.readString('enum_column_name'),
      enumFieldValue: row.readString('enum_field_value'),
      enumFieldValueDisplayName:
          row.readString('enum_field_value_display_name'),
      enumFieldValueImageName: row.readString('enum_field_value_image_name'),
      classificationHeader: row.readString('classification_header'),
      parentClassificationID: row.readString('parent_classification_i_d'),
      lastUpdated: row.readString('last_updated'),
      tableNameVal: row.readString('table_name_val'),
    );
  }

  Selectable<Classification> parentDataQuery() {
    return customSelectQuery(
        'select * from classifications where parent_classification_i_d IS \'\'',
        variables: [],
        readsFrom: {classifications}).map(_rowToClassification);
  }

  Future<List<Classification>> parentData() {
    return parentDataQuery().get();
  }

  Stream<List<Classification>> watchParentData() {
    return parentDataQuery().watch();
  }

  Selectable<Classification> categoryDataQuery() {
    return customSelectQuery(
        'select * from classifications where parent_classification_i_d IS \'0\' and classification_header IS \'\'',
        variables: [],
        readsFrom: {classifications}).map(_rowToClassification);
  }

  Future<List<Classification>> categoryData() {
    return categoryDataQuery().get();
  }

  Stream<List<Classification>> watchCategoryData() {
    return categoryDataQuery().watch();
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();

  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        collectionMappings,
        collections,
        classifications,
        items,
        stones,
        stoneMappings,
        semiFinisheds,
        semiFinishedMappings,
        materials,
        materialMappings,
        labors,
        laborMappings,
        miscellaneouses,
        miscellaneousMappings,
        bins,
        binMappings,
        carts,
        columnSettings
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$CollectionMappingDaoMixin on DatabaseAccessor<AppDatabase> {
  $CollectionMappingsTable get collectionMappings => db.collectionMappings;
}
mixin _$CollectionDaoMixin on DatabaseAccessor<AppDatabase> {
  $CollectionsTable get collections => db.collections;
}
mixin _$ClassificationDaoMixin on DatabaseAccessor<AppDatabase> {
  $ClassificationsTable get classifications => db.classifications;
}
mixin _$ItemDaoMixin on DatabaseAccessor<AppDatabase> {
  $ItemsTable get items => db.items;
}
mixin _$StoneDaoMixin on DatabaseAccessor<AppDatabase> {
  $StonesTable get stones => db.stones;
}
mixin _$StoneMappingDaoMixin on DatabaseAccessor<AppDatabase> {
  $StoneMappingsTable get stoneMappings => db.stoneMappings;
}
mixin _$SemiFinishedDaoMixin on DatabaseAccessor<AppDatabase> {
  $SemiFinishedsTable get semiFinisheds => db.semiFinisheds;
}
mixin _$SemiFinishedMappingsDaoMixin on DatabaseAccessor<AppDatabase> {
  $SemiFinishedMappingsTable get semiFinishedMappings =>
      db.semiFinishedMappings;
}
mixin _$MaterialDaoMixin on DatabaseAccessor<AppDatabase> {
  $MaterialsTable get materials => db.materials;
}
mixin _$MaterialMappingDaoMixin on DatabaseAccessor<AppDatabase> {
  $MaterialMappingsTable get materialMappings => db.materialMappings;
}
mixin _$LaborDaoMixin on DatabaseAccessor<AppDatabase> {
  $LaborsTable get labors => db.labors;
}
mixin _$LaborMappingDaoMixin on DatabaseAccessor<AppDatabase> {
  $LaborMappingsTable get laborMappings => db.laborMappings;
}
mixin _$MiscellaneousDaoMixin on DatabaseAccessor<AppDatabase> {
  $MiscellaneousesTable get miscellaneouses => db.miscellaneouses;
}
mixin _$MiscellaneousMappingDaoMixin on DatabaseAccessor<AppDatabase> {
  $MiscellaneousMappingsTable get miscellaneousMappings =>
      db.miscellaneousMappings;
}
mixin _$BinDaoMixin on DatabaseAccessor<AppDatabase> {
  $BinsTable get bins => db.bins;
}
mixin _$BinMappingDaoMixin on DatabaseAccessor<AppDatabase> {
  $BinMappingsTable get binMappings => db.binMappings;
}
mixin _$CartDaoMixin on DatabaseAccessor<AppDatabase> {
  $CartsTable get carts => db.carts;
}
mixin _$ColumnSettingDaoMixin on DatabaseAccessor<AppDatabase> {
  $ColumnSettingsTable get columnSettings => db.columnSettings;
}
mixin _$FilterDaoMixin on DatabaseAccessor<AppDatabase> {
  $ItemsTable get items => db.items;

  $StonesTable get stones => db.stones;
}
