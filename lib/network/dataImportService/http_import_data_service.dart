import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:tiara_app/db/database_helper.dart';
import 'package:tiara_app/db/localDB/my_database.dart' as prefix0;
import 'package:tiara_app/ui/widgets/alert_dialog_box.dart';

prefix0.AppDatabase appDatabase = DatabaseHelper().getDb();
final _configBox = Hive.box("configurations");
final url = _configBox.get("url");

const batchSizeConst = 500;

class HttpImportDataService {
//Used to fetch Classification Settings

  Future getClassificationDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedClassificationUrl =
        '$url/api/getClassifications?lastSyncTime=0';
    Response response = await get(_fixedClassificationUrl)
        .catchError((error) => debugPrint("Error: $error"));
    var responseData = json.decode(response.body);
    if (responseData["Status"] == "SUCCESS") {
      List<prefix0.Classification> classifications =
          parseListOfClassification(response.body);
      await appDatabase.classificationDao.deleteAllClassifications();
      await appDatabase.classificationDao
          .insertClassificationData(classifications);
      debugPrint("Classification Data added to Database Successfully");
    } else {
      debugPrint("Classification Data Failed");
    }
  }

  List<prefix0.Classification> parseListOfClassification(String body) {
    var responseData = json.decode(body);
    List<dynamic> collectionRawData = responseData["Data"] as List;
    return collectionRawData
        .map(
          (dynamic item) => prefix0.Classification.fromJson(item),
        )
        .toList();
  }

  //Used to fetch CollectionDetails
  Future getDataCollectionDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedCollectionDetailsUrl =
        '$url/api/fetchMaster?master=collection&start=0&amount=9&lastSyncTime=$lastUpdated';
    debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedCollectionDetailsUrl)
        .catchError((error) => debugPrint("Error: $error"));
    //  debugPrint('Collection debug data details');
    List<prefix0.Collection> items = parseListOfCollection(response.body);
    debugPrint('Getting Collection Data $items');

    //check classification List not null and empty
    await appDatabase.collectionDao.deleteAllCollection();
    await appDatabase.collectionDao.insertCollectionData(items);
    debugPrint("Adding all Collection Details Data.....");
    List<prefix0.Collection> updatedItems =
        await appDatabase.collectionDao.getAllCollectionDetails();
    debugPrint('Getting Updated Collection Data to DB $updatedItems');
  }

  List<prefix0.Collection> parseListOfCollection(String body) {
    debugPrint("Collection debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.Collection.fromJson(item),
        )
        .toList();
  }

  //Used to fetch SemiFinished Mapping
  Future getSemiFinishedMappingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedSemiFinishedMappingDetailsUrl =
        '$url/api/fetchMaster?master=semifinishedMapping&start=0&amount=500&lastSyncTime=$lastUpdated';
    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedSemiFinishedMappingDetailsUrl)
        .catchError((error) => debugPrint("Error: $error"));
    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');

    var responseData = json.decode(response.body);
    debugPrint("Printing ${responseData["Status"]}");
    if (responseData["Status"] == "SUCCESS") {
      List<prefix0.SemiFinishedMapping> items =
          parseListOfSemiFinishedMapping(response.body);
      // debugPrint('Getting Collection Data $items');

      //check classification List not null and empty
      await appDatabase.semiFinishedMappingsDao
          .insertSemiFinishedMappingData(items);
      debugPrint("Adding all SemiFinishedMapping Mapping Details Data.....");
      List<prefix0.SemiFinishedMapping> updatedItems = await appDatabase
          .semiFinishedMappingsDao
          .getAllSemiFinishedMappingDetails();
      debugPrint(
          'Getting Updated SemiFinished Mapping Data to DB $updatedItems');
    }
  }

  List<prefix0.SemiFinishedMapping> parseListOfSemiFinishedMapping(
      String body) {
    debugPrint("SemiFinishedMapping debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.SemiFinishedMapping.fromJson(item),
        )
        .toList();
  }

  //Used to fetch SemiFinished Master
  Future getSemiFinishedDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedSemiFinishedDetailsUrl =
        '$url/api/fetchMaster?master=semifinished&start=0&amount=500&lastSyncTime=$lastUpdated';

    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedSemiFinishedDetailsUrl)
        .catchError((error) => debugPrint("Error: $error"));

    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');
    var responseData = json.decode(response.body);
    debugPrint("Printing ${responseData["Status"]}");
    if (responseData["Status"] == "SUCCESS") {
      List<prefix0.SemiFinished> items = parseListOfSemiFinished(response.body);
      // debugPrint('Getting Collection Data $items');

      //check classification List not null and empty
      await appDatabase.semiFinishedDao.insertSemiFinishedData(items);
      debugPrint("Adding all SemiFinished Mapping Details Data.....");
      List<prefix0.SemiFinished> updatedItems =
          await appDatabase.semiFinishedDao.getAllSemiFinishedDetails();
      debugPrint('Getting Updated SemiFinished Data to DB $updatedItems');
    }
  }

  List<prefix0.SemiFinished> parseListOfSemiFinished(String body) {
    debugPrint("SemiFinished debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.SemiFinished.fromJson(item),
        )
        .toList();
  }

  //Used to fetch Labor Master
  Future getLaborDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedLaborDetailsUrl =
        '$url/api/fetchMaster?master=labor&start=0&amount=9&lastSyncTime=$lastUpdated';
    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedLaborDetailsUrl)
        .catchError((error) => debugPrint("Error: $error"));
    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');
    List<prefix0.Labor> items = parseListOfLabor(response.body);
    // debugPrint('Getting Collection Data $items');

    //check classification List not null and empty
    await appDatabase.laborDao.insertLaborData(items);
    debugPrint("Adding all Labor Details Data.....");
    List<prefix0.Labor> updatedItems =
        await appDatabase.laborDao.getAllLaborDetails();
    debugPrint('Getting Updated Labor Data to DB $updatedItems');
  }

  List<prefix0.Labor> parseListOfLabor(String body) {
    debugPrint("Labor debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.Labor.fromJson(item),
        )
        .toList();
  }

  //Used to fetch Labor Mapping
  Future getLaborMappingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedLaborMappingDetailsUrl =
        '$url/api/fetchMaster?master=laborMapping&start=0&amount=9&lastSyncTime=$lastUpdated';

    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedLaborMappingDetailsUrl)
        .catchError((error) => debugPrint("Error: $error"));
    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');
    List<prefix0.LaborMapping> items = parseListOfLaborMapping(response.body);
    // debugPrint('Getting Collection Data $items');

    //check classification List not null and empty
    await appDatabase.laborMappingDao.insertLaborMappingData(items);
    debugPrint("LaborMapping all Labor Mapping Details Data.....");
    List<prefix0.LaborMapping> updatedItems =
        await appDatabase.laborMappingDao.getAllLaborMappingDetails();
    debugPrint('Getting Updated LaborMapping Data to DB $updatedItems');
  }

  List<prefix0.LaborMapping> parseListOfLaborMapping(String body) {
    debugPrint("LaborMapping debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.LaborMapping.fromJson(item),
        )
        .toList();
  }

//Used to fetch the Miscellaneous Master
  Future getMiscellaneousDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedMiscelaneousUrls =
        '$url/api/fetchMaster?master=miscellaneous&start=0&amount=9&lastSyncTime=$lastUpdated';
    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedMiscelaneousUrls)
        .catchError((error) => debugPrint("Error: $error"));
    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');

    var responseData = json.decode(response.body);
    debugPrint("Printing ${responseData["Status"]}");
    if (responseData["Status"] == "SUCCESS") {
      List<prefix0.Miscellaneous> items =
          parseListOfMiscellaneous(response.body);
      // debugPrint('Getting Collection Data $items');

      //check classification List not null and empty
      await appDatabase.miscellaneousDao.insertMiscellaneousData(items);
      debugPrint("Adding all Miscellaneous Details Data.....");
      List<prefix0.Miscellaneous> updatedItems =
          await appDatabase.miscellaneousDao.getAllMiscellaneousDetails();
      debugPrint('Getting Updated Miscellaneous Data to DB $updatedItems');
    }
  }

  List<prefix0.Miscellaneous> parseListOfMiscellaneous(String body) {
    debugPrint("Miscellaneous debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.Miscellaneous.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Miscellaneous Mapping
  Future getMiscellaneousMappingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedMiscelaneousMappingUrls =
        '$url/api/fetchMaster?master=miscellaneousMapping&start=0&amount=9&lastSyncTime=$lastUpdated';

    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedMiscelaneousMappingUrls)
        .catchError((error) => debugPrint("Error: $error"));
    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');
    var responseData = json.decode(response.body);
    debugPrint("Printing ${responseData["Status"]}");
    if (responseData["Status"] == "SUCCESS") {
      List<prefix0.MiscellaneousMapping> items =
          parseListOfMiscellaneousMapping(response.body);
      // debugPrint('Getting Collection Data $items');

      //check classification List not null and empty
      await appDatabase.miscellaneousMappingDao
          .insertMiscellaneousMappingData(items);
      debugPrint("Adding all MiscellaneousMapping Details Data.....");
      List<prefix0.MiscellaneousMapping> updatedItems = await appDatabase
          .miscellaneousMappingDao
          .getAllMiscellaneousMappingDetails();
      debugPrint(
          'Getting Updated MiscellaneousMapping Data to DB $updatedItems');
    } else {
      debugPrint("Failed to Fetch");
    }
  }

  List<prefix0.MiscellaneousMapping> parseListOfMiscellaneousMapping(
      String body) {
    debugPrint("MiscellaneousMapping debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.MiscellaneousMapping.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Bin Master
  Future getBinDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedBinUrls =
        '$url/api/fetchMaster?master=bin&start=0&amount=9&lastSyncTime=$lastUpdated';

    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedBinUrls)
        .catchError((error) => debugPrint("Error: $error"));
    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');

    var responseData = json.decode(response.body);
    debugPrint("Printing ${responseData["Status"]}");
    if (responseData["Status"] == "SUCCESS") {
      List<prefix0.Bin> items = parseListOfBin(response.body);
      // debugPrint('Getting Collection Data $items');

      //check classification List not null and empty

      await appDatabase.binDao.insertBinData(items);
      debugPrint("Adding all Bin Details Data.....");
      List<prefix0.Bin> updatedItems =
          await appDatabase.binDao.getAllBinDetails();
      debugPrint('Getting Updated Bin Data to DB $updatedItems');
    } else {
      debugPrint("Failed to Fetch Bin Details");
    }
  }

  List<prefix0.Bin> parseListOfBin(String body) {
    debugPrint("Bin debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.Bin.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Bin Mapping
  Future getBinMappingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedBinMappingUrls =
        '$url/api/fetchMaster?master=binMapping&start=0&amount=9&lastSyncTime=$lastUpdated';

    //debugPrint("Collection debug data Method Calling");
    Response response = await get(_fixedBinMappingUrls)
        .catchError((error) => debugPrint("Error: $error"));
    //debugPrint(response.body);
    //  debugPrint('Collection debug data details');
    var responseData = json.decode(response.body);
    debugPrint("Printing ${responseData["Status"]}");
    if (responseData["Status"] == "SUCCESS") {
      List<prefix0.BinMapping> items = parseListOfBinMapping(response.body);
      // debugPrint('Getting Collection Data $items');

      //check classification List not null and empty

      await appDatabase.binMappingDao.insertBinMappingData(items);
      debugPrint("Adding all Bin Maping Details Data.....");
      List<prefix0.BinMapping> updatedItems =
          await appDatabase.binMappingDao.getAllBinMappingDetails();
      debugPrint('Getting Updated Bin Mapping Data to DB $updatedItems');
    } else {
      debugPrint("Failed to Fetch Bin Mapping");
    }
  }

  List<prefix0.BinMapping> parseListOfBinMapping(String body) {
    debugPrint("Bin Mapping debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.BinMapping.fromJson(item),
        )
        .toList();
  }

  Future getCollectionMappingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedCollectionMappingDetailsUrl =
        '$url/api/fetchMaster?master=collectionMapping&start=0&amount=9&lastSyncTime=$lastUpdated';
    Response response = await get(_fixedCollectionMappingDetailsUrl)
        .catchError((error) => debugPrint("Error: $error"));
    List<prefix0.CollectionMapping> items =
        parseListOfCollectionMapping(response.body);
    await appDatabase.collectionMappingDao.deleteAllCollectionMapping();
    await appDatabase.collectionMappingDao.insertCollectionMappingData(items);
    debugPrint("Adding all Collection Maping Details Data.....");
    List<prefix0.CollectionMapping> updatedItems =
        await appDatabase.collectionMappingDao.getAllCollectionMappingDetails();
    debugPrint('Getting Updated Collection Mapping Data to DB $updatedItems');
  }

  List<prefix0.CollectionMapping> parseListOfCollectionMapping(String body) {
    debugPrint("Collection Mapping debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.CollectionMapping.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Material Master
  Future getMaterialDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    var start;
    var batchSize = batchSizeConst;
    int totalCount;
    int setCount;
    Response response;
    var fixedMaterialDetailsUrl;

    var responseData;

    fixedMaterialDetailsUrl =
        '$url/api/fetchMaster?master=material&start=0&amount=9&lastSyncTime=$lastUpdated';
    response = await get(fixedMaterialDetailsUrl)
        .catchError((error) => debugPrint("Error: $error"));

    responseData = json.decode(response.body);
    totalCount = responseData['itemCount'];
    debugPrint("$totalCount");

    start = 0;
    setCount = 0;

    debugPrint("while Before Called");
    setCount = batchSize + start;

    while (totalCount >= setCount) {
      fixedMaterialDetailsUrl =
          '$url/api/fetchMaster?master=material&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedMaterialDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });

      List<prefix0.Material> items = parseListOfMaterial(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.materialDao.insertMaterialData(items);

      start = start + batchSize;
      debugPrint("Start point $start");
      setCount = batchSize + start;
    }

    debugPrint("while After Called");
    if (totalCount != setCount) {
      debugPrint("Start $start");
      int val = setCount.remainder(totalCount);
      debugPrint("Remainder $val");
      fixedMaterialDetailsUrl =
          '$url/api/fetchMaster?master=material&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedMaterialDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });

      List<prefix0.Material> items = parseListOfMaterial(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.materialDao.insertMaterialData(items);
    }

    debugPrint("Adding all Material  Details Data.....");
    List<prefix0.Material> updatedItems =
        await appDatabase.materialDao.getAllMaterialDetails();
    debugPrint('Getting Updated Material Data to DB $updatedItems');
  }

  List<prefix0.Material> parseListOfMaterial(String body) {
    debugPrint("Material debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.Material.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Material Mapping
  Future getMaterialMappingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    var start;
    var batchSize = batchSizeConst;
    int totalCount;
    int setCount;
    Response response;
    var fixedMaterialMappingDetailsUrl;
    var responseData;

    fixedMaterialMappingDetailsUrl =
        '$url/api/fetchMaster?master=materialMapping&start=0&amount=9&lastSyncTime=$lastUpdated';
    response = await get(fixedMaterialMappingDetailsUrl);
    responseData = json.decode(response.body);
    totalCount = responseData['itemCount'];
    debugPrint("$totalCount");

    start = 0;
    setCount = 0;

    debugPrint("while Before Called");
    setCount = batchSize + start;

    while (totalCount >= setCount) {
      fixedMaterialMappingDetailsUrl =
          '$url/api/fetchMaster?master=materialMapping&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedMaterialMappingDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });
//      responseData = json.decode(response.body);
//      List<dynamic> data = responseData['Data'] as List;

      List<prefix0.MaterialMapping> items =
          parseListOfMaterialMapping(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.materialMappingDao.insertMaterialMappingData(items);

//      debugPrint("data $data");
//      debugPrint("List Length ${data.length}");

      start = start + batchSize;
      debugPrint("Start point $start");
      setCount = batchSize + start;
    }

    debugPrint("while After Called");
    if (totalCount != setCount) {
      debugPrint("Start $start");
      int val = setCount.remainder(totalCount);
      debugPrint("Remainder $val");
      fixedMaterialMappingDetailsUrl =
          '$url/api/fetchMaster?master=materialMapping&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedMaterialMappingDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });

      List<prefix0.MaterialMapping> items =
          parseListOfMaterialMapping(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.materialMappingDao.insertMaterialMappingData(items);
    }

    debugPrint("Adding all MaterialMapping Mapping Details Data.....");
    List<prefix0.MaterialMapping> updatedItems =
        await appDatabase.materialMappingDao.getAllMaterialMappingDetails();
    debugPrint('Getting Updated Material Mappings Data to DB $updatedItems');
  }

  List<prefix0.MaterialMapping> parseListOfMaterialMapping(String body) {
    debugPrint("MaterialMapping debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.MaterialMapping.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Stone Master
  Future getStoneDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    var start;
    var batchSize = batchSizeConst;
    int totalCount;
    int setCount;
    Response response;
    var fixedStoneDetailsUrl;

    var responseData;

    fixedStoneDetailsUrl =
        '$url/api/fetchMaster?master=stone&start=0&amount=0&lastSyncTime=$lastUpdated';
    response = await get(fixedStoneDetailsUrl).catchError((e) {
      AlertDialogBox.showPopupAlertBox(
          context: null,
          titleText: "Stone Data Empty",
          contentText: e,
          positiveButtonText: "OK");
    });

    responseData = json.decode(response.body);
    totalCount = responseData['itemCount'];
    debugPrint("$totalCount");

    start = 0;
    setCount = 0;

    debugPrint("while Before Called");
    setCount = batchSize + start;

    while (totalCount >= setCount) {
      fixedStoneDetailsUrl =
          '$url/api/fetchMaster?master=stone&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedStoneDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });

      List<prefix0.Stone> items = parseListOfStone(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.stoneDao.insertStoneData(items);

      start = start + batchSize;
      debugPrint("Start point $start");
      setCount = batchSize + start;
    }

    debugPrint("while After Called");
    if (totalCount != setCount) {
      debugPrint("Start $start");
      int val = setCount.remainder(totalCount);
      debugPrint("Remainder $val");
      fixedStoneDetailsUrl =
          '$url/api/fetchMaster?master=stone&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedStoneDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });

      List<prefix0.Stone> items = parseListOfStone(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.stoneDao.insertStoneData(items);
    }

    debugPrint("Adding all Stone Details Data.....");
    List<prefix0.Stone> updatedItems =
        await appDatabase.stoneDao.getAllStoneDetails();
    debugPrint('Getting Updated Stone Data to DB $updatedItems');
  }

  List<prefix0.Stone> parseListOfStone(String body) {
    debugPrint("Stone debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.Stone.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Stone Mapping
  Future getStoneMappingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    var fixedStoneMappingDetailsUrl;
    var start;
    var batchSize = batchSizeConst;
    int totalCount;
    int setCount;
    Response response;
    var responseData;
    fixedStoneMappingDetailsUrl =
        '$url/api/fetchMaster?master=stoneMapping&start=0&amount=0&lastSyncTime=$lastUpdated';
    response = await get(fixedStoneMappingDetailsUrl);
    responseData = json.decode(response.body);
    totalCount = responseData['itemCount'];
    debugPrint("$totalCount");

    start = 0;
    setCount = 0;

    debugPrint("while Before Called");
    setCount = batchSize + start;

    while (totalCount >= setCount) {
      fixedStoneMappingDetailsUrl =
          '$url/api/fetchMaster?master=stoneMapping&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedStoneMappingDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });
//      responseData = json.decode(response.body);
//      List<dynamic> data = responseData['Data'] as List;

      List<prefix0.StoneMapping> items = parseListOfStoneMapping(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.stoneMappingDao.insertStoneMappingData(items);

//      debugPrint("data $data");
//      debugPrint("List Length ${data.length}");

      start = start + batchSize;
      debugPrint("Start point $start");
      setCount = batchSize + start;
    }

    debugPrint("while After Called");
    if (totalCount != setCount) {
      debugPrint("Start $start");
      int val = setCount.remainder(totalCount);
      debugPrint("Remainder $val");
      fixedStoneMappingDetailsUrl =
          '$url/api/fetchMaster?master=stoneMapping&start=$start&amount=$batchSize&lastSyncTime=$lastUpdated';

      response = await get(fixedStoneMappingDetailsUrl).catchError((e) {
        debugPrint("Error: $e");
      });

      List<prefix0.StoneMapping> items = parseListOfStoneMapping(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.stoneMappingDao.insertStoneMappingData(items);
    }

    debugPrint("Adding all Stone Mapping Details Data.....");
    List<prefix0.StoneMapping> updatedItems =
        await appDatabase.stoneMappingDao.getAllStoneMappingDetails();
    debugPrint('Getting Updated Stone Mapping Data to DB $updatedItems');
  }

  List<prefix0.StoneMapping> parseListOfStoneMapping(String body) {
    debugPrint("StoneMapping debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.StoneMapping.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the ItemMasterBOM
  Future getItemDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    var start;
    var batchSize = batchSizeConst;
    int totalCount;
    var fixedItemBOM;
    int setCount;

    Response response;
    var responseData;
    //  await appDatabase.itemDao.deleteItemData();
    fixedItemBOM =
        '$url/api/fetchMaster?master=bom&start=0&amount=0&lastSyncTime=$lastUpdated';
    response = await get(fixedItemBOM);
    debugPrint(response.body);
    responseData = json.decode(response.body);
    totalCount = responseData['itemCount'];
    debugPrint("$totalCount");

    start = 0;
    setCount = 0;

    debugPrint("while Before Called");
    setCount = batchSize + start;

    while (totalCount >= setCount) {
      fixedItemBOM =
          '$url/api/fetchMaster?master=bom&start=$start&amount=$batchSize&lastSyncTime=0';

      response = await get(fixedItemBOM);
//      responseData = json.decode(response.body);
//      List<dynamic> data = responseData['Data'] as List;

      List<prefix0.Item> items = parseListOfItemMas(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.itemDao.insertItemData(items);

//      debugPrint("data $data");
//      debugPrint("List Length ${data.length}");

      start = start + batchSize;
      debugPrint("Start point $start");
      setCount = batchSize + start;
    }

    debugPrint("while After Called");
    if (totalCount != setCount) {
      debugPrint("Start $start");
      int val = setCount.remainder(totalCount);
      debugPrint("Remainder $val");
      fixedItemBOM =
          '$url/api/fetchMaster?master=bom&start=$start&amount=$batchSize&lastSyncTime=0';

      response = await get(fixedItemBOM).catchError((e) {
        debugPrint("Error: $e");
      });

      List<prefix0.Item> items = parseListOfItemMas(response.body);
      debugPrint("Items Length ${items.length}");
      await appDatabase.itemDao.insertItemData(items);
    }

    debugPrint("Adding all Item Details Data.....");
    List<prefix0.Item> updatedItems =
        await appDatabase.itemDao.getAllItemDetails();
    debugPrint('Getting Updated Item Master Data to DB $updatedItems');
    debugPrint("All Data Inserted Sucessfully");
  }

  List<prefix0.Item> parseListOfItemMas(String body) {
    debugPrint("Item debug data Calling");
    var responseData = json.decode(body);
    List<dynamic> data = responseData["Data"] as List;
    //debugPrint("Collection debug data $data");
    return data
        .map(
          (dynamic item) => prefix0.Item.fromJson(item),
        )
        .toList();
  }

  //Used to fetch the Column Settings
  Future getColumnSetingDetails() async {
    String lastUpdated = getCurrentDate();
    debugPrint(lastUpdated);
    final _fixedColumnSettingsUrl =
        '$url/api/getColumns?lastSyncTime=$lastUpdated';
    Response response = await get(_fixedColumnSettingsUrl).catchError((err) {
      debugPrint("ERROR: $err");
    });
    //debugPrint("Fetching url $_fixedClassificationUrl");
    debugPrint(response.body);
    debugPrint('classification details');

    List<prefix0.ColumnSetting> columnSettings =
        parseListOfColumnSettings(response.body);
    await appDatabase.columnSettingDao.deleteColumnSettingsData();
    await appDatabase.columnSettingDao.insertColumnSettingsData(columnSettings);
    debugPrint("Column Settings Data Inserted");
  }

  List<prefix0.ColumnSetting> parseListOfColumnSettings(String body) {
    var responseData = json.decode(body);
    List<dynamic> collectionRawData = responseData["Data"] as List;
    return collectionRawData
        .map(
          (dynamic item) => prefix0.ColumnSetting.fromJson(item),
        )
        .toList();
  }

  //This function is used to Sync the the Data from control center to the application DB
  double value = 0;

  Future syncItemMaster() async {
    await cleanDatabase();
    setSynchronizationProgress(0);

    await getDataCollectionDetails();
    setSynchronizationProgress(1);

    await getItemDetails();
    setSynchronizationProgress(2);

    await getCollectionMappingDetails();
    setSynchronizationProgress(3);

    await getStoneDetails();
    setSynchronizationProgress(4);

    await getStoneMappingDetails();
    setSynchronizationProgress(5);

    await getMaterialDetails();
    setSynchronizationProgress(6);

    await getMaterialMappingDetails();
    setSynchronizationProgress(7);

    await getSemiFinishedDetails();
    await getSemiFinishedMappingDetails();

    await getMiscellaneousDetails();
    setSynchronizationProgress(8);
    await getMiscellaneousMappingDetails();
    setSynchronizationProgress(9);

    await getBinDetails();
    setSynchronizationProgress(10);
    await getBinMappingDetails();
    setSynchronizationProgress(11);
  }

  setSynchronizationProgress(int progress) {
    if (progress == 0) {
      value = 23.33;
    } else {
      value = value + 23.33;
    }
  }

  double getSynchronizationProgress() {
    debugPrint("=========Progress value: $value=========");
    return value;
  }

  //Cleaning of Database before Inserting/Sync Data again.
  void cleanDatabase() async {
    await appDatabase.itemDao.deleteItemData();
    await appDatabase.stoneDao.deleteStoneData();
    await appDatabase.stoneMappingDao.deleteAllStoneMappings();
    await appDatabase.materialDao.deleteMaterialData();
    await appDatabase.materialMappingDao.deleteMaterialMapping();
    await appDatabase.binDao.deleteAllBinData();
    await appDatabase.binMappingDao.deleteAllBinMapping();
    await appDatabase.miscellaneousMappingDao.deleteAllMiscellaneousMapping();
    await appDatabase.miscellaneousDao.deleteAllMiscellaneousData();
    await appDatabase.laborMappingDao.deleteAllLaborMapping();
    await appDatabase.laborDao.deleteAllLaborData();
    await appDatabase.semiFinishedDao.deleteAllSemiFinishedData();
    await appDatabase.semiFinishedMappingsDao.deleteAllSemiFinishedMapping();
  }

  String getCurrentDate() {
    DateTime now = DateTime.now();
    String lastUpdatedDate = DateFormat('yyyy-MM-dd kk:mm:ss').format(now);
    return lastUpdatedDate;
  }
}
