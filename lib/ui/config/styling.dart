import 'package:flutter/material.dart';
import 'package:tiara_app/ui/config/size_config.dart';

class AppTheme {
  AppTheme._();

  static const Color flagInStock = Color(0xff4caf50);
  static const Color flagSoldOut = Color(0xffd32f2f);
  static const Color flagCountLeft = Color(0xfff9a825);
  static const Color appBackgroundColor = Colors.white;
  static const Color subTitleTextColor = Color(0xff666666);
  static const Color titleTextColor = Colors.black;
  static const Color flagTextColor = Colors.white;
  static const Color tagsBgColor = Color(0xff6d889f);
  static const Color rangeSliderColor = Color(0xff0c395f);
  static const Color rangeSliderBarColor = Color(0xffd7d7d7);
  static const Color dividerColor = Color(0xffc2c2c2);
  static const Color bgColor = Color(0xffbe8eaf6);
  static const Color themeColor = Color(0xffb012340);
  static const Color borderColor = Color(0xffe1e1e1);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    title: _titleLight,
    subtitle: _subTitleLight,
    button: _buttonLight,
    display1: _greetingLight,
    display2: _searchLight,
    body1: _selectedTabLight,
    body2: _unSelectedTabLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    title: _titleDark,
    subtitle: _subTitleDark,
    button: _buttonDark,
    display1: _greetingDark,
    display2: _searchDark,
    body1: _selectedTabDark,
    body2: _unSelectedTabDark,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 2 * SizeConfig.textMultiplier,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
    fontSize: 2.3 * SizeConfig.textMultiplier,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark =
      _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark =
      _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark =
      _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark =
      _searchDark.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark =
      _selectedTabDark.copyWith(color: Colors.white);

  static final TextStyle _unSelectedTabDark =
      _selectedTabDark.copyWith(color: Colors.white70);

  static final TextStyle titleRegular = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 1.3 * SizeConfig.textMultiplier,
      color: titleTextColor,
      fontWeight: FontWeight.w400);

  static final TextStyle titleMedium =
      titleRegular.copyWith(fontWeight: FontWeight.w500);

  static final TextStyle subTitleRegular = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 0.8 * SizeConfig.textMultiplier,
      color: subTitleTextColor,
      fontWeight: FontWeight.w400);

  static final TextStyle subTitleMedium =
      subTitleRegular.copyWith(fontWeight: FontWeight.w500);

  static final TextStyle flagTextStyle =
      subTitleRegular.copyWith(color: flagTextColor);

  static final TextStyle titleRegularScaled = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 1.3 * 1.5 * SizeConfig.textMultiplier,
      color: titleTextColor,
      fontWeight: FontWeight.w400);

  static final TextStyle titleMediumScaled =
      titleRegularScaled.copyWith(fontWeight: FontWeight.w500);

  static final TextStyle subTitleRegularScaled = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 0.8 * 1.5 * SizeConfig.textMultiplier,
      color: subTitleTextColor,
      fontWeight: FontWeight.w400);

  static final TextStyle subTitleMediumScaled =
      subTitleRegularScaled.copyWith(fontWeight: FontWeight.w500);

  static final TextStyle flagTextStyleScaled =
      subTitleRegularScaled.copyWith(color: flagTextColor);

  static final TextStyle pageTitleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 2 * SizeConfig.textMultiplier,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle tagsTextStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 1.3 * SizeConfig.textMultiplier,
      color: flagTextColor,
      backgroundColor: tagsBgColor,
      fontWeight: FontWeight.w400);

  static final TextStyle headerStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 2 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600);

  static final TextStyle informativeCenterMessage = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 3 * SizeConfig.textMultiplier,
      color: subTitleTextColor,
      fontWeight: FontWeight.w400);
}
