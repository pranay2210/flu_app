import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:quiver/strings.dart';
import 'package:tiara_app/constants/KeyConstant.dart';
import 'package:tiara_app/db/database_helper.dart';
import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/mockdata/MockDataSource.dart';
import 'package:tiara_app/models/PriceDetailsView.dart';
import 'package:tiara_app/models/stoneModel/StoneDetailsView.dart';
import 'package:tiara_app/util/images_provider.dart';

import 'widget/basic_information.dart';
import 'widget/set_details_widget.dart';
import 'widget/variation_view.dart';

final TextStyle headerTestStyle = TextStyle(
    fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.normal);
final Color themeColor = Color(0xff012340);
final currencyFormatter = new NumberFormat("#,##0.00", "en_US");

class ItemDetailsPage extends StatefulWidget {
  String itemID = "";

  ItemDetailsPage(this.itemID);

  @override
  _ItemDetailsPageState createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage>
    with TickerProviderStateMixin {
  int _currentImagePosition = 0;
  List<String> imageList = [];
  final TextStyle headerTestStyle = TextStyle(
      fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.normal);
  double size;

  double _value = 1.0;
  TabController _nestedTabController;
  AppDatabase appDatabase = DatabaseHelper().getDb();

  Item item;

  @override
  void initState() {
    final configBox = Hive.box("configurations");
    configBox.put(KeyConstants.RFID_TAG, "IRYS001");
    // HttpImportDataService importService = HttpImportDataService();
    // importService.getItemDetails();
    debugPrint("Screen Called");

    _nestedTabController = new TabController(length: 5, vsync: this);

    //fetchRecordsFromCollection();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = (MediaQuery.of(context).size.width - 120) / 8;

    return FutureBuilder(
      future: DatabaseHelper()
          .getDb()
          .itemDao
          .getItemMasterFromItemID(widget.itemID),
      builder: (BuildContext context, AsyncSnapshot snap) {
        Widget child;
        if (snap.hasData) {
          item = snap.data;
          buildItemImages(item.imageName);
          child = Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ITEM DETAILS',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 20.0,
                    child: Divider(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  buildDetailsImage(),
                  TabBar(
                    controller: _nestedTabController,
//              isScrollable: true,
                    labelStyle: TextStyle(
                        fontSize: 14.0,
                        color: themeColor,
                        fontWeight: FontWeight.bold),
                    labelColor: themeColor,
                    labelPadding: EdgeInsets.all(0),
                    tabs: <Widget>[
                      Tab(
                        text: "BASIC INFORMATION",
                      ),
                      Tab(
                        text: "VARIATIONS",
                      ),
                      Tab(
                        text: "STONE DETAILS",
                      ),
                      Tab(
                        text: "SET DETAILS",
                      ),
                      Tab(
                        text: "PRICING",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 1.0,
                    child: Divider(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 400,
//              margin: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: TabBarView(
                      controller: _nestedTabController,
                      children: <Widget>[
                        BasicInformation(item),
                        VariationsWidget(item),
                        stoneDetails(item),
                        SetDetailsWidget(item),
                        pricing(item),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        } else if (snap.hasError) {
          child = Center(
            child: SizedBox(
              child: CircularProgressIndicator(
                backgroundColor: Colors.green,
              ),
              width: 60,
              height: 60,
            ),
          );
        } else {
          child = Center(
            child: SizedBox(
              child: CircularProgressIndicator(
                backgroundColor: Colors.green,
              ),
              width: 60,
              height: 60,
            ),
          );
        }
        return Container(
          color: Colors.white,
          child: child,
        );
      },
    );
  }

  Widget createPriceTable() {
    List<PriceDetailsView> priceDetailsList =
        MockDataSource.getPriceDetailsDataList();
    List<TableRow> priceTableRows = [];
    for (PriceDetailsView priceDetalis in priceDetailsList) {
      priceTableRows.add(TableRow(children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(priceDetalis.priceType),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              child: Text(priceDetalis.priceValue),
              alignment: Alignment.centerRight,
            ),
          ),
        ),
      ]));
    }

    return Table(
        columnWidths: {0: FlexColumnWidth(3), 1: FlexColumnWidth(1)},
        border: TableBorder.all(width: 1.0, color: Colors.black),
        children: priceTableRows);
  }

  Widget createCenterStoneTable(List<StoneDetailsView> centerStoneDetailsList) {
    List<TableRow> priceTableRows = [];
    int serialNo = 0;
    for (StoneDetailsView stoneDeatils in centerStoneDetailsList) {
      priceTableRows.add(TableRow(children: [
        tableCell(serialNo == 0 ? "No." : "$serialNo"),
        tableCell(stoneDeatils.type),
        tableCell(stoneDeatils.isDiamond),
        tableCell(stoneDeatils.cut),
        tableCell(stoneDeatils.color),
        tableCell(stoneDeatils.clarity),
        tableCell(stoneDeatils.carats),
        tableCell(stoneDeatils.UOM),
        tableCell(stoneDeatils.shape),
        tableCell(stoneDeatils.lab),
        tableCell(stoneDeatils.certificate),
      ]));
      ++serialNo;
    }

    return Table(
        columnWidths: {
          0: FlexColumnWidth(0.7),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1.5),
          3: FlexColumnWidth(0.6),
          4: FlexColumnWidth(0.6),
          5: FlexColumnWidth(0.9),
          6: FlexColumnWidth(0.9),
          7: FlexColumnWidth(1),
          8: FlexColumnWidth(1),
          9: FlexColumnWidth(1),
          10: FlexColumnWidth(2),
        },
        border: TableBorder.all(width: 1.0, color: Colors.black),
        children: priceTableRows);
  }

  TableCell tableCell(String value) {
    return TableCell(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget createStoneTable() {
    List<PriceDetailsView> priceDetailsList =
        MockDataSource.getPriceDetailsDataList();
    List<TableRow> priceTableRows = [];
    for (PriceDetailsView priceDetalis in priceDetailsList) {
      priceTableRows.add(TableRow(children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(priceDetalis.priceType),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              child: Text(priceDetalis.priceValue),
              alignment: Alignment.centerRight,
            ),
          ),
        ),
      ]));
    }

    return Table(
        columnWidths: {0: FlexColumnWidth(3), 1: FlexColumnWidth(1)},
        border: TableBorder.all(width: 1.0, color: Colors.black),
        children: priceTableRows);
  }

  Container pricing(Item item) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Pricing',
            style: headerTestStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          createPriceTable()
        ],
      ),
      decoration: BoxDecoration(),
    );
  }

  Container stoneDetails(Item item) {
    List<StoneDetailsView> centerStoneDetailsList =
        MockDataSource.getCenterDetailsDataList();

    List<StoneDetailsView> stoneDetailsList =
        MockDataSource.getStoneDetailsDataList();
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Center Stone Details',
              style: headerTestStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            createCenterStoneTable(centerStoneDetailsList),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Stone Details',
              style: headerTestStyle,
            ),
            SizedBox(
              height: 15.0,
            ),
            createCenterStoneTable(stoneDetailsList),
          ],
        ),
      ),
    );
  }

  Widget buildDetailsImage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Card(
                elevation: 3.0,
                child: CachedNetworkImage(
                  width: double.infinity,
                  height: 350.0,
                  placeholder: (context, url) =>
                      Image.asset("assets/images/no-image.png"),
                  imageUrl: imageList[_currentImagePosition],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                height: size,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => _onImageTapped(index),
                      child: Card(
                        elevation: 2.0,
                        child: Container(
                          width: size,
//                          color: Colors.teal.shade900,
                          child: CachedNetworkImage(
                            placeholder: (context, url) =>
                                Image.asset("assets/images/no-image.png"),
                            imageUrl: imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        itemDetailsView(),
      ],
    );
  }

  _onImageTapped(int index) {
    setState(() {
      _currentImagePosition = index;
    });
  }

  Widget itemDetailsView() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          left: 25.0,
          top: 40.0,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.designNumber,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      item.skuNumber,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Image.asset(
                  _setStockStausImage(item.itemStatus),
                  height: 35,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 40.0,
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                formatDisplayValue(item.itemDescription),
                style: TextStyle(fontSize: 15.0, color: Colors.grey.shade700),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 40.0,
              child: Divider(
                color: Colors.grey.shade300,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '\$ ${currencyFormatter.format(item.costPrice)}',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 7.0),
                    height: 40.0,
                    color: Color(0xff012340),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/cart-icon.png',
                          height: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'ADD TO CART',
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _setStockStausImage(String itemStatus) {
    if (equalsIgnoreCase(itemStatus, "Instock") || itemStatus == "In Stock") {
      return "assets/images/instock.png";
    } else if (equalsIgnoreCase(itemStatus, 'Sold')) {
      return "assets/images/sold.png";
    } else {
      return "assets/images/other.png";
    }
  }

  void buildItemImages(String imageName) {
    if (imageName != null && imageName.isNotEmpty) {
      imageList.clear();
      imageList.addAll(ImagesDataProvider.getAll(imageName));
    }
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5.0) //
        ),
    border: Border.all(
      color: Color(0xff012340),
//    color: Colors.red
      width: 1.5,
    ),
  );
}
