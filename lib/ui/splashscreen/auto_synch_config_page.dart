import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tiara_app/models/bannerModel/banner.dart' as banner;
import 'package:tiara_app/network/httpService/HttpService.dart';
import 'package:tiara_app/ui/homepage/data/home_page_process.dart';
import 'package:tiara_app/ui/homepage/presentation/main_page.dart';

class AutoSynchConfigPage extends StatefulWidget {
  @override
  _SplashStartState createState() => _SplashStartState();
}

class _SplashStartState extends State<AutoSynchConfigPage> {
  static const bgcolor = const Color(0xffb012340);
  final HttpService httpService = HttpService();

  @override
  void initState() {
    super.initState();
    var banners = httpService.getBanners();
    banners.then((value) => handleBannerResponse(value)).catchError((error) {
      debugPrint('Error occured :$error');
      //moveToMainScreen();
    });
    moveToMainScreen();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            color: bgcolor,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/background/splash-pattern.png',
                  height: MediaQuery.of(context).size.height,
                ),
              ],
            ),
          ),
          Center(
            heightFactor: 5,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.40),
                ),
                Image.asset(
                  'assets/logo/tiaralogo.png',
                  scale: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.30),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Column(
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'POWERED BY',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(1.0),
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                    ),
                    Image.asset(
                      'assets/logo/iryslogo.png',
                      scale: 5,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  handleBannerResponse(List<banner.Banner> value) async {
    debugPrint('Response from splash screen : $value');
    if (value.length > 0) {
      final bannersBox = Hive.openBox('banners');
      debugPrint('Inside values > 0');
      bannersBox.then((banners) async {
        debugPrint('Clearing banners');
        debugPrint('Banners size : ${banners.length}');
        await banners.clear();
        debugPrint('Cleared banners');
        debugPrint('Banners size : ${banners.length}');

        debugPrint('Adding banners');
        await banners.addAll(value);
        debugPrint('Banners size : ${banners.length}');
        moveToMainScreen();
      }).catchError((error) {
        debugPrint('Error occured : $error');
        moveToMainScreen();
      });
    } else {
      moveToMainScreen();
      debugPrint('Inside values !> 0');
    }
  }

  moveToMainScreen() async {
    Stopwatch stopwatch = Stopwatch();
    var connectivityResult = await (Connectivity().checkConnectivity());
    debugPrint('Moving to main screen');
    if ((connectivityResult == ConnectivityResult.mobile) ||
        (connectivityResult == ConnectivityResult.wifi)) {
      stopwatch.start();
      await HomePageProcess().storeDataToDB();
      stopwatch.stop();
      await Timer(
          Duration(seconds: stopwatch.elapsed.inSeconds),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainPage())));
    } else {
      await Timer(
          Duration(seconds: 1),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => MainPage())));
    }
  }
}
