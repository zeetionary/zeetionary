import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});

class Pallete {
  // Colors
  static const blackColor = Color.fromARGB(255, 7, 7, 7); // primary color
  static const greyColor = Color.fromRGBO(26, 39, 45, 1); // secondary color
  static const drawerColor = Colors.black;
  static const whiteColor = Colors.white;
  static const yellowColor = Colors.yellow;
  static var lightBlueColorDark = Colors.lightBlue.shade100;
  static var lightBlueColorLight = Colors.lightBlue.shade900;
  static var redColor = Colors.red.shade500;
  static var blueColor = Colors.blue.shade300;
  static var tabsbackgroundColor =
      const Color.fromARGB(113, 244, 67, 54);

  static var darkModeAppTheme = ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: blackColor,
    cardColor: greyColor,
    highlightColor: lightBlueColorDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: blackColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: blackColor,
    ),
    primaryColor: whiteColor,
  );

  static var lightModeAppTheme = ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: whiteColor,
    cardColor: greyColor,
    highlightColor: lightBlueColorLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: whiteColor,
      // elevation: 3,
      iconTheme: IconThemeData(
        color: blackColor,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: whiteColor,
    ),
    primaryColor: blackColor,
    // backgroundColor: whiteColor,
  );
}

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeMode _mode;
  ThemeNotifier({ThemeMode mode = ThemeMode.dark})
      : _mode = mode,
        super(
          Pallete.darkModeAppTheme,
        ) {
    getTheme();
  }

  ThemeMode get mode => _mode;

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('theme');

    if (theme == 'light') {
      _mode = ThemeMode.light;
      state = Pallete.lightModeAppTheme;
    } else {
      _mode = ThemeMode.dark;
      state = Pallete.darkModeAppTheme;
    }
  }

  void toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (_mode == ThemeMode.dark) {
      _mode = ThemeMode.light;
      state = Pallete.lightModeAppTheme;
      prefs.setString('theme', 'light');
    } else {
      _mode = ThemeMode.dark;
      state = Pallete.darkModeAppTheme;
      prefs.setString('theme', 'dark');
    }
  }
}
