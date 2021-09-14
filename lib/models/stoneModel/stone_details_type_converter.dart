import 'dart:convert' show json;

import 'package:moor/moor.dart';
import 'package:tiara_app/models/stoneModel/stone_details.dart';

class StoneDetailsToSqlConverter
    extends TypeConverter<List<StoneDetails>, String> {
  const StoneDetailsToSqlConverter();

  List<StoneDetails> mapToDart(String fromDb) {
    if (fromDb == null) return null;
    var tagsJson = json.decode(fromDb);

    return (tagsJson as List).map((i) => StoneDetails.fromJson(i)).toList();
  }

  String mapToSql(List<StoneDetails> stoneDetails) =>
      json.encode(stoneDetails.map((details) => details.toJson()).toList());
}
