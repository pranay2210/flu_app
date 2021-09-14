import 'dart:collection';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:quiver/collection.dart';
import 'package:tiara_app/adapters/db_adapter.dart';
import 'package:tiara_app/db/database_helper.dart';
import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/models/bannerModel/banner.dart' as prefix0;
import 'package:tiara_app/ui/config/size_config.dart';
import 'package:tiara_app/ui/config/strings.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/homepage/data/column_object.dart';
import 'package:tiara_app/ui/homepage/data/filter_objects_to_store_selected_values.dart';
import 'package:tiara_app/util/images_provider.dart';

AppDatabase appDatabase = DatabaseHelper().getDb();

typedef void BannerCallback(String collectionID);
typedef void CategoryCallback(String categoryType);
typedef void ClassificationCallback(HashMap<String, String> mapFilter);

class HomePage extends StatefulWidget {
  final BannerCallback onBannerClick;
  final CategoryCallback onCategoryClick;
  final ClassificationCallback onClassificationClick;

  HomePage(
      {@required this.onBannerClick,
      @required this.onCategoryClick,
      @required this.onClassificationClick});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  //All the Data types to be declared here

  int _current = 0, classificationStepCount = 0, count = 0;
  String imageNameRecieved, collectionHeader = "", breadCrumList = "";

  bool isNextLevel = false;
  bool stateSync = false;
  int counter = 0, forCount = 0;

  //All the List which are require to fetch or get the data, should be declared here

  List<String> imageList = new List<String>();
  List<String> collectionIDList = new List();
  List<Classification> classificationsData = new List();
  List<Classification> classificationsChildData = new List();
  List<Classification> showCategories = new List();
  List<String> parentIDStack = new List();
  List<String> classificationQueryParameterStackForEnumValues = new List();
  List<String> parentIDForClassification = new List();
  List<String> subCollectionHeaders = new List();

  List<String> getRefineReult = new List();

//List<String> classificationQueryParameterStackForEnumColumn = new List();

  HashMap<String, String> mapFilter = new HashMap<String, String>();
  var myMap = Multimap<String, ColumnField>();

  //dispose the screen when app is closed
  @override
  void dispose() {
    super.dispose();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = new List();
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  addBannerDetails() {
    // debugPrint("wlclwbclscblsbclsbclb");
    final box = Hive.box("banners");
//    String bannerName, imageName, imageNameURL, collectionID;
//    for (var i = 0; i < box.length; i++) {
//      var name = box.getAt(i) as prefix0.Banner;
//      bannerName = name.bannerImageName;
//      var arrayBanner = bannerName.split("public/");
//      arrayBanner.removeAt(0);
//      imageName = arrayBanner[arrayBanner.length - 1];
//      imageNameURL = '${ImagesDataProvider.bannersUrl}/$imageName';
//      collectionID = name.collectionID;
//      imageList.add(imageNameURL);

    final configBox = Hive.box("configurations");
    String url = configBox.get("url");
    String bannerName, imageName, imageNameURL, collectionID;

    for (var i = 0; i < box.length; i++) {
      var name = box.getAt(i) as prefix0.Banner;
      bannerName = name.bannerImageName;
      var arrayBanner = bannerName.split("public/");
      arrayBanner.removeAt(0);
      imageName = arrayBanner[arrayBanner.length - 1];
      imageNameURL = '${ImagesDataProvider.bannersUrl}/$imageName';
      collectionID = name.collectionID;
      imageList.add(imageNameURL);

      //debugPrint("FETCH BANNER IMAGE $imageList");
      //collectionIDList.add(collectionID);
    }
  }

  //Initialization for sate handling.

  List<StoreSelectedFilterValues> storeObj =
      new List<StoreSelectedFilterValues>();

  StoreSelectedFilterValues storeSelectedFilterValues;

  StoreSelectedFilterValues filterGetSelectedValues(
      String tableName, String columnName, List<String> values) {
    Map<String, List<String>> tempSelectedValues = Map();
    tempSelectedValues[columnName] = values;
    storeSelectedFilterValues =
        new StoreSelectedFilterValues(tableName, tempSelectedValues);
    return storeSelectedFilterValues;
  }

  getClassificationSettingsData() {
    appDatabase.parentData().then((value) {
      for (var i = 0; i < value.length; i++) {
        parentIDForClassification.add(value[i].classificationSettingsID);
        collectionHeader = value[0].classificationHeader.toUpperCase();
        debugPrint("PARENT ID: ${value[i].classificationSettingsID}");
      }
      debugPrint("parentIDForClassification : $parentIDForClassification");
      for (var k = 0; k < parentIDForClassification.length; k++) {
        debugPrint(parentIDForClassification[k]);
        appDatabase.classificationDao
            .collectionDataBasedOnParentID(parentIDForClassification[k])
            .then((classificationChilds) {
          classificationsChildData = classificationChilds;

          // debugPrint("Child Classification data: $classificationsChildData");
        });
      }
    });
  }

  void getCategoryListSettings() {
    appDatabase.categoryData().then((res) {
      showCategories = res;
    });
  }

  @override
  void initState() {
    super.initState();

    addBannerDetails();
    debugPrint("Child data Showing");
    getClassificationSettingsData();
    getCategoryListSettings();

    //=========Query test===============

    appDatabase.itemDao
        .getAllItemDetails()
        .then((value) => debugPrint("Printing ITEMS $value"));

    List<String> valuesSelectedTemp = List<String>();
    valuesSelectedTemp.add("11559");
    //valuesSelectedTemp.add("13615");

    storeObj.add(filterGetSelectedValues(
        DBAdapter().adaptTableName("iMaterialMaster"),
        DBAdapter().adaptColumnName("materialID"),
        valuesSelectedTemp));

//    debugPrint(storeObj[0].tableName);
//    debugPrint(storeObj[0].valuesforSelectedFilters);

    getRefineReult.clear();
    Future<List<MainItemManager>> getFilterResult =
        appDatabase.testOperationForSelectedFilter(storeObj);
    getFilterResult.then((value) {
      for (var i = 0; i < value.length; i++) {
        if (getRefineReult.contains(value[i].itemsCode)) {
        } else {
          getRefineReult.add(value[i].itemsCode);
          //debugPrint("Printing Query Test: ${t[i].itemsCode}");
        }
      }
    });

    //====================================

    subCollectionHeaders.clear();
  }

  getCategoryHeight() {
    if (showCategories.length <= 4) {
      return SizeConfig.heightMultiplier * 30;
    } else {
      return (SizeConfig.heightMultiplier * 30 * showCategories.length % 4);
    }
  }

  getCollectionHeight() {
    if (classificationsChildData.length <= 3) {
      return SizeConfig.heightMultiplier * 31;
    } else {
      return (SizeConfig.heightMultiplier * 51);
    }
  }

  getCardHeight() {
    if (classificationsChildData.length <= 3) {
      return SizeConfig.heightMultiplier * 40;
    } else {
      return (SizeConfig.heightMultiplier * 60);
    }
  }

  getBreadCrumWidth() {
    if (subCollectionHeaders.length < 3) {
      return SizeConfig.widthMultiplier * 30;
    } else if (subCollectionHeaders.length == 2) {
      return (SizeConfig.widthMultiplier * 50);
    } else {
      return (SizeConfig.widthMultiplier * 50);
    }
  }

  Widget build(BuildContext context) {
    final double cardPaddingTop = SizeConfig.heightMultiplier *
        7; //MediaQuery.of(context).size.height * 0.06;

    final double cardPaddingRight = SizeConfig.widthMultiplier *
        6; //MediaQuery.of(context).size.width * 0.06;

    final double cardPaddingLeft = SizeConfig.widthMultiplier *
        6; //MediaQuery.of(context).size.width * 0.06;

    final double cardPaddingHeight = MediaQuery.of(context).size.height * 0.6;

    final double bgHeight = SizeConfig.heightMultiplier *
        55; //MediaQuery.of(context).size.height * 0.50;

    return Scaffold(
      primary: false,
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                fit: StackFit.loose,
                children: <Widget>[
                  CarouselSlider(
                    height: 350.0,
                    aspectRatio: 2.25,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayCurve: Curves.decelerate,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    pauseAutoPlayOnTouch: Duration(seconds: 1),
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    items: imageList.map((image) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              child: GestureDetector(
                                onTap: () => widget
                                    .onBannerClick(collectionIDList[_current]),
                                /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CatalogPage.withCollectionID(
                                                collectionIDList[_current])))*/
                                child: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      Image.asset("assets/images/no-image.png"),
                                  imageUrl: image,
                                  fit: BoxFit.cover,
                                ),
                                //Image.network( image),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(imageList, (index, url) {
                          return Container(
                            width: 12.0,
                            height: 12.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 8.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? Color.fromRGBO(255, 255, 255, 0.9)
                                    : Color.fromRGBO(192, 192, 192, 0.9)),
                          );
                        }),
                      )),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Stack(
                overflow: Overflow.visible,
                fit: StackFit.loose,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                            top: 60, left: 60, right: 60, bottom: 0),
                        color: AppTheme.bgColor,
                        height: getCollectionHeight(),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        height: SizeConfig.heightMultiplier * 10,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.0, top: 30),
                    child: Text(
                      collectionHeader, //Strings.homePageCollectionTitle,
                      style: AppTheme.pageTitleStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: cardPaddingTop,
                        right: cardPaddingRight,
                        left: cardPaddingLeft),
                    height: getCardHeight(),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: getCollectionHeight(),
                          child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                              ),
                              child: Stack(
                                fit: StackFit.loose,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                        top: 14,
                                        left: 4,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Wrap(
                                                alignment: WrapAlignment.end,
                                                spacing:
                                                    SizeConfig.widthMultiplier *
                                                        40,
                                                children: <Widget>[
                                                  Container(
                                                    child: Visibility(
                                                      visible: isNextLevel,
                                                      child: Text(
                                                        breadCrumList,
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Visibility(
                                                      visible: isNextLevel,
                                                      child: GestureDetector(
                                                        onTap: () => _onBackClicked(
                                                            parentIDStack[
                                                                parentIDStack
                                                                        .length -
                                                                    1]),
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  right: 5.0,
                                                                  top: 5.0,
                                                                  bottom: 5.0),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color: AppTheme
                                                                    .themeColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            3)),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: <Widget>[
                                                              Image.asset(
                                                                "assets/icons/backArrow.png",
                                                                scale: 12,
                                                              ),
                                                              Text(
                                                                'BACK',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 18,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Visibility(
                                                visible: isNextLevel,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 3.0),
                                                  child: new Container(
                                                    // margin: const EdgeInsets.all(5.0),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.86,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            3.0),
                                                    decoration: BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                                color: Colors
                                                                    .black12))),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 60,
                                    ),
                                    child: new GridView.count(
                                      primary: false,
                                      //shrinkWrap: true,
                                      crossAxisCount: 3,
                                      //  padding: EdgeInsets.only(top: 30),
                                      children: List.generate(
                                          classificationsChildData.length,
                                          (index) {
                                        return getClassificationTile(
                                            classificationsChildData[index]);
                                      }),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                height: getCategoryHeight(),
                //MediaQuery.of(context).size.height * 0.30,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Text(
                            Strings.homePageCategoryTitle,
                            style: AppTheme.headerStyle,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        height: 1.5,
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: Colors.black12,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.transparent,
                        child: new GridView.count(
                          primary: false,
                          //shrinkWrap: true,
                          crossAxisCount: 4,
                          padding: EdgeInsets.only(top: 0),
                          children:
                              List.generate(showCategories.length, (index) {
                            return getCateories(showCategories[index]);
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

/* Used for classification fetching the tiles acording to Parent<->Child */

  GridTile getClassificationTile(Classification classificationS) {
//    imageNameRecieved = "/${classificationS.enumFieldValueImageName}";
//    // debugPrint(imageNameRecieved);
//    var imageName = imageNameRecieved.split("public/");
//    imageName.removeAt(0);
//    imageNameRecieved = imageName[imageName.length - 1];
//    String urlImage = ImagesDataProvider.url + "/" + imageNameRecieved;
    String itemName = classificationS.enumFieldValueDisplayName;

    imageNameRecieved = "/${classificationS.enumFieldValueImageName}";
    // print(imageNameRecieved);
    final configBox = Hive.box("configurations");
    String url = configBox.get("url");
    var imageName = imageNameRecieved.split("public/");
    imageName.removeAt(0);
    imageNameRecieved = imageName[imageName.length - 1];
    String urlImage = url + "/" + imageNameRecieved;


    return new GridTile(
      footer: Center(
        child: new Text(itemName.toUpperCase(),
            style: AppTheme.titleRegular, overflow: TextOverflow.ellipsis),
      ),
      child: InkResponse(
        enableFeedback: true,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: CachedNetworkImage(
            placeholder: (context, url) =>
                Image.asset("assets/images/no-image.png"),
            imageUrl: urlImage,
          ),
        ),
        //Image.network(urlImage),
        onTap: () => _onClassificationTileClicked(classificationS),
      ),
    );
  }

  _onClassificationTileClicked(Classification classification) {
    debugPrint("Printing Query Test: $getRefineReult");
    subCollectionHeaders
        .add(classification.enumFieldValueDisplayName.toUpperCase());

    setState(() {
      breadCrumList =
          getCollectionHeaderBreadCrum(collectionHeader, subCollectionHeaders);
    });
    debugPrint("Collection Sack: $subCollectionHeaders");
    parentIDStack.add(classification.parentClassificationID);
    classificationQueryParameterStackForEnumValues
        .add(classification.enumFieldValue);

//    classificationQueryParameterStackForEnumColumn
//        .add(classification.enumColumnName);

    myMap.add(
        classification.tableNameVal,
        ColumnField(
            classification.enumColumnName, classification.enumFieldValue));
    myMap.forEach((key, value) => debugPrint('[$key->$value]'));

    setState(() {
      isNextLevel = true;
      mapFilter["${classification.enumColumnName}$counter"] =
          classification.enumFieldValue;
      forCount++;
      counter = forCount;
      appDatabase.classificationDao
          .collectionDataBasedOnParentID(
              (classification.classificationSettingsID).toString())
          .then((result) {
        if (result.isNotEmpty) {
          debugPrint(
              "Entered parent ID: ${classification.classificationSettingsID}");
          classificationsChildData = result;
          //_onClassificationChildDataClicked(classificationsChildData);
          // debugPrint("Printing on Click value $classificationsChildData");
        } else {
          debugPrint("Data is NULL While Searching");
          debugPrint(
              "Selected Parameters: $classificationQueryParameterStackForEnumValues");
          debugPrint("Map Filter Values: $mapFilter");
          widget.onClassificationClick(mapFilter);
        }
      });
    });
  }

  _onBackClicked(String parentID) {
    parentIDStack.removeAt(parentIDStack.length - 1);
    classificationQueryParameterStackForEnumValues.removeLast();
    debugPrint("parent stack backed on $parentIDStack");
    mapFilter.clear();
//    debugPrint(
//        "Selected Parameters: $classificationQueryParameterStackForEnumValues");
    setState(() {
      debugPrint(classificationStepCount.toString());
      debugPrint("parent ID backed on $parentID");

      if (isNextLevel) {
        appDatabase.classificationDao
            .collectionDataBasedOnParentID((parentID).toString())
            .then((result) {
          if (parentIDStack.length > 0) {
            if (classificationsChildData.length != result.length) {
              isNextLevel = true;
            } else {
              isNextLevel = false;
            }
          } else {
            classificationQueryParameterStackForEnumValues.clear();
            isNextLevel = false;
          }
          classificationsChildData = result;
          debugPrint("Printing on Click value $classificationsChildData");
          subCollectionHeaders.clear();
        });
      }
    });

    subCollectionHeaders.removeLast();
    getCollectionHeaderBreadCrum(collectionHeader, subCollectionHeaders);
    setState(() {
      breadCrumList =
          getCollectionHeaderBreadCrum(collectionHeader, subCollectionHeaders);
    });

    debugPrint("Collection Stack on Back: $subCollectionHeaders");
  }

  GridTile getCateories(Classification classification) {
//    String imageName = classification.enumFieldValueImageName;
//    debugPrint("Image NAme: $imageName");
//    var newImage = imageName.split("/");
//    debugPrint("Image Name : ${newImage.toString()}");
//    // String temp1= newImage
//    String temp2 = newImage[2].substring(0, newImage[2].length);
//    debugPrint("Image NAme: ${temp2.trim()}");
//    imageName = newImage[newImage.length - 1];
//    String urlName =
//        ImagesDataProvider.url + "/Category-Images/" + temp2.trim();

    final configBox = Hive.box("configurations");
    String url = configBox.get("url");
    String imageName = classification.enumFieldValueImageName;
    //print("Image NAme: $imageName");
    var newImage = imageName.split("/");
    //print(newImage);
    String temp2 = newImage[2].substring(0, newImage[2].length - 1);
    //print("Image NAme: $temp2");
    imageName = newImage[newImage.length - 1];
    String urlName = url + "/Category-Images/" + temp2;
    //debugPrint("$url/icons/$temp2");

    debugPrint("URL NAME:$urlName");
    String itemName = classification.enumFieldValueDisplayName;
    itemName = itemName.toUpperCase();
    return new GridTile(
      footer: Center(
          child: Text(
        itemName,
        style: AppTheme.titleRegular,
      )),
      child: InkResponse(
        enableFeedback: true,
        onTap: () => widget.onCategoryClick(classification.enumFieldValue),
        child: Transform.scale(
          scale: 0.6,
          child: CachedNetworkImage(
            placeholder: (context, url) =>
                Image.asset("assets/images/no-image.png"),
            imageUrl: urlName,
          ),
        ),
      ),
    );
  }

  String getCollectionHeaderBreadCrum(
      String collectionHeader, List<String> subHeaders) {
    String res;
    res = collectionHeader + " > " + subHeaders.join("> ");
    debugPrint("BREADCRUM: $res");
    return res;
  }

  @override
  bool get wantKeepAlive => true;
}
