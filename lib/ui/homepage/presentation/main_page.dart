import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:tiara_app/models/bannerModel/banner.dart' as prefix0;
import 'package:tiara_app/models/enum_types.dart';
import 'package:tiara_app/network/dataImportService/http_import_data_service.dart';
import 'package:tiara_app/ui/Itemdetails/item_details_page.dart';
import 'package:tiara_app/ui/cart/cart_page.dart';
import 'package:tiara_app/ui/catalog/catalog_page.dart';
import 'package:tiara_app/ui/homepage/presentation/placeholder.dart';
import 'package:tiara_app/ui/widgets/alert_dialog_box.dart';
import 'package:tiara_app/ui/widgets/appbar/appbar.dart';

import 'home_page.dart';

final double bottomIconHeight = 55.0;
final double appBarHeight = 58;
final double iconSizeValue = 10;
final double iconHeightValue = 10;
const themeColor = Color(0xffb012340);
Color activeColor;

double _width = 17.5;

bool isCatalogConfigExpanded = false;
bool isReportListExpanded = false;
bool isTrinityExpanded = false;
bool isGeneralSettingsExpanded = false;
bool isDisplaySettingsExpanded = false;

const color = Color(0xffb012340);
TextStyle alertDialogText = new TextStyle(fontSize: 20, color: color);

Stopwatch stopwatch;

final TextStyle headerTestStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  fontWeight: FontWeight.normal,
);
Function onPressedCallback;
bool stateSync = false;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
//  double _percentage;
//  AnimationController _progressAnimationController;
//  double _nextPercentage;
//  Timer _timer;

  @override
  void dispose() {
    super.dispose();
  }

  void onPressed() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    HttpImportDataService importDataService = HttpImportDataService();
//    showDialog(
//        context: context,
//        barrierDismissible: false,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.all(Radius.circular(10))),
//            contentPadding: EdgeInsets.all(3),
//            backgroundColor: Colors.white,
//            title: Center(
//                child: Text(
//                  "Importing Data",
//                  style: TextStyle(fontSize: 20, color: AppTheme.themeColor),
//                )),
//            content: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                Container(
//                  color: Colors.white,
//                  child: Row(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: AnimatedContainer(
//                          width: _width,
//                          height: 5,
//                          color: Colors.blue,
//                          duration: Duration(seconds: 1),
//                          curve: Curves.fastOutSlowIn,
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Center(
//                      child: RaisedButton(
//                          shape: new RoundedRectangleBorder(
//                              borderRadius: new BorderRadius.circular(4.0),
//                              side:
//                              BorderSide(color: AppTheme.rangeSliderColor)),
//                          onPressed: () {
//                            Navigator.of(context).pop();
//                          },
//                          color: AppTheme.rangeSliderColor,
//                          textColor: Colors.white,
//                          child: Text(
//                            "CANCEL",
//                            style:
//                            TextStyle(fontSize: 14.0, color: Colors.white),
//                          ))),
//                ),
//              ],
//            ),
//          );
//        });
    setState(() {
      stateSync = true;
      _width = importDataService.getSynchronizationProgress();
    });

    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      await importDataService.syncItemMaster().catchError((e) {
        AlertDialogBox.showPopupAlertBox(
            context: context,
            titleText: "FAILED",
            contentText: e,
            positiveButtonText: "OK");
      });
      setState(() {
        stateSync = false;
        AlertDialogBox.showPopupAlertBox(
            context: context,
            titleText: "SUCCESS",
            contentText: "Data Imported Sucessfully",
            positiveButtonText: "OK");
      });
    } else {
      setState(() {
        stateSync = false;
        AlertDialogBox.showPopupAlertBox(
            context: context,
            titleText: "FAILED",
            contentText: "Data Importing Failed Please Try Again",
            positiveButtonText: "OK");
      });
    }
  }

  @override
  void initState() {
    final bannersBox = Hive.openBox('banners');
    // activeColor==Color(0xff0000);
    bannersBox.then((values) {
      debugPrint('Banners size : ${values.length}');
      var banner = values.getAt(0) as prefix0.Banner;
      //debugPrint('Banner from hive : $banner');
    }).catchError((error) {
      debugPrint('Error is : $error');
    });
    stateSync = false;
//    _percentage = 0;
//    _nextPercentage = 0;
//    _timer = null;
    // initAnimationController();
    onPressedCallback = onPressed;
  }

  Widget getCatalogPage(
      CatalogDataType catalogDataType,
      String collectionID,
      String categoryType,
      HashMap<String, String> catalogClassificationFilter) {
    switch (catalogDataType) {
      case CatalogDataType.ALL:
        return CatalogPage(
            onItemClick: (itemID) => onCatalogItemClicked(itemID));
      case CatalogDataType.COLLECTION:
        return CatalogPage.withCollectionID(collectionID);
      case CatalogDataType.CATEGORY:
        return CatalogPage.withCategoryType(categoryType);
      case CatalogDataType.CLASSIFICATION:
        return CatalogPage.withClassificationType(catalogClassificationFilter);
      default:
        return CatalogPage();
    }
  }

  static const color = Color(0xff012340);
  List<int> _pageHistoryStack = [0];
  int _currentIndex = 0;
  String itemDetailsItemID = "";
  CatalogDataType catalogDataType = CatalogDataType.ALL;
  String catalogCollectionID = "";
  String catalogCategoryType = "";
  HashMap<String, String> catalogClassificationFilter =
      HashMap<String, String>();
  List<Widget> _children = List();

  @override
  Widget build(BuildContext context) {
    _children = [
      HomePage(onBannerClick: (collectionID) {
        catalogDataType = CatalogDataType.COLLECTION;
        catalogCollectionID = collectionID;
        onTabTapped(1);
      }, onCategoryClick: (categoryType) {
        catalogDataType = CatalogDataType.CATEGORY;
        catalogCategoryType = categoryType;
        onTabTapped(1);
      }, onClassificationClick: (mapFilter) {
        catalogDataType = CatalogDataType.CLASSIFICATION;
        catalogClassificationFilter = mapFilter;
        onTabTapped(1);
      }),
      getCatalogPage(catalogDataType, catalogCollectionID, catalogCategoryType,
          catalogClassificationFilter),
      ItemDetailsPage(itemDetailsItemID),
      CartPage(),
      PlaceholderWidget(Colors.pink),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        endDrawer: DrawerWidgetScaff(),
        appBar: Appbar(
          height: appBarHeight,
          onHomeClick: () {
            _pageHistoryStack.clear();
            onTabTapped(0);
          },
          onCartClick: () => onTabTapped(3),
        ),
        body: WillPopScope(
            onWillPop: () async {
              if (_pageHistoryStack.length > 1) {
                _pageHistoryStack.removeLast();
                setState(() {
                  _currentIndex = _pageHistoryStack.last;
                });
                return false;
              } else {
                return true;
              }
            },
            child: _children[_currentIndex]),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 60,
                // color:activeColor,
                child: Image.asset(
                  "assets/bottomNavIcons/home.png",
                  height: bottomIconHeight,
                ),
              ),
              title: Text(" "),
            ),
            BottomNavigationBarItem(
                icon: Container(
                  height: 60,
                  // color:activeColor,
                  child: Image.asset(
                    "assets/bottomNavIcons/catalog.png",
                    height: bottomIconHeight,
                  ),
                ),
                title: Text("")),
//            BottomNavigationBarItem(
//                icon: Container(
//                  height: 60,
//                  // color:activeColor,
//                  child: Image.asset(
//                    "assets/bottomNavIcons/smart-view.png",
//                    height: bottomIconHeight,
//                  ),
//                ),
//                title: Text(""))
          ],
          type: BottomNavigationBarType.fixed,
          //selectedItemColor: Colors.red,
          currentIndex: _currentIndex > 2 ? 0 : _currentIndex,

          backgroundColor: themeColor,
          onTap: (index) {
            catalogDataType = CatalogDataType.ALL;
            onTabTapped(index);
          },
          // new,

          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageHistoryStack.add(_currentIndex);
      //activeColor=Color(0xff013c6d);
    });
  }

  onCatalogItemClicked(String itemID) {
    itemDetailsItemID = itemID;
    onTabTapped(2);
  }
}

typedef void onPressedCallBack();

class DrawerWidgetScaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          primary: false,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Container(
                    height: 70,
                    color: themeColor,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2.0, left: 20),
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              "assets/icons/right-arrow.png",
                              scale: 8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Tiara Menu",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: MediaQuery.of(context).size.width / 3,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                          child: new Text("Data Sync",
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.0)),
                          color: Color(0xff012340),
                          onPressed: onPressedCallback),
                      Visibility(
                        visible: stateSync,
                        child: CircularProgressIndicator(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
