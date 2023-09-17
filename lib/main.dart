import 'package:flutter/material.dart';
import 'package:zeetionary/responsive/responsive_layout_screen.dart';
import 'package:zeetionary/responsive/web_screen_layout.dart';
import 'package:zeetionary/responsive/mobile_screen_layout.dart';
import 'package:zeetionary/utils/colors.dart';

Void Main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zeetionary',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(), 
        webScreenLayout: WebScreenLayout:(),
      ),
    );
  }
}
 


 17:54