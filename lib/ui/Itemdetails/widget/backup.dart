//Container basicInformation() {
//  return Container(
//    child: SingleChildScrollView(
//      child: Column(
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Text(
//                'Classification',
//                style: headerTestStyle,
//              ),
//              IconButton(
//                icon: Icon(
//                    _isClassificationExpanded ? Icons.remove : Icons.add ),
//                onPressed: () {
//                  setState( () {
//                    _isClassificationExpanded = !_isClassificationExpanded;
//                  } );
//                },
//              ),
//            ],
//          ),
//          Visibility(
//            visible: _isClassificationExpanded,
//            child: Table(
//              border: TableBorder.all( width: 1.0, color: themeColor ),
//              children: [
//                TableRow( children: [
//                  TableCell(
//                    child: Padding(
//                      padding: const EdgeInsets.all( 8.0 ),
//                      child: Center( child: Text( 'Item Type' ) ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Item Category' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Collection Line' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Size' ),
//                        ) ),
//                  ),
//                ] ),
//                TableRow( children: [
//                  TableCell(
//                    child: Center(
//                      child: Padding(
//                        padding: const EdgeInsets.all( 8.0 ),
//                        child: Text( 'Earing' ),
//                      ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Pendent' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Daily Wear' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( '30' ),
//                        ) ),
//                  ),
//                ] ),
//              ],
//            ),
//          ),
//          SizedBox(
//            height: 20,
//            child: Divider(
//              color: Colors.grey.shade300,
//            ),
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Text(
//                'Weight Details',
//                style: headerTestStyle,
//              ),
//              IconButton(
//                icon:
//                Icon( _isWeightDetailsExpanded ? Icons.remove : Icons.add ),
//                onPressed: () {
//                  setState( () {
//                    _isWeightDetailsExpanded = !_isWeightDetailsExpanded;
//                  } );
//                },
//              ),
//            ],
//          ),
//          Visibility(
//            visible: _isWeightDetailsExpanded,
//            child: Table(
//              border: TableBorder.all( width: 1.0, color: themeColor ),
//              children: [
//                TableRow( children: [
//                  TableCell(
//                    child: Padding(
//                      padding: const EdgeInsets.all( 8.0 ),
//                      child: Center( child: Text( 'Item Type' ) ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Item Category' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Collection Line' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Size' ),
//                        ) ),
//                  ),
//                ] ),
//                TableRow( children: [
//                  TableCell(
//                    child: Center(
//                      child: Padding(
//                        padding: const EdgeInsets.all( 8.0 ),
//                        child: Text( 'Earing' ),
//                      ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Pendent' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Daily Wear' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( '30' ),
//                        ) ),
//                  ),
//                ] ),
//              ],
//            ),
//          ),
//          SizedBox(
//            height: 20,
//            child: Divider(
//              color: Colors.grey.shade300,
//            ),
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Text(
//                'Metal Details',
//                style: headerTestStyle,
//              ),
//              IconButton(
//                icon:
//                Icon( _isMetalDetailsExpanded ? Icons.remove : Icons.add ),
//                onPressed: () {
//                  setState( () {
//                    _isMetalDetailsExpanded = !_isMetalDetailsExpanded;
//                  } );
//                },
//              ),
//            ],
//          ),
//          Visibility(
//            visible: _isMetalDetailsExpanded,
//            child: Table(
//              border: TableBorder.all( width: 1.0, color: themeColor ),
//              children: [
//                TableRow( children: [
//                  TableCell(
//                    child: Padding(
//                      padding: const EdgeInsets.all( 8.0 ),
//                      child: Center( child: Text( 'Item Type' ) ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Item Category' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Collection Line' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Size' ),
//                        ) ),
//                  ),
//                ] ),
//                TableRow( children: [
//                  TableCell(
//                    child: Center(
//                      child: Padding(
//                        padding: const EdgeInsets.all( 8.0 ),
//                        child: Text( 'Earing' ),
//                      ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Pendent' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Daily Wear' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( '30' ),
//                        ) ),
//                  ),
//                ] ),
//              ],
//            ),
//          ),
//          SizedBox(
//            height: 20,
//            child: Divider(
//              color: Colors.grey.shade300,
//            ),
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Text(
//                'Locks',
//                style: headerTestStyle,
//              ),
//              IconButton(
//                icon: Icon( _isLocksExpanded ? Icons.remove : Icons.add ),
//                onPressed: () {
//                  setState( () {
//                    _isLocksExpanded = !_isLocksExpanded;
//                  } );
//                },
//              ),
//            ],
//          ),
//          Visibility(
//            visible: _isLocksExpanded,
//            child: Table(
//              border: TableBorder.all( width: 1.0, color: themeColor ),
//              children: [
//                TableRow( children: [
//                  TableCell(
//                    child: Padding(
//                      padding: const EdgeInsets.all( 8.0 ),
//                      child: Center( child: Text( 'Item Type' ) ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Item Category' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Collection Line' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Size' ),
//                        ) ),
//                  ),
//                ] ),
//                TableRow( children: [
//                  TableCell(
//                    child: Center(
//                      child: Padding(
//                        padding: const EdgeInsets.all( 8.0 ),
//                        child: Text( 'Earing' ),
//                      ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Pendent' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Daily Wear' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( '30' ),
//                        ) ),
//                  ),
//                ] ),
//              ],
//            ),
//          ),
//          SizedBox(
//            height: 20,
//            child: Divider(
//              color: Colors.grey.shade300,
//            ),
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Text(
//                'Finding',
//                style: headerTestStyle,
//              ),
//              IconButton(
//                icon: Icon( _isFindingExpanded ? Icons.remove : Icons.add ),
//                onPressed: () {
//                  setState( () {
//                    _isFindingExpanded = !_isFindingExpanded;
//                  } );
//                },
//              ),
//            ],
//          ),
//          Visibility(
//            visible: _isFindingExpanded,
//            child: Table(
//              border: TableBorder.all( width: 1.0, color: themeColor ),
//              children: [
//                TableRow( children: [
//                  TableCell(
//                    child: Padding(
//                      padding: const EdgeInsets.all( 8.0 ),
//                      child: Center( child: Text( 'Item Type' ) ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Item Category' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Collection Line' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Size' ),
//                        ) ),
//                  ),
//                ] ),
//                TableRow( children: [
//                  TableCell(
//                    child: Center(
//                      child: Padding(
//                        padding: const EdgeInsets.all( 8.0 ),
//                        child: Text( 'Earing' ),
//                      ),
//                    ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Pendent' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( 'Daily Wear' ),
//                        ) ),
//                  ),
//                  TableCell(
//                    child: Center(
//                        child: Padding(
//                          padding: const EdgeInsets.all( 8.0 ),
//                          child: Text( '30' ),
//                        ) ),
//                  ),
//                ] ),
//              ],
//            ),
//          ),
//          SizedBox(
//            height: 20,
//            child: Divider(
//              color: Colors.grey.shade300,
//            ),
//          )
//        ],
//      ),
//    ),
//  );
//}
