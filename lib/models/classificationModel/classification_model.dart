import 'package:json_annotation/json_annotation.dart';
import 'package:tiara_app/db/localDB/my_database.dart';

part 'classification_model.g.dart';

@JsonSerializable()
class ClassificationResponse {
  String Status;

  List<Classification> Data;

  factory ClassificationResponse.fromJson(Map<String, dynamic> json) =>
      _$ClassificationResponseFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ClassificationResponseToJson(this);

  ClassificationResponse(this.Status, this.Data);
}
