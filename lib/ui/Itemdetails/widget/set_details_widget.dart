import 'package:flutter/material.dart';
import 'package:tiara_app/db/database_helper.dart';
import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/mockdata/MockDataSource.dart';
import 'package:tiara_app/models/name_value_view.dart';

import '../item_details_page.dart';
import 'grid_text.dart';

class SetDetailsWidget extends StatelessWidget {
  /* const SetDetailsWidget({
    Key key,
  }) : super(key: key);*/
  final Item _item;

  SetDetailsWidget(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Set Details',
            style: headerTestStyle,
          ),
          SizedBox(
            height: 15.0,
          ),
          createSetDetailsTableView(),
          SizedBox(
            height: 15.0,
          ),
          setImageHeader(),
          setImageDetails(),
        ],
      ),
    );
  }

  Row setImageDetails() {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(
              height: 150,
              padding: const EdgeInsets.all(8.0),
              decoration: myBoxDecoration(),
              child: Image(
                height: double.infinity,
                width: double.infinity,
                image: AssetImage("assets/images/PN001.jpg"),
              ),
            )),
        Expanded(
            flex: 3,
            child: Container(
              height: 150,
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
              decoration: myBoxDecoration(),
            )),
      ],
    );
  }

  Row setImageHeader() {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: myBoxDecoration(),
                child: Text(
                  'Set Image',
                  style: headerTestStyle,
                ))),
        Expanded(
            flex: 3,
            child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: myBoxDecoration(),
                child: Text(
                  'Other Images',
                  style: headerTestStyle,
                ))),
      ],
    );
  }

  Widget createSetDetailsTableView() {
    return FutureBuilder(
      future: loadSetDetails(),
      builder: (BuildContext context, AsyncSnapshot projectSnap) {
        Widget child;
        if (projectSnap.hasData) {
          child = GridView.builder(
              shrinkWrap: true,
              itemCount: projectSnap.data.length,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 9),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 0.5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text("${projectSnap.data[index].name} : "),
                      text(projectSnap.data[index].value)
                    ],
                  ),
                );
              });
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
          child: child,
        );
      },
    );
  }

  Future<List<NameValueView>> loadSetDetails() async {
    Collection collection = await DatabaseHelper()
        .getDb()
        .collectionDao
        .getCollectionById(_item.itemType);
    return MockDataSource.getSetDetails(collection);
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 0.5, //                   <--- border width here
    ),
  );
}
