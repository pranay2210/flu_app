import 'package:hive/hive.dart';

part 'banner.g.dart';

@HiveType()
class Banner extends HiveObject {
  @HiveField(0)
  final int bannerSettingsID;

  @HiveField(1)
  final String collectionID;

  @HiveField(2)
  final String bannerImageName;

  @HiveField(3)
  final int bannerImagePriority;

  @HiveField(4)
  final String lastUpdated;

  Banner(
      {this.bannerSettingsID,
      this.collectionID,
      this.bannerImageName,
      this.bannerImagePriority,
      this.lastUpdated});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      bannerSettingsID: json['bannerSettingsID'],
      collectionID: json['collectionID'],
      bannerImageName: json['bannerImageName'],
      bannerImagePriority: json['bannerImagePriority'],
      lastUpdated: json['lastUpdated'],
    );
  }

  @override
  String toString() {
    return 'Banner{bannerSettingsID: $bannerSettingsID, collectionID: $collectionID, bannerImageName: $bannerImageName, bannerImagePriority: $bannerImagePriority, lastUpdated: $lastUpdated}';
  }
}
