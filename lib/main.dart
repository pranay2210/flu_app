import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tiara_app/db/database_helper.dart';
import 'package:tiara_app/models/bannerModel/banner.dart';
import 'package:tiara_app/ui/config/size_config.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/splashscreen/auto_synch_config_page.dart';
import 'package:tiara_app/ui/splashscreen/splash_page.dart';
import 'package:tiara_app/util/images_provider.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff012340), // status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(BannerAdapter(), 123);
  await Hive.openBox('banners');
  await Hive.openBox('configurations');
  final configBox = await Hive.box("configurations");
  ImagesDataProvider.url = configBox.get("url");
  final bannersConfigBox = await Hive.box("configurations");
  ImagesDataProvider.bannersUrl = bannersConfigBox.get("url");
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: AppTheme.lightTheme,
                home: HomePage());
            //home: FiltersPage());
          },
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var box = Hive.box("configurations");
    var firstLaunch = box.get('firstLaunch', defaultValue: true);
    Widget page;
    debugPrint('First launch : $firstLaunch');
    if (firstLaunch) {
      page = SplashPage();
    } else {
      page = AutoSynchConfigPage();
    }
    return Scaffold(
      body: page,
    );
  }

  @override
  void dispose() {
    DatabaseHelper().closeDb();
    super.dispose();
  }
}
