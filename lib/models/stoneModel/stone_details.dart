import 'package:json_annotation/json_annotation.dart';

part 'stone_details.g.dart';

@JsonSerializable()
class StoneDetails {
  StoneDetails();

  var stoneID;
  var stoneERPKey;
  var stoneType;
  var stoneCode;

  factory StoneDetails.fromJson(Map<String, dynamic> json) =>
      _$StoneDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$StoneDetailsToJson(this);
}
