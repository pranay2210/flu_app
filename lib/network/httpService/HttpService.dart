import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart' as prefix1;
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:tiara_app/models/bannerModel/banner.dart';

class HttpService {
  Future<List<Banner>> getBanners() async {
    final box = Hive.box("configurations");
    String url = box.get('url');
    prefix0.debugPrint(url);
    final bannerurl = url + "/api/getBanners?lastSyncTime=0";

    Response res = await get(bannerurl).catchError((e) {
      prefix1.debugPrint("BANNER FETCH ERROR: $e");
    });
    log('response body: ${res.body}');

    if (res.body != null) {
      log('response body: ${res.body}');
      var data = json.decode(res.body);
      List<dynamic> body = data["Data"] as List;

      List<Banner> banners = body
          .map(
            (dynamic item) => Banner.fromJson(item),
          )
          .toList();
      log('response: $banners');

      return banners;
    } else {
      throw "Can't get posts.";
    }
  }
}
