import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiara_app/db/localDB/my_database.dart';
import 'package:tiara_app/mockdata/MockDataSource.dart';
import 'package:tiara_app/models/name_value_view.dart';

import '../item_details_page.dart';
import 'grid_text.dart';

class BasicInformation extends StatelessWidget {
  final Item _item;

  BasicInformation(this._item) {
    loadBasicDetails(_item);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Basic Information',
            style: headerTestStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          createBasicDetailsView(context),
        ],
      ),
    );
  }

  Widget createBasicDetailsView(BuildContext context) {
    return FutureBuilder(
      future: loadBasicDetails(_item),
      builder: (BuildContext context, AsyncSnapshot projectSnap) {
        Widget child;
        if (projectSnap.hasData) {
          child = Expanded(
            child: GridView.builder(
                itemCount: projectSnap.data.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 12),
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
                }),
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
          child: child,
        );
      },
    );
  }

  Future<List<NameValueView>> loadBasicDetails(Item item) async {
    // check parent null id

    // call existing id

    return MockDataSource.getBasicDetails(item);
  }
}
